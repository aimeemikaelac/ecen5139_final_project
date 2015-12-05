; ModuleID = '/home/michael/ecen5139_final_project/CAV_MidtermPriorityQueue_Verilog_Runner/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_priorities_old = constant [200 x i32] [i32 325, i32 437, i32 294, i32 197, i32 295, i32 178, i32 325, i32 500, i32 207, i32 384, i32 16, i32 21, i32 95, i32 491, i32 360, i32 22, i32 10, i32 263, i32 311, i32 410, i32 381, i32 333, i32 65, i32 191, i32 137, i32 184, i32 354, i32 94, i32 302, i32 106, i32 316, i32 421, i32 166, i32 475, i32 364, i32 250, i32 91, i32 273, i32 500, i32 383, i32 329, i32 439, i32 475, i32 234, i32 439, i32 491, i32 235, i32 240, i32 310, i32 362, i32 203, i32 53, i32 78, i32 415, i32 335, i32 214, i32 100, i32 435, i32 296, i32 69, i32 447, i32 125, i32 124, i32 374, i32 65, i32 213, i32 296, i32 339, i32 211, i32 374, i32 478, i32 402, i32 85, i32 353, i32 66, i32 200, i32 463, i32 181, i32 269, i32 271, i32 412, i32 58, i32 344, i32 474, i32 90, i32 105, i32 20, i32 156, i32 406, i32 309, i32 491, i32 415, i32 270, i32 92, i32 428, i32 16, i32 227, i32 441, i32 49, i32 377, i32 418, i32 424, i32 417, i32 66, i32 241, i32 329, i32 157, i32 154, i32 226, i32 439, i32 246, i32 28, i32 36, i32 423, i32 411, i32 12, i32 173, i32 226, i32 172, i32 150, i32 298, i32 406, i32 80, i32 325, i32 358, i32 446, i32 386, i32 75, i32 284, i32 417, i32 143, i32 24, i32 168, i32 297, i32 3, i32 116, i32 37, i32 186, i32 359, i32 222, i32 41, i32 120, i32 375, i32 279, i32 366, i32 354, i32 403, i32 62, i32 429, i32 405, i32 133, i32 303, i32 388, i32 193, i32 16, i32 283, i32 427, i32 233, i32 175, i32 455, i32 129, i32 158, i32 309, i32 59, i32 366, i32 108, i32 407, i32 387, i32 216, i32 381, i32 118, i32 342, i32 12, i32 61, i32 411, i32 110, i32 457, i32 88, i32 199, i32 419, i32 474, i32 116, i32 145, i32 8, i32 144, i32 32, i32 106, i32 451, i32 253, i32 115, i32 202, i32 494, i32 239, i32 188, i32 351, i32 155, i32 28, i32 227, i32 264, i32 184], align 16
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str3 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"runQueue\00"
@random_priorities = constant [200 x i9] [i9 -187, i9 -75, i9 -218, i9 197, i9 -217, i9 178, i9 -187, i9 -12, i9 207, i9 -128, i9 16, i9 21, i9 95, i9 -21, i9 -152, i9 22, i9 10, i9 -249, i9 -201, i9 -102, i9 -131, i9 -179, i9 65, i9 191, i9 137, i9 184, i9 -158, i9 94, i9 -210, i9 106, i9 -196, i9 -91, i9 166, i9 -37, i9 -148, i9 250, i9 91, i9 -239, i9 -12, i9 -129, i9 -183, i9 -73, i9 -37, i9 234, i9 -73, i9 -21, i9 235, i9 240, i9 -202, i9 -150, i9 203, i9 53, i9 78, i9 -97, i9 -177, i9 214, i9 100, i9 -77, i9 -216, i9 69, i9 -65, i9 125, i9 124, i9 -138, i9 65, i9 213, i9 -216, i9 -173, i9 211, i9 -138, i9 -34, i9 -110, i9 85, i9 -159, i9 66, i9 200, i9 -49, i9 181, i9 -243, i9 -241, i9 -100, i9 58, i9 -168, i9 -38, i9 90, i9 105, i9 20, i9 156, i9 -106, i9 -203, i9 -21, i9 -97, i9 -242, i9 92, i9 -84, i9 16, i9 227, i9 -71, i9 49, i9 -135, i9 -94, i9 -88, i9 -95, i9 66, i9 241, i9 -183, i9 157, i9 154, i9 226, i9 -73, i9 246, i9 28, i9 36, i9 -89, i9 -101, i9 12, i9 173, i9 226, i9 172, i9 150, i9 -214, i9 -106, i9 80, i9 -187, i9 -154, i9 -66, i9 -126, i9 75, i9 -228, i9 -95, i9 143, i9 24, i9 168, i9 -215, i9 3, i9 116, i9 37, i9 186, i9 -153, i9 222, i9 41, i9 120, i9 -137, i9 -233, i9 -146, i9 -158, i9 -109, i9 62, i9 -83, i9 -107, i9 133, i9 -209, i9 -124, i9 193, i9 16, i9 -229, i9 -85, i9 233, i9 175, i9 -57, i9 129, i9 158, i9 -203, i9 59, i9 -146, i9 108, i9 -105, i9 -125, i9 216, i9 -131, i9 118, i9 -170, i9 12, i9 61, i9 -101, i9 110, i9 -55, i9 88, i9 199, i9 -93, i9 -38, i9 116, i9 145, i9 8, i9 144, i9 32, i9 106, i9 -61, i9 253, i9 115, i9 202, i9 -18, i9 239, i9 188, i9 -161, i9 155, i9 28, i9 227, i9 -248, i9 184]

define i1 @runQueue(i4* %priorityOut_V, i4 %priorityIn_V, i2* %cmdOut_V, i1 zeroext %empty, i1 zeroext %full) {
  %last = alloca i32, align 4
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %priorityOut_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i4 %priorityIn_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i2* %cmdOut_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %empty), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %full), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !29
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  %full_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %full)
  %empty_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %empty)
  %priorityIn_V_read = call i4 @_ssdm_op_Read.ap_none.i4(i4 %priorityIn_V)
  %empty_assign = alloca i1, align 1
  %full_assign = alloca i1, align 1
  store volatile i1 %empty_read, i1* %empty_assign, align 1
  store volatile i1 %full_read, i1* %full_assign, align 1
  call void (...)* @_ssdm_op_SpecWire(i1 %full, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i1 %empty, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i2* %cmdOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i4 %priorityIn_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i4* %priorityOut_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str3, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %last_1 = zext i4 %priorityIn_V_read to i32
  store i32 0, i32* %last, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %j = phi i1 [ false, %0 ], [ true, %.preheader ]
  %result = phi i1 [ true, %0 ], [ %result_3, %.preheader ]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 1, i64 1, i64 1)
  br i1 %j, label %5, label %.preheader124

.preheader124:                                    ; preds = %.loopexit, %1
  %val_assign = phi i32 [ %i, %1 ], [ 0, %.loopexit ]
  %full_assign_load = load volatile i1* %full_assign, align 1
  %i = add nsw i32 %val_assign, 1
  br i1 %full_assign_load, label %.preheader123, label %1

; <label>:1                                       ; preds = %.preheader124
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  %tmp = trunc i32 %val_assign to i4
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %priorityOut_V, i4 %tmp)
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  br label %.preheader124

.preheader123:                                    ; preds = %.preheader124, %2
  %op2_assign = phi i32 [ %i_1, %2 ], [ 0, %.preheader124 ]
  %result_1 = phi i1 [ %result_1_s, %2 ], [ %result, %.preheader124 ]
  %empty_assign_load = load volatile i1* %empty_assign, align 1
  %i_1 = add nsw i32 %op2_assign, 1
  br i1 %empty_assign_load, label %.preheader122, label %2

; <label>:2                                       ; preds = %.preheader123
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  %tmp_3 = icmp eq i32 %last_1, %op2_assign
  %result_1_s = and i1 %tmp_3, %result_1
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  br label %.preheader123

.preheader122:                                    ; preds = %.preheader123, %3
  %i_2 = phi i32 [ %i_3, %3 ], [ 0, %.preheader123 ]
  %full_assign_load_1 = load volatile i1* %full_assign, align 1
  %i_3 = add nsw i32 %i_2, 1
  br i1 %full_assign_load_1, label %.preheader, label %3

; <label>:3                                       ; preds = %.preheader122
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 1)
  %tmp_5 = sext i32 %i_2 to i64
  %random_priorities_addr = getelementptr [200 x i9]* @random_priorities, i64 0, i64 %tmp_5
  %random_priorities_load = load i9* %random_priorities_addr, align 2
  %tmp_1 = trunc i9 %random_priorities_load to i4
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %priorityOut_V, i4 %tmp_1)
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  br label %.preheader122

.preheader:                                       ; preds = %.preheader122, %4
  %result_3 = phi i1 [ %p_result_3, %4 ], [ %result_1, %.preheader122 ]
  %empty_assign_load_1 = load volatile i1* %empty_assign, align 1
  br i1 %empty_assign_load_1, label %.loopexit, label %4

; <label>:4                                       ; preds = %.preheader
  %last_load = load i32* %last, align 4
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 -2)
  %ult = icmp ult i32 %last_1, %last_load
  %rev4 = xor i1 %ult, true
  %p_result_3 = and i1 %rev4, %result_3
  call void @_ssdm_op_Write.ap_none.volatile.i2P(i2* %cmdOut_V, i2 0)
  store i32 %last_1, i32* %last, align 4
  br label %.preheader

; <label>:5                                       ; preds = %.loopexit
  ret i1 %result
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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i4 @_ssdm_op_Read.ap_none.i4(i4) {
entry:
  ret i4 %0
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
}

define weak void @_ssdm_op_Write.ap_none.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.volatile.i2P(i2*, i2) {
entry:
  store i2 %1, i2* %0
  ret void
}

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i4 @_ssdm_op_PartSelect.i4.i9.i32.i32(i9, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 3, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"priorityOut.V", metadata !5, metadata !"uint4"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 3, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"priorityIn.V", metadata !15, metadata !"uint4"}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 1, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"cmdOut.V", metadata !5, metadata !"uint2"}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 0, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"empty", metadata !15, metadata !"bool"}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"full", metadata !15, metadata !"bool"}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"return", metadata !33, metadata !"bool"}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 1, i32 0}
