
module decoder_2to4_E_S(
    input E,
    input S,
    input [1:0] A,
    output reg [3:0] Y
    );
always @(*) begin
    if (E) begin
        case (A) 
		   2'b00: Y = S ? 4'b0000 : 4'b1111; // Y0 = 0 hoặc Y0 = 1 tùy thuộc vào S
			2'b01: Y = S ? 4'b0001 : 4'b1110; // Y1 = 0 hoặc Y1 = 1
         2'b10: Y = S ? 4'b0010 : 4'b1101; // Y2 = 0 hoặc Y2 = 1
         2'b11: Y = S ? 4'b0100 : 4'b1011; // Y3 = 0 hoặc Y3 = 1
         default: Y = S ? 4'b1111 : 4'b0000; // Mặc định tất cả ra mức cao hoặc thấp
			endcase
    end else begin
        Y = S ? 4'b1111 : 4'b0000; // Nếu E = 0, tất cả ra mức cao hoặc thấp tùy thuộc vào S
    end
end
endmodule    
