module tb_BCD2Excess6;
    wire t_W, t_X, t_Y, t_Z;
    reg    t_A, t_B, t_C, t_D;
    BCD2Excess6 M1 (t_W, t_X, t_Y, t_Z, t_A, t_B, t_C, t_D);

    initial
    begin
        t_A = 1'b0 ; t_B = 1'b0 ; t_C = 1'b0 ; t_D = 1'b0;
        #50 t_A = 1'b0 ; t_B = 1'b0 ; t_C = 1'b0 ; t_D = 1'b1;
        #100 t_A = 1'b0 ; t_B = 1'b0 ; t_C = 1'b1 ; t_D = 1'b0;
    end
    initial #200 $finish;
endmodule