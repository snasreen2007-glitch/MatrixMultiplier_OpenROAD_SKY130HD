module matrix_multiplier(
    input clk,
    input rst,

    input [7:0] A00,A01,A02,A03,
    input [7:0] A10,A11,A12,A13,
    input [7:0] A20,A21,A22,A23,
    input [7:0] A30,A31,A32,A33,

    input [7:0] B00,B01,B02,B03,
    input [7:0] B10,B11,B12,B13,
    input [7:0] B20,B21,B22,B23,
    input [7:0] B30,B31,B32,B33,

    output reg [19:0] C00,C01,C02,C03,
    output reg [19:0] C10,C11,C12,C13,
    output reg [19:0] C20,C21,C22,C23,
    output reg [19:0] C30,C31,C32,C33
);

always @(posedge clk)
begin
    if(rst)
    begin
        C00<=0; C01<=0; C02<=0; C03<=0;
        C10<=0; C11<=0; C12<=0; C13<=0;
        C20<=0; C21<=0; C22<=0; C23<=0;
        C30<=0; C31<=0; C32<=0; C33<=0;
    end
    else
    begin

        C00 <= A00*B00 + A01*B10 + A02*B20 + A03*B30;
        C01 <= A00*B01 + A01*B11 + A02*B21 + A03*B31;
        C02 <= A00*B02 + A01*B12 + A02*B22 + A03*B32;
        C03 <= A00*B03 + A01*B13 + A02*B23 + A03*B33;

        C10 <= A10*B00 + A11*B10 + A12*B20 + A13*B30;
        C11 <= A10*B01 + A11*B11 + A12*B21 + A13*B31;
        C12 <= A10*B02 + A11*B12 + A12*B22 + A13*B32;
        C13 <= A10*B03 + A11*B13 + A12*B23 + A13*B33;

        C20 <= A20*B00 + A21*B10 + A22*B20 + A23*B30;
        C21 <= A20*B01 + A21*B11 + A22*B21 + A23*B31;
        C22 <= A20*B02 + A21*B12 + A22*B22 + A23*B32;
        C23 <= A20*B03 + A21*B13 + A22*B23 + A23*B33;

        C30 <= A30*B00 + A31*B10 + A32*B20 + A33*B30;
        C31 <= A30*B01 + A31*B11 + A32*B21 + A33*B31;
        C32 <= A30*B02 + A31*B12 + A32*B22 + A33*B32;
        C33 <= A30*B03 + A31*B13 + A32*B23 + A33*B33;

    end
end

endmodule
