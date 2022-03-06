`default_nettype none

module vga_mixer(
    input wire clk_mem,
    input wire clk,
    input wire rst,
    // GameBoy Image Input
    // Its clock need to be phase aligned, integer dividable by VGA clock
    // No clock domain crossing sync has been implemented here.
    input wire gb_hs,
    input wire gb_vs,
    input wire gb_pclk,
    input wire [1:0] gb_pdat,
    input wire gb_valid,
    input wire gb_en,
    // Debugger Char Input
    output wire [6:0] dbg_x,
    output wire [4:0] dbg_y,
    input wire [6:0] dbg_char,
    output wire dbg_sync,
    // VGA signal Output
    output wire vga_hs,
    output wire vga_vs,
    output wire vga_blank,
    output reg [7:0] vga_r,
    output reg [7:0] vga_g,
    output reg [7:0] vga_b,
    // Debug
    input wire hold
    );
    
    /*localparam GB_LIGHT = 24'h8b9a26; // Used for pixel 11
    localparam GB_MID3  = 24'h658635;
    localparam GB_MID2  = 24'h456a3e;
    localparam GB_MID1  = 24'h2d4b39;
    localparam GB_DARK  = 24'h212f25; // Used for pixel 00*/
    localparam GB_BACK  = 24'h0000FF;

    //Decoded GameBoy Input colors
    wire [7:0] gb_r;
    wire [7:0] gb_g;
    wire [7:0] gb_b;
    wire [7:0] gb_grid_r;
    wire [7:0] gb_grid_g;
    wire [7:0] gb_grid_b;

    //Background colors
    wire [7:0] bg_r;
    wire [7:0] bg_g;
    wire [7:0] bg_b;

    //X,Y positions generated by the timing generator
    wire [10:0] vga_x;
    wire [10:0] vga_y;
    
    //X,Y positions of GB display
    wire [7:0] gb_x;
    wire [7:0] gb_y;
    wire gb_grid; // If it's on grid line

    //VGA font
    wire [6:0] font_ascii;
    wire [3:0] font_row;
    wire [2:0] font_col;
    wire font_pixel = 1'd0;
    
    // Font
    /*wire signal_in_text_range = ((vga_y <= 20) || (vga_y >= 460));
    localparam font_fg_color = 8'hFF;
    localparam font_bg_color = 8'h20;
    assign dbg_x[6:0] = vga_x[9:3];
    assign dbg_y[4:0] = vga_y[8:4];
    assign font_ascii[6:0] = dbg_char[6:0];
    assign font_row[3:0] = vga_y[3:0];
    assign font_col[2:0] = vga_x[2:0];
    wire [7:0] text_r = (font_pixel) ? (font_fg_color) : (font_bg_color);
    wire [7:0] text_g = (font_pixel) ? (font_fg_color) : (font_bg_color);
    wire [7:0] text_b = (font_pixel) ? (font_fg_color) : (font_bg_color);
    assign dbg_sync = vga_vs;*/
    assign bg_r[7:0] = /*(signal_in_text_range) ? (text_r) : */(GB_BACK[23:16]);
    assign bg_g[7:0] = /*(signal_in_text_range) ? (text_g) : */(GB_BACK[15:8]);
    assign bg_b[7:0] = /*(signal_in_text_range) ? (text_b) : */(GB_BACK[7:0]);
    
    //Final pixel output
    wire [7:0] out_r;
    wire [7:0] out_g;
    wire [7:0] out_b;

    wire signal_in_gb_range;
    assign out_r = (signal_in_gb_range) ? (/*(gb_grid) ? (gb_grid_r) : */(gb_r)) : (bg_r);
    assign out_g = (signal_in_gb_range) ? (/*(gb_grid) ? (gb_grid_g) : */(gb_g)) : (bg_g);
    assign out_b = (signal_in_gb_range) ? (/*(gb_grid) ? (gb_grid_b) : */(gb_b)) : (bg_b);
    
    //wire is_border = (vga_x == 11'd0 || vga_x == 11'd639 || vga_y == 11'd0 || vga_y == 11'd479); 

    always @(posedge clk)
    begin
        if (gb_en) begin
            vga_r <= out_r;
            vga_g <= out_g;
            vga_b <= out_b;
        end
        /*else begin
            vga_r <= text_r;
            vga_g <= text_g;
            vga_b <= text_b;
        end*/
    end

    // Gameboy Input
    reg last_hold;
    
    //reg [1:0] gb_buffer [0:23039];
    reg [14:0] gb_wr_addr;
    reg [1:0] gb_rd_data;
    
    reg [14:0] gb_wr_addr_real;
    reg [14:0] gb_rd_addr_real;
    reg [1:0] gb_pdat_real;
    wire [1:0] gb_rd_data_real;
    
    vga_mem vga_mem(
        .clka(~clk_mem),
        .wea(1'b1),
        .addra(gb_wr_addr_real),
        .dina(gb_pdat_real),
        
        .clkb(clk_mem),
        .addrb(gb_rd_addr_real),
        .doutb(gb_rd_data_real)
    );
    
    reg gb_vs_last;
    reg gb_hs_last;
    reg gb_pclk_last;
    
    always @(posedge clk, posedge rst)
    begin
        if (rst) begin
            gb_vs_last <= 0;
            gb_hs_last <= 0;
            gb_pclk_last <= 0;
        end
        else begin
            gb_vs_last <= gb_vs;
            gb_hs_last <= gb_hs;
            gb_pclk_last <= gb_pclk;
        end
    end

    always @(posedge clk, posedge rst)
    begin
        if (rst) begin
            gb_wr_addr <= 0;
        end
        else begin
            if ((gb_vs_last == 1)&&(gb_vs == 0)) begin
                gb_wr_addr <= 0;
            end
            else if (gb_valid) begin
                if ((gb_pclk_last == 0)&&(gb_pclk == 1)) begin
                    gb_wr_addr <= gb_wr_addr + 1'b1;
                    //if (!last_hold) begin 
                        //gb_buffer[gb_wr_addr] <= gb_pdat;
                        gb_wr_addr_real<=gb_wr_addr;
                        gb_pdat_real<=gb_pdat;
                    //end
                end
            end
        end
    end

    wire [14:0] gb_rd_addr = gb_y * 160 + gb_x;
    
    always @ (posedge clk)
    begin
        //gb_rd_data <= gb_buffer[gb_rd_addr];        
        gb_rd_data <= gb_rd_data_real;
        gb_rd_addr_real<=gb_rd_addr;
    end
    
    assign {gb_r[7:0], gb_g[7:0], gb_b[7:0]} = 
        (gb_rd_data == 2'b11) ? (24'h00C000) : 
       ((gb_rd_data == 2'b10) ? (24'h10D010) : 
       ((gb_rd_data == 2'b01) ? (24'h20E020) : (24'h30F030)));
    /*assign {gb_grid_r[7:0], gb_grid_g[7:0], gb_grid_b[7:0]} = 
        (gb_rd_data == 2'b11) ? (24'h605b1f) : 
       ((gb_rd_data == 2'b10) ? (24'h6c732e) : 
       ((gb_rd_data == 2'b01) ? (24'h818a2c) : (24'h9f9c20)));*/
    
    vga_timing vga_timing(
      .clk(clk),
      .rst(rst),
      .hs(vga_hs),
      .vs(vga_vs),
      .vsi(1'b0),
      .x(vga_x),
      .y(vga_y),
      .gb_x(gb_x),
      .gb_y(gb_y),
      .gb_grid(gb_grid),
      .gb_en(signal_in_gb_range),
      .enable(vga_blank)
    );
/*
    vga_font vga_font(
      .clk(clk),
      .ascii_code(font_ascii),
      .row(font_row),
      .col(font_col),
      .pixel(font_pixel)
    );    
*/    
endmodule