// Simulatable model of the priority queue.

module testbench;
    localparam N = 6;
    localparam MSB = $clog2(N) - 1;

    localparam NOOP = 0, PUSH = 1, POP = 2;

    reg clock;
    reg [1:0] cmd;
    reg [MSB:0] in;

    wire [MSB:0] out;
    wire full, empty;

    always #5 clock = ~clock;

    pqueue #(.N(N), .MSB(MSB)) pq(clock, cmd, in, out, full, empty);

    task check;
        integer i;
        begin
            for (i = 1; i <= pq.count;  i = i + 1) begin
                if (pq.queue[1] > pq.queue[i]) begin
                    $display("invariant violated: queue[%0d] > queue[%0d]",
                             1, i);
                    $finish;
                end
            end
        end
    endtask

    task inspect;
        integer i;
        begin
            $write("%5d: ", $time);
            case (cmd)
              NOOP: $write("NOOP ");
              PUSH: $write("PUSH ");
              POP:  $write("POP  ");
              default: $write("???? ");
            endcase
            $write("%0d, cnt = %0d, last = %0d, q =", in, pq.count, pq.last);
            for (i = 1; i < pq.count + 2; i = i + 1)
              $write(" %0d", pq.queue[i]);
            if(cmd == POP) begin
                $write(" out: %0d", out);
            end
            $display();
            check;
        end
    endtask
    
    initial #0 begin
        if (N < 2) begin
            $display("N (%0d) should be at least 2", N);
            $finish;
        end
        clock = 0;
        cmd = NOOP;
        in = 0;
        @ (negedge clock) inspect;
        in = 1;
        cmd = PUSH;
        @ (negedge clock) inspect;
        in = 2;
        @ (negedge clock) inspect;
        in = 3;
        @ (negedge clock) inspect;
        in = 1;
        @ (negedge clock) inspect;
        in = 2;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        cmd = POP;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        cmd = PUSH;
        in = 2;
        @ (negedge clock) inspect;
        cmd = POP;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        cmd = NOOP;
        @ (negedge clock) inspect;
        cmd = POP;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        cmd = PUSH;
        in = 1;
        @ (negedge clock) inspect;
        in = 0;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        in = 3;
        @ (negedge clock) inspect;
        cmd = POP;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        @ (negedge clock) inspect;
        $finish;
    end

endmodule // testbench

module pqueue #(parameter N = 1, parameter MSB = $clog2(N)-1)
(
input clock, 
input [1:0] cmd, 
input [MSB:0] in, 
output [MSB:0] out,
output full, 
output empty
);
	parameter NOOP = 0, PUSH = 1, POP = 2;
	localparam C = $clog2(N+1) - 1;
	
	reg [MSB:0] queue [0:N];
	reg [C:0]   count;
	reg [MSB:0] temp;
	integer	j;
	integer	i;
	integer current;
	integer left;
	integer right;
	integer parent;
	integer last;
	initial begin
        for (j = 0; j < N; j = j + 1)
		queue[j] = 0;
        count = 0;
        last = 0;
	end

	assign full = count == N;
	assign empty = count == 0;
	assign out = queue[0];

	always @ (posedge clock) begin
		case(cmd)
			PUSH: if(full == 0) begin
			    last = last + 1;
				queue[last] = in;
				parent = last >> 1;
				current = last;
				for(i = N; i >= 1 ; i = i >> 1) begin
				    if(i > current)
				        continue;
					if(parent > 0 && queue[current] < queue[parent]) begin //swap with parent
					    temp = queue[current];
						queue[current] = queue[parent];
						queue[parent] = temp;
					end else begin
						break;
					end
					current = parent;
					parent = current >> 1;
				end
				count = count + 1;
			end else
			    queue[0] = 0;
			POP: if(empty == 0) begin
				queue[0] = queue[1];
				queue[1] = queue[last];
				last = last - 1;
				current  = 1;
				left = 2;
				right = 3;
				for(i=1; i <= N; i = i*2) begin
				    //i = i + next;
				    if(i > last || left > last && right > last) begin //if the current position has no children
						break;
					end else if(right > last) begin //if there is no right child, check, but is also last iteration
						if(queue[current] > queue[left]) begin
						    temp = queue[current];
							queue[current] = queue[left];
							queue[left] = temp;
						end
						break;
					end else if(queue[current] > queue[left] || queue[current] > queue[right]) begin //check if is greater than children, when there are 2 children
						if(queue[left] <= queue[right]) begin //swap with left child
						    temp = queue[current];
							queue[current] = queue[left];
							queue[left] = temp;
							current = left;
						end else begin //else swap with right child
						    temp = queue[current];
							queue[current] = queue[right];
							queue[right] = temp;
							current = right;	
						end
						left = current * 2;
                        right = left +1;
					end else begin //am in the correct place
						break;
					end
				end
				count = count - 1;
			end else
			    queue[0] = 0;
			default:
			     queue[0] <= 0; //don't need to do anything for NOOP or invalid command
		endcase
	end
endmodule

