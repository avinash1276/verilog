module priorityencoder83(
    input [7:0] a,      
    output reg [2:0] x 
);
integer i;             
reg found;              // Flag to indicate whether a '1' is found
always @(*) begin
    x = 3'b000;         // Default output is 000
    found = 1'b0;       // Initially, no '1' has been found
    for(i=7; i>=0; i=i-1) begin// Check inputs from a[7] to a[0], a[7] has the highest priority
        if((a[i] == 1'b1) && (found == 1'b0)) begin // Check whether the current input is 1 and no higher-priority 1 has been found
            x = i;      // Store the position of the highest-priority 1
            found = 1'b1; // Mark that a 1 has been found
        end
    end
end
endmodule
