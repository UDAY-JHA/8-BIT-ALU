
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.06.2026 11:27:06
// Design Name: 
// Module Name: ALU
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ALU(
    input [7:0] a,
    input [7:0] b,
    input carry_in,
    input [2:0]sel,
    output reg [7:0]result,
    output reg carry_out,
    output reg zero_flag 
    );
    
    wire [7:0]out[0:7] ; // wires  connecting output of modules to result
    wire c_out[1:0] ; //wire connecting c_out to carry_out
    
    //instantiating all operational modules
    
    add a1 (.a(a),
            .b(b),
            .carry_in(carry_in),
            .out(out[0]),
            .carry_out(c_out[0])) ;
            
   sub s1 (.a(a),
            .b(b),
            .carry_in(carry_in),
            .out(out[1]),
            .carry_out(c_out[1])) ;
    
    and_op and_op1 (.a(a),
                    .b(b),
                    .out(out[2]));
    
    or_op or_op1 (.a(a),
                    .b(b),
                    .out(out[3]));
                    
    xor_op xor_op1 (.a(a),
                    .b(b),
                    .out(out[4]));
                    
    not_op not_op1 (.a(a),
                    .out(out[5])) ;
                    
    shift_left shift_left1 (.a(a),
                            .b(b),
                            .out(out[6])) ;
                           
    shift_right shift_right1 (.a(a),
                             .b(b),
                            .out(out[7])) ;
      
    // Procedural block defining result and zero_flag
    // add = 0,
    //sub = 1,
    // and = 2
    // or = 3
    // xor = 4
    // not = 5
    // left shift = 6
    //right shift = 7
       
    //Always block for result and zeroflag             
    always @(*) begin
    result = 7'b0 ;
    zero_flag = 1'b0 ;
    
        case(sel)
            0: result = out[0] ;
            1: result = out[1] ;
            2: result = out[2] ;
            3: result = out[3] ;
            4: result = out[4] ;
            5: result = out[5] ;
            6: result = out[6] ;
            7: result = out[7] ;
            default: result = 8'b0 ; 
        endcase
        
        if(result == 0) zero_flag = 1'b1 ;
        else zero_flag = 1'b0 ;
        
    end
    
    // Procedural block defining carry_out
    always @(*) begin
        case(sel)
            0: carry_out = c_out[0] ;  //carry needs to be defined for addition and subtraction only
            1: carry_out = c_out[1] ;
            default: carry_out = 1'b0 ;
        endcase
    end
endmodule
