; ModuleID = '/home/michael/ecen5139_final_project/CAV_MinHeap/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_priorities_old = constant [200 x i32] [i32 325, i32 437, i32 294, i32 197, i32 295, i32 178, i32 325, i32 500, i32 207, i32 384, i32 16, i32 21, i32 95, i32 491, i32 360, i32 22, i32 10, i32 263, i32 311, i32 410, i32 381, i32 333, i32 65, i32 191, i32 137, i32 184, i32 354, i32 94, i32 302, i32 106, i32 316, i32 421, i32 166, i32 475, i32 364, i32 250, i32 91, i32 273, i32 500, i32 383, i32 329, i32 439, i32 475, i32 234, i32 439, i32 491, i32 235, i32 240, i32 310, i32 362, i32 203, i32 53, i32 78, i32 415, i32 335, i32 214, i32 100, i32 435, i32 296, i32 69, i32 447, i32 125, i32 124, i32 374, i32 65, i32 213, i32 296, i32 339, i32 211, i32 374, i32 478, i32 402, i32 85, i32 353, i32 66, i32 200, i32 463, i32 181, i32 269, i32 271, i32 412, i32 58, i32 344, i32 474, i32 90, i32 105, i32 20, i32 156, i32 406, i32 309, i32 491, i32 415, i32 270, i32 92, i32 428, i32 16, i32 227, i32 441, i32 49, i32 377, i32 418, i32 424, i32 417, i32 66, i32 241, i32 329, i32 157, i32 154, i32 226, i32 439, i32 246, i32 28, i32 36, i32 423, i32 411, i32 12, i32 173, i32 226, i32 172, i32 150, i32 298, i32 406, i32 80, i32 325, i32 358, i32 446, i32 386, i32 75, i32 284, i32 417, i32 143, i32 24, i32 168, i32 297, i32 3, i32 116, i32 37, i32 186, i32 359, i32 222, i32 41, i32 120, i32 375, i32 279, i32 366, i32 354, i32 403, i32 62, i32 429, i32 405, i32 133, i32 303, i32 388, i32 193, i32 16, i32 283, i32 427, i32 233, i32 175, i32 455, i32 129, i32 158, i32 309, i32 59, i32 366, i32 108, i32 407, i32 387, i32 216, i32 381, i32 118, i32 342, i32 12, i32 61, i32 411, i32 110, i32 457, i32 88, i32 199, i32 419, i32 474, i32 116, i32 145, i32 8, i32 144, i32 32, i32 106, i32 451, i32 253, i32 115, i32 202, i32 494, i32 239, i32 188, i32 351, i32 155, i32 28, i32 227, i32 264, i32 184], align 16
@p_str = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1
@queueDataHeap_priority = internal global [201 x i32] zeroinitializer
@queueDataHeap_data = internal global [201 x i32] zeroinitializer
@size = internal unnamed_addr global i32 0, align 4
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@str = internal constant [9 x i8] c"runQueue\00"
@random_priorities = constant [200 x i9] [i9 -187, i9 -75, i9 -218, i9 197, i9 -217, i9 178, i9 -187, i9 -12, i9 207, i9 -128, i9 16, i9 21, i9 95, i9 -21, i9 -152, i9 22, i9 10, i9 -249, i9 -201, i9 -102, i9 -131, i9 -179, i9 65, i9 191, i9 137, i9 184, i9 -158, i9 94, i9 -210, i9 106, i9 -196, i9 -91, i9 166, i9 -37, i9 -148, i9 250, i9 91, i9 -239, i9 -12, i9 -129, i9 -183, i9 -73, i9 -37, i9 234, i9 -73, i9 -21, i9 235, i9 240, i9 -202, i9 -150, i9 203, i9 53, i9 78, i9 -97, i9 -177, i9 214, i9 100, i9 -77, i9 -216, i9 69, i9 -65, i9 125, i9 124, i9 -138, i9 65, i9 213, i9 -216, i9 -173, i9 211, i9 -138, i9 -34, i9 -110, i9 85, i9 -159, i9 66, i9 200, i9 -49, i9 181, i9 -243, i9 -241, i9 -100, i9 58, i9 -168, i9 -38, i9 90, i9 105, i9 20, i9 156, i9 -106, i9 -203, i9 -21, i9 -97, i9 -242, i9 92, i9 -84, i9 16, i9 227, i9 -71, i9 49, i9 -135, i9 -94, i9 -88, i9 -95, i9 66, i9 241, i9 -183, i9 157, i9 154, i9 226, i9 -73, i9 246, i9 28, i9 36, i9 -89, i9 -101, i9 12, i9 173, i9 226, i9 172, i9 150, i9 -214, i9 -106, i9 80, i9 -187, i9 -154, i9 -66, i9 -126, i9 75, i9 -228, i9 -95, i9 143, i9 24, i9 168, i9 -215, i9 3, i9 116, i9 37, i9 186, i9 -153, i9 222, i9 41, i9 120, i9 -137, i9 -233, i9 -146, i9 -158, i9 -109, i9 62, i9 -83, i9 -107, i9 133, i9 -209, i9 -124, i9 193, i9 16, i9 -229, i9 -85, i9 233, i9 175, i9 -57, i9 129, i9 158, i9 -203, i9 59, i9 -146, i9 108, i9 -105, i9 -125, i9 216, i9 -131, i9 118, i9 -170, i9 12, i9 61, i9 -101, i9 110, i9 -55, i9 88, i9 199, i9 -93, i9 -38, i9 116, i9 145, i9 8, i9 144, i9 32, i9 106, i9 -61, i9 253, i9 115, i9 202, i9 -18, i9 239, i9 188, i9 -161, i9 155, i9 28, i9 227, i9 -248, i9 184]

define zeroext i1 @runQueue() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  br label %1

; <label>:1                                       ; preds = %2, %0
  %result = phi i1 [ true, %0 ], [ %result_1, %2 ]
  %i = phi i14 [ 0, %0 ], [ %i_1, %2 ]
  %exitcond = icmp eq i14 %i, -6384
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind
  %i_1 = add i14 %i, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %1
  %tmp = call fastcc zeroext i1 @runTest()
  %result_1 = and i1 %tmp, %result
  br label %1

; <label>:3                                       ; preds = %1
  ret i1 %result
}

define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define internal fastcc zeroext i1 @runTest() nounwind uwtable {
  %dequeuedItems = alloca [200 x i32], align 16
  br label %1

; <label>:1                                       ; preds = %2, %0
  %current_priority = phi i8 [ 0, %0 ], [ %i, %2 ]
  %exitcond4 = icmp eq i8 %current_priority, -56
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind
  %i = add i8 %current_priority, 1
  br i1 %exitcond4, label %.preheader7, label %2

; <label>:2                                       ; preds = %1
  %current_data = sub i8 -57, %current_priority
  %current_priority_cast6_cast = zext i8 %current_priority to i9
  %queue_ret = call fastcc { i32, i32 } @queue(i1 true, i9 %current_priority_cast6_cast, i8 %current_data) nounwind
  br label %1

.preheader7:                                      ; preds = %1, %._crit_edge8
  %result = phi i1 [ %result_s, %._crit_edge8 ], [ true, %1 ]
  %i_1 = phi i8 [ %i_6, %._crit_edge8 ], [ 0, %1 ]
  %i_1_cast5 = zext i8 %i_1 to i32
  %exitcond3 = icmp eq i8 %i_1, -56
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind
  %i_6 = add i8 %i_1, 1
  br i1 %exitcond3, label %.preheader6, label %._crit_edge8

._crit_edge8:                                     ; preds = %.preheader7
  %queue_ret1 = call fastcc { i32, i32 } @queue(i1 false, i9 undef, i8 undef) nounwind
  %out_priority = extractvalue { i32, i32 } %queue_ret1, 0
  %out_data = extractvalue { i32, i32 } %queue_ret1, 1
  %tmp = icmp eq i32 %out_priority, %i_1_cast5
  %tmp_3 = sub i8 -57, %i_1
  %tmp_3_cast = zext i8 %tmp_3 to i32
  %tmp_4 = icmp eq i32 %out_data, %tmp_3_cast
  %tmp_2 = and i1 %tmp_4, %tmp
  %result_s = and i1 %result, %tmp_2
  br label %.preheader7

.preheader6:                                      ; preds = %.preheader7, %3
  %i_2 = phi i8 [ %i_5, %3 ], [ 0, %.preheader7 ]
  %exitcond2 = icmp eq i8 %i_2, -56
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind
  %i_5 = add i8 %i_2, 1
  br i1 %exitcond2, label %.preheader5, label %3

; <label>:3                                       ; preds = %.preheader6
  %current_data_1 = sub i8 -57, %i_2
  %tmp_6 = zext i8 %i_2 to i64
  %random_priorities_addr = getelementptr [200 x i9]* @random_priorities, i64 0, i64 %tmp_6
  %current_priority_1 = load i9* %random_priorities_addr, align 2
  %queue_ret25 = call fastcc { i32, i32 } @queue(i1 true, i9 %current_priority_1, i8 %current_data_1) nounwind
  br label %.preheader6

.preheader5:                                      ; preds = %.preheader6, %4
  %i_3 = phi i8 [ %i_7, %4 ], [ 0, %.preheader6 ]
  %exitcond1 = icmp eq i8 %i_3, -56
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind
  %i_7 = add i8 %i_3, 1
  br i1 %exitcond1, label %.preheader, label %4

; <label>:4                                       ; preds = %.preheader5
  %tmp_9 = zext i8 %i_3 to i64
  %dequeuedItems_addr = getelementptr inbounds [200 x i32]* %dequeuedItems, i64 0, i64 %tmp_9
  store i32 -1, i32* %dequeuedItems_addr, align 4
  br label %.preheader5

.preheader:                                       ; preds = %.preheader5, %_ifconv
  %last = phi i32 [ %out_priority_2, %_ifconv ], [ 0, %.preheader5 ]
  %result_2 = phi i1 [ %result_4, %_ifconv ], [ %result, %.preheader5 ]
  %i_4 = phi i8 [ %i_8, %_ifconv ], [ 0, %.preheader5 ]
  %exitcond = icmp eq i8 %i_4, -56
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind
  %i_8 = add i8 %i_4, 1
  br i1 %exitcond, label %5, label %_ifconv

_ifconv:                                          ; preds = %.preheader
  %queue_ret2 = call fastcc { i32, i32 } @queue(i1 false, i9 undef, i8 undef) nounwind
  %out_priority_2 = extractvalue { i32, i32 } %queue_ret2, 0
  %out_data_1 = extractvalue { i32, i32 } %queue_ret2, 1
  %slt = icmp slt i32 %out_priority_2, %last
  %rev1 = xor i1 %slt, true
  %tmp_1 = sext i32 %out_data_1 to i64
  %dequeuedItems_addr_1 = getelementptr inbounds [200 x i32]* %dequeuedItems, i64 0, i64 %tmp_1
  %dequeuedItems_load = load i32* %dequeuedItems_addr_1, align 4
  %notlhs = icmp slt i32 %out_data_1, 200
  %notrhs = icmp slt i32 %dequeuedItems_load, 1
  %tmp2 = and i1 %notlhs, %notrhs
  %tmp_7 = and i1 %tmp2, %rev1
  %result_4 = and i1 %result_2, %tmp_7
  store i32 %out_data_1, i32* %dequeuedItems_addr_1, align 4
  br label %.preheader

; <label>:5                                       ; preds = %.preheader
  ret i1 %result_2
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

define internal fastcc void @min_heapify([201 x i32]* nocapture %a_priority, [201 x i32]* nocapture %a_data, i32 %i, i32 %n) {
  %n_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %n)
  %i_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %i)
  %tmp = sext i32 %i_read to i64
  %a_priority_addr = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp
  %temp_priority = load i32* %a_priority_addr, align 4
  %a_data_addr = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp
  %temp_data = load i32* %a_data_addr, align 4
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %0
  %j_0_in = phi i32 [ %i_read, %0 ], [ %j_1, %.backedge.backedge ]
  %tmp_11 = trunc i32 %j_0_in to i31
  %j = shl i32 %j_0_in, 1
  %tmp_s = icmp sgt i32 %j, %n_read
  br i1 %tmp_s, label %.loopexit, label %_ifconv

_ifconv:                                          ; preds = %.backedge
  %tmp_1 = icmp slt i32 %j, %n_read
  %j_2 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_11, i1 true)
  %tmp_2 = sext i32 %j_2 to i64
  %a_priority_addr_1 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_2
  %a_priority_load = load i32* %a_priority_addr_1, align 4
  %tmp_3 = sext i32 %j to i64
  %a_priority_addr_2 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_3
  %a_priority_load_1 = load i32* %a_priority_addr_2, align 4
  %tmp_4 = icmp slt i32 %a_priority_load, %a_priority_load_1
  %p_j = select i1 %tmp_4, i32 %j_2, i32 %j
  %j_1 = select i1 %tmp_1, i32 %p_j, i32 %j
  %tmp_5 = sext i32 %j_1 to i64
  %a_priority_addr_3 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_5
  %a_priority_load_2 = load i32* %a_priority_addr_3, align 4
  %tmp_6 = icmp slt i32 %temp_priority, %a_priority_load_2
  br i1 %tmp_6, label %.loopexit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %_ifconv
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %j_1, i32 31)
  %p_neg = sub i32 0, %j_1
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31)
  %tmp_14 = zext i31 %p_lshr to i32
  %p_neg_t = sub i32 0, %tmp_14
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %j_1, i32 1, i32 31)
  %tmp_15 = zext i31 %p_lshr_f to i32
  %tmp_9 = select i1 %tmp_18, i32 %p_neg_t, i32 %tmp_15
  %tmp_10 = sext i32 %tmp_9 to i64
  %a_priority_addr_5 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_10
  store i32 %a_priority_load_2, i32* %a_priority_addr_5, align 4
  %a_data_addr_2 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_10
  %a_data_addr_3 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_5
  %a_data_load = load i32* %a_data_addr_3, align 4
  store i32 %a_data_load, i32* %a_data_addr_2, align 4
  br label %.backedge

.loopexit:                                        ; preds = %_ifconv, %.backedge
  %j_3 = phi i32 [ %j, %.backedge ], [ %j_1, %_ifconv ]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %j_3, i32 31)
  %p_neg1 = sub i32 0, %j_3
  %p_lshr1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg1, i32 1, i32 31)
  %tmp_12 = zext i31 %p_lshr1 to i32
  %p_neg_t1 = sub i32 0, %tmp_12
  %p_lshr_f1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %j_3, i32 1, i32 31)
  %tmp_13 = zext i31 %p_lshr_f1 to i32
  %tmp_7 = select i1 %tmp_17, i32 %p_neg_t1, i32 %tmp_13
  %tmp_8 = sext i32 %tmp_7 to i64
  %a_priority_addr_4 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_8
  store i32 %temp_priority, i32* %a_priority_addr_4, align 4
  %a_data_addr_1 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_8
  store i32 %temp_data, i32* %a_data_addr_1, align 4
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define internal fastcc { i32, i32 } @queue(i1 zeroext %isPush, i9 %inData_priority, i8 %inData_data) {
  %inData_data_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %inData_data)
  %inData_priority_read = call i9 @_ssdm_op_Read.ap_auto.i9(i9 %inData_priority)
  %isPush_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %isPush)
  %inData_data_cast = zext i8 %inData_data_read to i32
  %inData_priority_cast = zext i9 %inData_priority_read to i32
  %size_load = load i32* @size, align 4
  br i1 %isPush_read, label %1, label %5

; <label>:1                                       ; preds = %0
  %tmp = icmp eq i32 %size_load, 200
  br i1 %tmp, label %9, label %2

; <label>:2                                       ; preds = %1
  %n_assign = add nsw i32 %size_load, 1
  %tmp_i = sext i32 %n_assign to i64
  %queueDataHeap_priority_addr = getelementptr [201 x i32]* @queueDataHeap_priority, i64 0, i64 %tmp_i
  store i32 %inData_priority_cast, i32* %queueDataHeap_priority_addr, align 4
  %queueDataHeap_data_addr = getelementptr [201 x i32]* @queueDataHeap_data, i64 0, i64 %tmp_i
  store i32 %inData_data_cast, i32* %queueDataHeap_data_addr, align 4
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign, i32 31)
  %p_neg_i_i_cast = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %size_load, i32 1, i32 31)
  %p_lshr_i_i = xor i31 %p_neg_i_i_cast, -1
  %p_lshr_i_i_cast = zext i31 %p_lshr_i_i to i32
  %p_neg_t_i_i = sub i32 0, %p_lshr_i_i_cast
  %p_lshr_f_i_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %n_assign, i32 1, i32 31)
  %tmp_16 = zext i31 %p_lshr_f_i_i to i32
  %i = select i1 %tmp_19, i32 %p_neg_t_i_i, i32 %tmp_16
  br label %3

; <label>:3                                       ; preds = %4, %2
  %i9_i_i = phi i32 [ %i, %2 ], [ %i_10_cast, %4 ]
  %tmp_i_i = icmp sgt i32 %i9_i_i, 0
  br i1 %tmp_i_i, label %4, label %push.exit

; <label>:4                                       ; preds = %3
  call fastcc void @min_heapify([201 x i32]* @queueDataHeap_priority, [201 x i32]* @queueDataHeap_data, i32 %i9_i_i, i32 %n_assign)
  %tmp_21 = trunc i32 %i9_i_i to i31
  %i_10 = add i31 %tmp_21, -1
  %i_10_cast = zext i31 %i_10 to i32
  br label %3

push.exit:                                        ; preds = %3
  store i32 %n_assign, i32* @size, align 4
  br label %9

; <label>:5                                       ; preds = %0
  %tmp_s = icmp eq i32 %size_load, 0
  br i1 %tmp_s, label %9, label %6

; <label>:6                                       ; preds = %5
  %queueDataHeap_priority_load = load i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_priority, i64 0, i64 1), align 4
  %queueDataHeap_data_load = load i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_data, i64 0, i64 1), align 4
  %tmp_i1 = sext i32 %size_load to i64
  %queueDataHeap_priority_addr_1 = getelementptr [201 x i32]* @queueDataHeap_priority, i64 0, i64 %tmp_i1
  %queueDataHeap_priority_load_1 = load i32* %queueDataHeap_priority_addr_1, align 4
  store i32 %queueDataHeap_priority_load_1, i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_priority, i64 0, i64 1), align 4
  %queueDataHeap_data_addr_1 = getelementptr [201 x i32]* @queueDataHeap_data, i64 0, i64 %tmp_i1
  %queueDataHeap_data_load_1 = load i32* %queueDataHeap_data_addr_1, align 4
  store i32 %queueDataHeap_data_load_1, i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_data, i64 0, i64 1), align 4
  %n_assign_1 = add nsw i32 %size_load, -1
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_1, i32 31)
  %p_neg_i_i7 = sub i32 1, %size_load
  %p_lshr_i_i8 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i_i7, i32 1, i32 31)
  %tmp_17 = zext i31 %p_lshr_i_i8 to i32
  %p_neg_t_i_i9 = sub i32 0, %tmp_17
  %p_lshr_f_i_i1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %n_assign_1, i32 1, i32 31)
  %tmp_18 = zext i31 %p_lshr_f_i_i1 to i32
  %i_9 = select i1 %tmp_20, i32 %p_neg_t_i_i9, i32 %tmp_18
  br label %7

; <label>:7                                       ; preds = %8, %6
  %i9_i_i1 = phi i32 [ %i_9, %6 ], [ %i_11_cast, %8 ]
  %tmp_i_i1 = icmp sgt i32 %i9_i_i1, 0
  br i1 %tmp_i_i1, label %8, label %pop.exit

; <label>:8                                       ; preds = %7
  call fastcc void @min_heapify([201 x i32]* @queueDataHeap_priority, [201 x i32]* @queueDataHeap_data, i32 %i9_i_i1, i32 %n_assign_1)
  %tmp_22 = trunc i32 %i9_i_i1 to i31
  %i_11 = add i31 %tmp_22, -1
  %i_11_cast = zext i31 %i_11 to i32
  br label %7

pop.exit:                                         ; preds = %7
  store i32 %n_assign_1, i32* @size, align 4
  br label %9

; <label>:9                                       ; preds = %pop.exit, %5, %push.exit, %1
  %outData_priority_2 = phi i32 [ %inData_priority_cast, %push.exit ], [ %queueDataHeap_priority_load, %pop.exit ], [ 2147483647, %1 ], [ 2147483647, %5 ]
  %outData_data_2 = phi i32 [ %inData_data_cast, %push.exit ], [ %queueDataHeap_data_load, %pop.exit ], [ -1, %1 ], [ -1, %5 ]
  %mrv = insertvalue { i32, i32 } undef, i32 %outData_priority_2, 0
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %outData_data_2, 1
  ret { i32, i32 } %mrv_1
}

define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_12 = trunc i32 %empty to i31
  ret i31 %empty_12
}

define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32
  %empty_13 = zext i1 %1 to i32
  %empty_14 = trunc i32 %empty to i31
  %empty_15 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_13, i32 1, i32 31)
  %empty_16 = or i31 %empty_14, %empty_15
  %empty_17 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_13, i31 %empty_16, i32 1, i32 31)
  ret i32 %empty_17
}

define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

define weak i9 @_ssdm_op_Read.ap_auto.i9(i9) {
entry:
  ret i9 %0
}

define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1
  %empty_18 = and i32 %0, %empty
  %empty_19 = icmp ne i32 %empty_18, 0
  ret i1 %empty_19
}

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3)
  ret i32 %empty
}

declare i32 @llvm.part.set.i32.i31(i32, i31, i32, i32) nounwind readnone

!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !""}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"return", metadata !11, metadata !"bool"}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 1, i32 0}
