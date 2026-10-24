module mux1to4(
    input [1:0] Sel,
    input [3:0] Ceo, 
    input [3:0] Me, 
    input [3:0] Fred, 
    input [3:0] Jill, 
    input Enable,
    output [3:0] Y
);

    assign Y = (Sel[1] == 0 && Sel[0] == 0 && Enable) ? Ceo : 
               (Sel[1] == 0 && Sel[0] == 1 && Enable) ? Me : 
               (Sel[1] == 1 && Sel[0] == 0 && Enable) ? Fred : 
               (Sel[1] == 1 && Sel[0] == 1 && Enable) ? Jill : 0;
               
    
endmodule