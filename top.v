module top(
    input [15:0] sw,
    input btnL, btnR, btnD, btnU, btnC,
    output [15:0] led
);

wire [3:0] con;

    mux1to4 cir1(
            .Sel({btnU,btnL}),
            .Ceo(sw[3:0]),
            .Me(sw[7:4]), 
            .Fred(sw[11:8]),
            .Jill(sw[15:12]),
            .Y(con),
            .Enable(btnC)
           );

    demux4to1 cir2(
            .Sel({btnR,btnD}),
             .Y(con),
             .Enable(btnC),
             .Locl_lib(led[3:0]),
             .Fire_Dep(led[7:4]),
             .School(led[11:8]),
             .Rib_Shack(led[15:12])
           );
endmodule