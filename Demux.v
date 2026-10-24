module demux4to1(
    input [1:0] Sel,
    input [3:0] Y,
    input Enable,
    output [3:0] Locl_lib,
    output [3:0] Fire_Dep,
    output [3:0] School,
    output [3:0] Rib_Shack
);

    assign Locl_lib = (Sel[1] == 0 && Sel[0] == 0 && Enable) ? Y : 0; // Drive Y1 if Sel == 0
    assign Fire_Dep =(Sel[1] == 0 && Sel[0] == 1 && Enable) ? Y : 0; // Drive Y2 if Sel == 1
    assign School = (Sel[1] == 1 && Sel[0] == 0 && Enable) ? Y : 0; // Drive Y2 if Sel == 2
    assign Rib_Shack = (Sel[1] == 1 && Sel[0] == 1 && Enable) ? Y : 0; // Drive Y2 if Sel == 3

endmodule