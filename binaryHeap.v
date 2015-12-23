
`define WIDTH 32
module prio_q_heap_algo ( clk , rst_n , inp_data , opcode , heap_count ,
heap_root , num_heap_lvl , last_data ,
wire1 , wire2 , wire3 ) ;
input	clk ;
input	rst_n ;
input [ `WIDTH - 1 : 0 ] inp_data ;
input opcode ;
output [ `WIDTH - 1 : 0 ] heap_root ;

wire addition, deletion;
wire [`WIDTH - 1:0 ] heap_root;
wire [`WIDTH - 1:0 ] last_data;
wire [`WIDTH - 1:0 ] felem_vl;

reg [`WIDTH - 1:0 ] num_heap_lvl;
reg [`WIDTH - 1:0 ] heap_count;
reg [`WIDTH - 1:0 ] stored_data [`WIDTH - 1:0 ];
reg [`WIDTH - 1:0 ] hole [`WIDTH - 1:0 ];

reg [`WIDTH - 1:0 ] wire1, wire2, wire3, wire4;
reg [`WIDTH - 1:0 ] index1 = 1, index2, index3, index4;
reg [`WIDTH - 1:0 ] del_index, del_index2, del_index3, del_index4;
reg [`WIDTH - 1:0 ] tmp_data;

parameter FULL = `WIDTH'h1F;
parameter EMPTY = `WIDTH'h0;

assign addition = opcode;
assign deletion = ~opcode;

assign full = (sptr == FULL);
assign empty = (sptr == EMPTY);

assign heap_root = stored_data[1];
assign last_data = stored_data[heap_count];

integer i, hole_count = 0;
integer del_index = 0;
integer index = 0;
