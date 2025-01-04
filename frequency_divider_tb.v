
module frequency_divider_tb;
    reg clk;                   
    reg rst;                   
    wire out;                  
    frequency_divider #(5) uut (
        .clk(clk),
        .rst(rst),
        .out(out)
    );
    always begin
        #5 clk = ~clk;  
    end    
    initial begin
        clk = 0;
        rst = 0;
        rst = 1;
        #10;
        rst = 0;
        #100;
        $finish;
    end
    initial begin
        $monitor("Time = %0t, clk = %b, rst = %b, out = %b", $time, clk, rst, out);
    end
endmodule
