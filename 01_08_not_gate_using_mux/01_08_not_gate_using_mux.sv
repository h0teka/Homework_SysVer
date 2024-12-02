//----------------------------------------------------------------------------
// Example
//----------------------------------------------------------------------------

module mux
(
  input  d0, d1,
  input  sel,
  output y
);

  assign y = sel ? d1 : d0;

endmodule

//----------------------------------------------------------------------------
// Task
//----------------------------------------------------------------------------

module not_gate_using_mux
(
    input  i,
    output o
);

  // Task:
  // Implement not gate using instance(s) of mux,
  // constants 0 and 1, and wire connections

  wire zero = 1'b0;
  wire one = 1'b1;


  mux my_mux (
    .d0(one),   
    .d1(zero),  
    .sel(i),    
    .y(o)       
  );

endmodule

