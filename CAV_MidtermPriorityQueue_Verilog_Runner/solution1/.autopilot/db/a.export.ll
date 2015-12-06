; ModuleID = '/home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog_Runner/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_priorities = global [200 x i32] [i32 325, i32 437, i32 294, i32 197, i32 295, i32 178, i32 325, i32 500, i32 207, i32 384, i32 16, i32 21, i32 95, i32 491, i32 360, i32 22, i32 10, i32 263, i32 311, i32 410, i32 381, i32 333, i32 65, i32 191, i32 137, i32 184, i32 354, i32 94, i32 302, i32 106, i32 316, i32 421, i32 166, i32 475, i32 364, i32 250, i32 91, i32 273, i32 500, i32 383, i32 329, i32 439, i32 475, i32 234, i32 439, i32 491, i32 235, i32 240, i32 310, i32 362, i32 203, i32 53, i32 78, i32 415, i32 335, i32 214, i32 100, i32 435, i32 296, i32 69, i32 447, i32 125, i32 124, i32 374, i32 65, i32 213, i32 296, i32 339, i32 211, i32 374, i32 478, i32 402, i32 85, i32 353, i32 66, i32 200, i32 463, i32 181, i32 269, i32 271, i32 412, i32 58, i32 344, i32 474, i32 90, i32 105, i32 20, i32 156, i32 406, i32 309, i32 491, i32 415, i32 270, i32 92, i32 428, i32 16, i32 227, i32 441, i32 49, i32 377, i32 418, i32 424, i32 417, i32 66, i32 241, i32 329, i32 157, i32 154, i32 226, i32 439, i32 246, i32 28, i32 36, i32 423, i32 411, i32 12, i32 173, i32 226, i32 172, i32 150, i32 298, i32 406, i32 80, i32 325, i32 358, i32 446, i32 386, i32 75, i32 284, i32 417, i32 143, i32 24, i32 168, i32 297, i32 3, i32 116, i32 37, i32 186, i32 359, i32 222, i32 41, i32 120, i32 375, i32 279, i32 366, i32 354, i32 403, i32 62, i32 429, i32 405, i32 133, i32 303, i32 388, i32 193, i32 16, i32 283, i32 427, i32 233, i32 175, i32 455, i32 129, i32 158, i32 309, i32 59, i32 366, i32 108, i32 407, i32 387, i32 216, i32 381, i32 118, i32 342, i32 12, i32 61, i32 411, i32 110, i32 457, i32 88, i32 199, i32 419, i32 474, i32 116, i32 145, i32 8, i32 144, i32 32, i32 106, i32 451, i32 253, i32 115, i32 202, i32 494, i32 239, i32 188, i32 351, i32 155, i32 28, i32 227, i32 264, i32 184], align 16
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@p_str4 = private unnamed_addr constant [7 x i8] c"ap_vld\00", align 1
@p_str5 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"runQueue\00"

define i32 @runQueue(i4* %priorityOut_V, i4* %priorityIn_V, i2* %cmdOut_V, i1* %empty, i1* %full, i1* %fullOut, i32 %iterations, i1* %finished, i32* %currentIteration) {
  %result = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %priorityOut_V), !map !14
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %priorityIn_V), !map !18
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %cmdOut_V), !map !22
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %empty), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %full), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %fullOut), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %iterations), !map !38
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %finished), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %currentIteration), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i32 0) nounwind, !map !52
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %iterations_read = call i32 @_ssdm_op_Read.ap_vld.i32(i32 %iterations)
  %localFull = alloca i1, align 1
  %localEmpty = alloca i1, align 1
  call void (...)* @_ssdm_op_SpecWire(i32* %currentIteration, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %finished, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 %iterations, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecWire(i32 %iterations, [7 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %fullOut, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %full, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1* %empty, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i2* %cmdOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i4* %priorityIn_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i4* %priorityOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str5, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  store i32 0, i32* %result, align 4
  br label %1

; <label>:1                                       ; preds = %8, %0
  %j = phi i32 [ 0, %0 ], [ %j_1, %8 ]
  %tmp = icmp slt i32 %j, %iterations_read
  %j_1 = add nsw i32 %j, 1
  br i1 %tmp, label %2, label %9

; <label>:2                                       ; preds = %1
  call void @_ssdm_op_Write.ap_none.i32P(i32* %currentIteration, i32 %j)
  call void (...)* @_ssdm_op_SpecIFCore(i32* %currentIteration, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %localFull_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_1, i1* %localFull, align 1
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  br label %3

; <label>:3                                       ; preds = %4, %2
  %val_assign = phi i32 [ 0, %2 ], [ %i, %4 ]
  %localFull_load = load volatile i1* %localFull, align 1
  %i = add nsw i32 %val_assign, 1
  br i1 %localFull_load, label %5, label %4

; <label>:4                                       ; preds = %3
  %tmp_1 = trunc i32 %val_assign to i4
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %priorityOut_V, i4 %tmp_1)
  %full_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %fullOut, i1 %full_read)
  call void (...)* @_ssdm_op_SpecIFCore(i1* %fullOut, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %localFull_2 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %full)
  store volatile i1 %localFull_2, i1* %localFull, align 1
  br label %3

; <label>:5                                       ; preds = %3
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  %localEmpty_1 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_1, i1* %localEmpty, align 1
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  br label %6

; <label>:6                                       ; preds = %7, %5
  %op2_assign = phi i32 [ 0, %5 ], [ %i_1, %7 ]
  %localEmpty_load = load volatile i1* %localEmpty, align 1
  %i_1 = add nsw i32 %op2_assign, 1
  br i1 %localEmpty_load, label %8, label %7

; <label>:7                                       ; preds = %6
  %result_load_1 = load i32* %result, align 4
  %priorityIn_V_read = call i4 @_ssdm_op_Read.ap_none.volatile.i4P(i4* %priorityIn_V)
  %tmp_4 = zext i4 %priorityIn_V_read to i32
  %tmp_5 = icmp eq i32 %tmp_4, %op2_assign
  %result_1 = add nsw i32 %result_load_1, 1
  %result_1_s = select i1 %tmp_5, i32 %result_load_1, i32 %result_1
  %localEmpty_2 = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %empty)
  store volatile i1 %localEmpty_2, i1* %localEmpty, align 1
  store i32 %result_1_s, i32* %result, align 4
  br label %6

; <label>:8                                       ; preds = %6
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  br label %1

; <label>:9                                       ; preds = %1
  %result_load = load i32* %result, align 4
  call void @_ssdm_op_Write.ap_ovld.i1P(i1* %finished, i1 true)
  call void (...)* @_ssdm_op_SpecIFCore(i1* %finished, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  ret i32 %result_load
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

declare void @_GLOBAL__I_a() nounwind section ".text.startup"

define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_Read.ap_vld.i32(i32) {
entry:
  ret i32 %0
}

define weak void @_ssdm_op_Write.ap_none.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak i4 @_ssdm_op_Read.ap_none.volatile.i4P(i4*) {
entry:
  %empty = load i4* %0
  ret i4 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i2P(i2*, i2) {
entry:
  store i2 %1, i2* %0
  ret void
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_ovld.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

!llvm.map.gv = !{!0, !7}

!0 = metadata !{metadata !1, [200 x i32]* @random_priorities}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"random_priorities", metadata !5, metadata !"int"}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 199, i32 1}
!7 = metadata !{metadata !8, [1 x i32]* @llvm_global_ctors_0}
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0, i32 31, metadata !10}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !"llvm.global_ctors.0", metadata !12, metadata !""}
!12 = metadata !{metadata !13}
!13 = metadata !{i32 0, i32 0, i32 1}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 3, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"priorityOut.V", metadata !12, metadata !"uint4"}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 3, metadata !20}
!20 = metadata !{metadata !21}
!21 = metadata !{metadata !"priorityIn.V", metadata !12, metadata !"uint4"}
!22 = metadata !{metadata !23}
!23 = metadata !{i32 0, i32 1, metadata !24}
!24 = metadata !{metadata !25}
!25 = metadata !{metadata !"cmdOut.V", metadata !12, metadata !"uint2"}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 0, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"empty", metadata !12, metadata !"bool"}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 0, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"full", metadata !12, metadata !"bool"}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"fullOut", metadata !12, metadata !"bool"}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 31, metadata !40}
!40 = metadata !{metadata !41}
!41 = metadata !{metadata !"iterations", metadata !42, metadata !"int"}
!42 = metadata !{metadata !43}
!43 = metadata !{i32 0, i32 0, i32 0}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 0, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"finished", metadata !12, metadata !"bool"}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 31, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"currentIteration", metadata !12, metadata !"int"}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 31, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"return", metadata !56, metadata !"int"}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 1, i32 0}
