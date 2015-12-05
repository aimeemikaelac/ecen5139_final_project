; ModuleID = '/home/michael/ecen5139_final_project/CAV_MinHeap/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@random_priorities_old = constant [200 x i32] [i32 325, i32 437, i32 294, i32 197, i32 295, i32 178, i32 325, i32 500, i32 207, i32 384, i32 16, i32 21, i32 95, i32 491, i32 360, i32 22, i32 10, i32 263, i32 311, i32 410, i32 381, i32 333, i32 65, i32 191, i32 137, i32 184, i32 354, i32 94, i32 302, i32 106, i32 316, i32 421, i32 166, i32 475, i32 364, i32 250, i32 91, i32 273, i32 500, i32 383, i32 329, i32 439, i32 475, i32 234, i32 439, i32 491, i32 235, i32 240, i32 310, i32 362, i32 203, i32 53, i32 78, i32 415, i32 335, i32 214, i32 100, i32 435, i32 296, i32 69, i32 447, i32 125, i32 124, i32 374, i32 65, i32 213, i32 296, i32 339, i32 211, i32 374, i32 478, i32 402, i32 85, i32 353, i32 66, i32 200, i32 463, i32 181, i32 269, i32 271, i32 412, i32 58, i32 344, i32 474, i32 90, i32 105, i32 20, i32 156, i32 406, i32 309, i32 491, i32 415, i32 270, i32 92, i32 428, i32 16, i32 227, i32 441, i32 49, i32 377, i32 418, i32 424, i32 417, i32 66, i32 241, i32 329, i32 157, i32 154, i32 226, i32 439, i32 246, i32 28, i32 36, i32 423, i32 411, i32 12, i32 173, i32 226, i32 172, i32 150, i32 298, i32 406, i32 80, i32 325, i32 358, i32 446, i32 386, i32 75, i32 284, i32 417, i32 143, i32 24, i32 168, i32 297, i32 3, i32 116, i32 37, i32 186, i32 359, i32 222, i32 41, i32 120, i32 375, i32 279, i32 366, i32 354, i32 403, i32 62, i32 429, i32 405, i32 133, i32 303, i32 388, i32 193, i32 16, i32 283, i32 427, i32 233, i32 175, i32 455, i32 129, i32 158, i32 309, i32 59, i32 366, i32 108, i32 407, i32 387, i32 216, i32 381, i32 118, i32 342, i32 12, i32 61, i32 411, i32 110, i32 457, i32 88, i32 199, i32 419, i32 474, i32 116, i32 145, i32 8, i32 144, i32 32, i32 106, i32 451, i32 253, i32 115, i32 202, i32 494, i32 239, i32 188, i32 351, i32 155, i32 28, i32 227, i32 264, i32 184], align 16 ; [#uses=0 type=[200 x i32]*]
@p_str = private unnamed_addr constant [11 x i8] c"ap_ctrl_hs\00", align 1 ; [#uses=1 type=[11 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=8 type=[1 x i8]*]
@p_str2 = private unnamed_addr constant [10 x i8] c"AXI4LiteS\00", align 1 ; [#uses=1 type=[10 x i8]*]
@queueDataHeap_priority = internal global [201 x i32] zeroinitializer ; [#uses=5 type=[201 x i32]*]
@queueDataHeap_data = internal global [201 x i32] zeroinitializer ; [#uses=5 type=[201 x i32]*]
@size = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@str = internal constant [9 x i8] c"runQueue\00"  ; [#uses=1 type=[9 x i8]*]
@random_priorities = constant [200 x i9] [i9 -187, i9 -75, i9 -218, i9 197, i9 -217, i9 178, i9 -187, i9 -12, i9 207, i9 -128, i9 16, i9 21, i9 95, i9 -21, i9 -152, i9 22, i9 10, i9 -249, i9 -201, i9 -102, i9 -131, i9 -179, i9 65, i9 191, i9 137, i9 184, i9 -158, i9 94, i9 -210, i9 106, i9 -196, i9 -91, i9 166, i9 -37, i9 -148, i9 250, i9 91, i9 -239, i9 -12, i9 -129, i9 -183, i9 -73, i9 -37, i9 234, i9 -73, i9 -21, i9 235, i9 240, i9 -202, i9 -150, i9 203, i9 53, i9 78, i9 -97, i9 -177, i9 214, i9 100, i9 -77, i9 -216, i9 69, i9 -65, i9 125, i9 124, i9 -138, i9 65, i9 213, i9 -216, i9 -173, i9 211, i9 -138, i9 -34, i9 -110, i9 85, i9 -159, i9 66, i9 200, i9 -49, i9 181, i9 -243, i9 -241, i9 -100, i9 58, i9 -168, i9 -38, i9 90, i9 105, i9 20, i9 156, i9 -106, i9 -203, i9 -21, i9 -97, i9 -242, i9 92, i9 -84, i9 16, i9 227, i9 -71, i9 49, i9 -135, i9 -94, i9 -88, i9 -95, i9 66, i9 241, i9 -183, i9 157, i9 154, i9 226, i9 -73, i9 246, i9 28, i9 36, i9 -89, i9 -101, i9 12, i9 173, i9 226, i9 172, i9 150, i9 -214, i9 -106, i9 80, i9 -187, i9 -154, i9 -66, i9 -126, i9 75, i9 -228, i9 -95, i9 143, i9 24, i9 168, i9 -215, i9 3, i9 116, i9 37, i9 186, i9 -153, i9 222, i9 41, i9 120, i9 -137, i9 -233, i9 -146, i9 -158, i9 -109, i9 62, i9 -83, i9 -107, i9 133, i9 -209, i9 -124, i9 193, i9 16, i9 -229, i9 -85, i9 233, i9 175, i9 -57, i9 129, i9 158, i9 -203, i9 59, i9 -146, i9 108, i9 -105, i9 -125, i9 216, i9 -131, i9 118, i9 -170, i9 12, i9 61, i9 -101, i9 110, i9 -55, i9 88, i9 199, i9 -93, i9 -38, i9 116, i9 145, i9 8, i9 144, i9 32, i9 106, i9 -61, i9 253, i9 115, i9 202, i9 -18, i9 239, i9 188, i9 -161, i9 155, i9 28, i9 227, i9 -248, i9 184] ; [#uses=1 type=[200 x i9]*]

; [#uses=0]
define zeroext i1 @runQueue() nounwind uwtable {
  call void (...)* @_ssdm_op_SpecBitsMap(i1 false) nounwind, !map !7
  call void (...)* @_ssdm_op_SpecTopModule([9 x i8]* @str) nounwind
  call void (...)* @_ssdm_op_SpecWire(i32 0, [11 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !13 ; [debug line = 31:1]
  call void (...)* @_ssdm_op_SpecIFCore(i32 0, [1 x i8]* @p_str1, [10 x i8]* @p_str2, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !22 ; [debug line = 33:1]
  br label %1, !dbg !23                           ; [debug line = 37:6]

; <label>:1                                       ; preds = %2, %0
  %result = phi i1 [ true, %0 ], [ %result_1, %2 ] ; [#uses=2 type=i1]
  %i = phi i14 [ 0, %0 ], [ %i_1, %2 ]            ; [#uses=2 type=i14]
  %exitcond = icmp eq i14 %i, -6384, !dbg !23     ; [#uses=1 type=i1] [debug line = 37:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 10000, i64 10000, i64 10000) nounwind ; [#uses=0 type=i32]
  %i_1 = add i14 %i, 1, !dbg !25                  ; [#uses=1 type=i14] [debug line = 37:20]
  br i1 %exitcond, label %3, label %2, !dbg !23   ; [debug line = 37:6]

; <label>:2                                       ; preds = %1
  %tmp = call fastcc zeroext i1 @runTest(), !dbg !26 ; [#uses=1 type=i1] [debug line = 39:13]
  %result_1 = and i1 %tmp, %result, !dbg !26      ; [#uses=1 type=i1] [debug line = 39:13]
  call void @llvm.dbg.value(metadata !{i1 %result_1}, i64 0, metadata !28), !dbg !26 ; [debug line = 39:13] [debug variable = result]
  call void @llvm.dbg.value(metadata !{i14 %i_1}, i64 0, metadata !29), !dbg !25 ; [debug line = 37:20] [debug variable = i]
  br label %1, !dbg !25                           ; [debug line = 37:20]

; <label>:3                                       ; preds = %1
  ret i1 %result, !dbg !31                        ; [debug line = 42:2]
}

; [#uses=1]
define weak void @_ssdm_op_SpecWire(...) nounwind {
entry:
  ret void
}

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
define internal fastcc zeroext i1 @runTest() nounwind uwtable {
  %dequeuedItems = alloca [200 x i32], align 16   ; [#uses=2 type=[200 x i32]*]
  call void @llvm.dbg.declare(metadata !{[200 x i32]* %dequeuedItems}, metadata !32), !dbg !38 ; [debug line = 48:6] [debug variable = dequeuedItems]
  br label %1, !dbg !39                           ; [debug line = 49:6]

; <label>:1                                       ; preds = %2, %0
  %current_priority = phi i8 [ 0, %0 ], [ %i, %2 ] ; [#uses=4 type=i8]
  %exitcond4 = icmp eq i8 %current_priority, -56, !dbg !39 ; [#uses=1 type=i1] [debug line = 49:6]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind ; [#uses=0 type=i32]
  %i = add i8 %current_priority, 1, !dbg !41      ; [#uses=1 type=i8] [debug line = 49:18]
  br i1 %exitcond4, label %.preheader7, label %2, !dbg !39 ; [debug line = 49:6]

; <label>:2                                       ; preds = %1
  %current_data = sub i8 -57, %current_priority, !dbg !42 ; [#uses=1 type=i8] [debug line = 51:3]
  call void @llvm.dbg.value(metadata !{i8 %current_data}, i64 0, metadata !44), !dbg !42 ; [debug line = 51:3] [debug variable = current.data]
  call void @llvm.dbg.value(metadata !{i8 %current_priority}, i64 0, metadata !64), !dbg !67 ; [debug line = 52:3] [debug variable = current.priority]
  %current_priority_cast6_cast = zext i8 %current_priority to i9, !dbg !68 ; [#uses=1 type=i9] [debug line = 53:3]
  %queue_ret = call fastcc { i32, i32 } @queue(i1 true, i9 %current_priority_cast6_cast, i8 %current_data) nounwind, !dbg !68 ; [#uses=0 type={ i32, i32 }] [debug line = 53:3]
  call void @llvm.dbg.value(metadata !{i8 %i}, i64 0, metadata !69), !dbg !41 ; [debug line = 49:18] [debug variable = i]
  br label %1, !dbg !41                           ; [debug line = 49:18]

.preheader7:                                      ; preds = %._crit_edge8, %1
  %result = phi i1 [ %result_s, %._crit_edge8 ], [ true, %1 ] ; [#uses=2 type=i1]
  %i_1 = phi i8 [ %i_6, %._crit_edge8 ], [ 0, %1 ] ; [#uses=4 type=i8]
  %i_1_cast5 = zext i8 %i_1 to i32, !dbg !70      ; [#uses=1 type=i32] [debug line = 55:6]
  %exitcond3 = icmp eq i8 %i_1, -56, !dbg !70     ; [#uses=1 type=i1] [debug line = 55:6]
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind ; [#uses=0 type=i32]
  %i_6 = add i8 %i_1, 1, !dbg !72                 ; [#uses=1 type=i8] [debug line = 55:18]
  br i1 %exitcond3, label %.preheader6, label %._crit_edge8, !dbg !70 ; [debug line = 55:6]

._crit_edge8:                                     ; preds = %.preheader7
  %queue_ret1 = call fastcc { i32, i32 } @queue(i1 false, i9 undef, i8 undef) nounwind, !dbg !73 ; [#uses=2 type={ i32, i32 }] [debug line = 57:3]
  %out_priority = extractvalue { i32, i32 } %queue_ret1, 0, !dbg !73 ; [#uses=1 type=i32] [debug line = 57:3]
  call void @llvm.dbg.value(metadata !{i32 %out_priority}, i64 0, metadata !75), !dbg !73 ; [debug line = 57:3] [debug variable = out.priority]
  %out_data = extractvalue { i32, i32 } %queue_ret1, 1, !dbg !73 ; [#uses=1 type=i32] [debug line = 57:3]
  call void @llvm.dbg.value(metadata !{i32 %out_data}, i64 0, metadata !77), !dbg !73 ; [debug line = 57:3] [debug variable = out.data]
  %tmp = icmp eq i32 %out_priority, %i_1_cast5, !dbg !78 ; [#uses=1 type=i1] [debug line = 58:3]
  %tmp_3 = sub i8 -57, %i_1, !dbg !78             ; [#uses=1 type=i8] [debug line = 58:3]
  %tmp_3_cast = zext i8 %tmp_3 to i32, !dbg !78   ; [#uses=1 type=i32] [debug line = 58:3]
  %tmp_4 = icmp eq i32 %out_data, %tmp_3_cast, !dbg !78 ; [#uses=1 type=i1] [debug line = 58:3]
  %tmp_2 = and i1 %tmp_4, %tmp, !dbg !78          ; [#uses=1 type=i1] [debug line = 58:3]
  %result_s = and i1 %result, %tmp_2, !dbg !78    ; [#uses=1 type=i1] [debug line = 58:3]
  call void @llvm.dbg.value(metadata !{i8 %i_6}, i64 0, metadata !69), !dbg !72 ; [debug line = 55:18] [debug variable = i]
  br label %.preheader7, !dbg !72                 ; [debug line = 55:18]

.preheader6:                                      ; preds = %3, %.preheader7
  %i_2 = phi i8 [ %i_5, %3 ], [ 0, %.preheader7 ] ; [#uses=4 type=i8]
  %exitcond2 = icmp eq i8 %i_2, -56, !dbg !79     ; [#uses=1 type=i1] [debug line = 63:6]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind ; [#uses=0 type=i32]
  %i_5 = add i8 %i_2, 1, !dbg !81                 ; [#uses=1 type=i8] [debug line = 63:18]
  br i1 %exitcond2, label %.preheader5, label %3, !dbg !79 ; [debug line = 63:6]

; <label>:3                                       ; preds = %.preheader6
  %current_data_1 = sub i8 -57, %i_2, !dbg !82    ; [#uses=1 type=i8] [debug line = 65:3]
  call void @llvm.dbg.value(metadata !{i8 %current_data_1}, i64 0, metadata !84), !dbg !82 ; [debug line = 65:3] [debug variable = current.data]
  %tmp_6 = zext i8 %i_2 to i64, !dbg !86          ; [#uses=1 type=i64] [debug line = 66:3]
  %random_priorities_addr = getelementptr [200 x i9]* @random_priorities, i64 0, i64 %tmp_6, !dbg !86 ; [#uses=1 type=i9*] [debug line = 66:3]
  %current_priority_1 = load i9* %random_priorities_addr, align 2, !dbg !86 ; [#uses=1 type=i9] [debug line = 66:3]
  call void @llvm.dbg.value(metadata !{i9 %current_priority_1}, i64 0, metadata !87), !dbg !86 ; [debug line = 66:3] [debug variable = current.priority]
  %queue_ret25 = call fastcc { i32, i32 } @queue(i1 true, i9 %current_priority_1, i8 %current_data_1) nounwind, !dbg !88 ; [#uses=0 type={ i32, i32 }] [debug line = 67:3]
  call void @llvm.dbg.value(metadata !{i8 %i_5}, i64 0, metadata !69), !dbg !81 ; [debug line = 63:18] [debug variable = i]
  br label %.preheader6, !dbg !81                 ; [debug line = 63:18]

.preheader5:                                      ; preds = %4, %.preheader6
  %i_3 = phi i8 [ %i_7, %4 ], [ 0, %.preheader6 ] ; [#uses=3 type=i8]
  %exitcond1 = icmp eq i8 %i_3, -56, !dbg !89     ; [#uses=1 type=i1] [debug line = 69:6]
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind ; [#uses=0 type=i32]
  %i_7 = add i8 %i_3, 1, !dbg !91                 ; [#uses=1 type=i8] [debug line = 69:18]
  br i1 %exitcond1, label %.preheader, label %4, !dbg !89 ; [debug line = 69:6]

; <label>:4                                       ; preds = %.preheader5
  %tmp_9 = zext i8 %i_3 to i64, !dbg !92          ; [#uses=1 type=i64] [debug line = 70:3]
  %dequeuedItems_addr = getelementptr inbounds [200 x i32]* %dequeuedItems, i64 0, i64 %tmp_9, !dbg !92 ; [#uses=1 type=i32*] [debug line = 70:3]
  store i32 -1, i32* %dequeuedItems_addr, align 4, !dbg !92 ; [debug line = 70:3]
  call void @llvm.dbg.value(metadata !{i8 %i_7}, i64 0, metadata !69), !dbg !91 ; [debug line = 69:18] [debug variable = i]
  br label %.preheader5, !dbg !91                 ; [debug line = 69:18]

.preheader:                                       ; preds = %_ifconv, %.preheader5
  %last = phi i32 [ %out_priority_2, %_ifconv ], [ 0, %.preheader5 ] ; [#uses=1 type=i32]
  %result_2 = phi i1 [ %result_4, %_ifconv ], [ %result, %.preheader5 ] ; [#uses=2 type=i1]
  %i_4 = phi i8 [ %i_8, %_ifconv ], [ 0, %.preheader5 ] ; [#uses=2 type=i8]
  %exitcond = icmp eq i8 %i_4, -56, !dbg !94      ; [#uses=1 type=i1] [debug line = 73:6]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 200, i64 200, i64 200) nounwind ; [#uses=0 type=i32]
  %i_8 = add i8 %i_4, 1, !dbg !96                 ; [#uses=1 type=i8] [debug line = 73:18]
  br i1 %exitcond, label %5, label %_ifconv, !dbg !94 ; [debug line = 73:6]

_ifconv:                                          ; preds = %.preheader
  %queue_ret2 = call fastcc { i32, i32 } @queue(i1 false, i9 undef, i8 undef) nounwind, !dbg !97 ; [#uses=2 type={ i32, i32 }] [debug line = 75:3]
  %out_priority_2 = extractvalue { i32, i32 } %queue_ret2, 0, !dbg !97 ; [#uses=2 type=i32] [debug line = 75:3]
  call void @llvm.dbg.value(metadata !{i32 %out_priority_2}, i64 0, metadata !99), !dbg !97 ; [debug line = 75:3] [debug variable = out.priority]
  %out_data_1 = extractvalue { i32, i32 } %queue_ret2, 1, !dbg !97 ; [#uses=3 type=i32] [debug line = 75:3]
  call void @llvm.dbg.value(metadata !{i32 %out_data_1}, i64 0, metadata !101), !dbg !97 ; [debug line = 75:3] [debug variable = out.data]
  %slt = icmp slt i32 %out_priority_2, %last, !dbg !102 ; [#uses=1 type=i1] [debug line = 76:3]
  %rev1 = xor i1 %slt, true, !dbg !102            ; [#uses=1 type=i1] [debug line = 76:3]
  %tmp_1 = sext i32 %out_data_1 to i64, !dbg !103 ; [#uses=1 type=i64] [debug line = 79:3]
  %dequeuedItems_addr_1 = getelementptr inbounds [200 x i32]* %dequeuedItems, i64 0, i64 %tmp_1, !dbg !103 ; [#uses=2 type=i32*] [debug line = 79:3]
  %dequeuedItems_load = load i32* %dequeuedItems_addr_1, align 4, !dbg !103 ; [#uses=1 type=i32] [debug line = 79:3]
  %notlhs = icmp slt i32 %out_data_1, 200         ; [#uses=1 type=i1]
  %notrhs = icmp slt i32 %dequeuedItems_load, 1   ; [#uses=1 type=i1]
  %tmp2 = and i1 %notlhs, %notrhs                 ; [#uses=1 type=i1]
  %tmp_7 = and i1 %tmp2, %rev1                    ; [#uses=1 type=i1]
  %result_4 = and i1 %result_2, %tmp_7            ; [#uses=1 type=i1]
  store i32 %out_data_1, i32* %dequeuedItems_addr_1, align 4, !dbg !104 ; [debug line = 83:3]
  call void @llvm.dbg.value(metadata !{i32 %out_priority_2}, i64 0, metadata !105), !dbg !106 ; [debug line = 84:3] [debug variable = last]
  call void @llvm.dbg.value(metadata !{i8 %i_8}, i64 0, metadata !69), !dbg !96 ; [debug line = 73:18] [debug variable = i]
  br label %.preheader, !dbg !96                  ; [debug line = 73:18]

; <label>:5                                       ; preds = %.preheader
  ret i1 %result_2, !dbg !107                     ; [debug line = 86:2]
}

; [#uses=38]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
declare void @_GLOBAL__I_a() nounwind section ".text.startup"

; [#uses=1]
define weak void @_ssdm_op_SpecIFCore(...) {
entry:
  ret void
}

; [#uses=2]
define internal fastcc void @min_heapify([201 x i32]* nocapture %a_priority, [201 x i32]* nocapture %a_data, i32 %i, i32 %n) {
  %n_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %n) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %n_read}, i64 0, metadata !108), !dbg !113 ; [debug line = 141:41] [debug variable = n]
  %i_read = call i32 @_ssdm_op_Read.ap_auto.i32(i32 %i) ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %i_read}, i64 0, metadata !114), !dbg !115 ; [debug line = 141:35] [debug variable = i]
  call void @llvm.dbg.value(metadata !{[201 x i32]* %a_priority}, i64 0, metadata !116), !dbg !121 ; [debug line = 141:29] [debug variable = a.priority]
  call void @llvm.dbg.value(metadata !{[201 x i32]* %a_data}, i64 0, metadata !122), !dbg !121 ; [debug line = 141:29] [debug variable = a.data]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !114), !dbg !115 ; [debug line = 141:35] [debug variable = i]
  call void @llvm.dbg.value(metadata !{i32 %n}, i64 0, metadata !108), !dbg !113 ; [debug line = 141:41] [debug variable = n]
  %tmp = sext i32 %i_read to i64, !dbg !124       ; [#uses=2 type=i64] [debug line = 145:5]
  %a_priority_addr = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp, !dbg !124 ; [#uses=1 type=i32*] [debug line = 145:5]
  %temp_priority = load i32* %a_priority_addr, align 4, !dbg !124 ; [#uses=2 type=i32] [debug line = 145:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_priority}, i64 0, metadata !126), !dbg !124 ; [debug line = 145:5] [debug variable = temp.priority]
  %a_data_addr = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp, !dbg !124 ; [#uses=1 type=i32*] [debug line = 145:5]
  %temp_data = load i32* %a_data_addr, align 4, !dbg !124 ; [#uses=1 type=i32] [debug line = 145:5]
  call void @llvm.dbg.value(metadata !{i32 %temp_data}, i64 0, metadata !128), !dbg !124 ; [debug line = 145:5] [debug variable = temp.data]
  br label %.backedge, !dbg !129                  ; [debug line = 147:5]

.backedge:                                        ; preds = %.backedge.backedge, %0
  %j_0_in = phi i32 [ %i_read, %0 ], [ %j_1, %.backedge.backedge ] ; [#uses=2 type=i32]
  %tmp_11 = trunc i32 %j_0_in to i31              ; [#uses=1 type=i31]
  %j = shl i32 %j_0_in, 1, !dbg !130              ; [#uses=6 type=i32] [debug line = 146:5]
  call void @llvm.dbg.value(metadata !{i32 %j}, i64 0, metadata !131), !dbg !130 ; [debug line = 146:5] [debug variable = j]
  %tmp_s = icmp sgt i32 %j, %n_read, !dbg !129    ; [#uses=1 type=i1] [debug line = 147:5]
  br i1 %tmp_s, label %.loopexit, label %_ifconv, !dbg !129 ; [debug line = 147:5]

_ifconv:                                          ; preds = %.backedge
  %tmp_1 = icmp slt i32 %j, %n_read, !dbg !132    ; [#uses=1 type=i1] [debug line = 149:9]
  %j_2 = call i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31 %tmp_11, i1 true), !dbg !132 ; [#uses=2 type=i32] [debug line = 149:9]
  %tmp_2 = sext i32 %j_2 to i64, !dbg !132        ; [#uses=1 type=i64] [debug line = 149:9]
  %a_priority_addr_1 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_2, !dbg !132 ; [#uses=1 type=i32*] [debug line = 149:9]
  %a_priority_load = load i32* %a_priority_addr_1, align 4, !dbg !132 ; [#uses=1 type=i32] [debug line = 149:9]
  %tmp_3 = sext i32 %j to i64, !dbg !132          ; [#uses=1 type=i64] [debug line = 149:9]
  %a_priority_addr_2 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_3, !dbg !132 ; [#uses=1 type=i32*] [debug line = 149:9]
  %a_priority_load_1 = load i32* %a_priority_addr_2, align 4, !dbg !132 ; [#uses=1 type=i32] [debug line = 149:9]
  %tmp_4 = icmp slt i32 %a_priority_load, %a_priority_load_1, !dbg !132 ; [#uses=1 type=i1] [debug line = 149:9]
  call void @llvm.dbg.value(metadata !{i32 %j_2}, i64 0, metadata !131), !dbg !134 ; [debug line = 150:13] [debug variable = j]
  %p_j = select i1 %tmp_4, i32 %j_2, i32 %j, !dbg !132 ; [#uses=1 type=i32] [debug line = 149:9]
  %j_1 = select i1 %tmp_1, i32 %p_j, i32 %j       ; [#uses=6 type=i32]
  %tmp_5 = sext i32 %j_1 to i64, !dbg !135        ; [#uses=2 type=i64] [debug line = 151:9]
  %a_priority_addr_3 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_5, !dbg !135 ; [#uses=1 type=i32*] [debug line = 151:9]
  %a_priority_load_2 = load i32* %a_priority_addr_3, align 4, !dbg !135 ; [#uses=2 type=i32] [debug line = 151:9]
  %tmp_6 = icmp slt i32 %temp_priority, %a_priority_load_2, !dbg !135 ; [#uses=1 type=i1] [debug line = 151:9]
  br i1 %tmp_6, label %.loopexit, label %.backedge.backedge, !dbg !135 ; [debug line = 151:9]

.backedge.backedge:                               ; preds = %_ifconv
  %tmp_18 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %j_1, i32 31), !dbg !136 ; [#uses=1 type=i1] [debug line = 155:13]
  %p_neg = sub i32 0, %j_1, !dbg !136             ; [#uses=1 type=i32] [debug line = 155:13]
  %p_lshr = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg, i32 1, i32 31), !dbg !136 ; [#uses=1 type=i31] [debug line = 155:13]
  %tmp_14 = zext i31 %p_lshr to i32, !dbg !136    ; [#uses=1 type=i32] [debug line = 155:13]
  %p_neg_t = sub i32 0, %tmp_14, !dbg !136        ; [#uses=1 type=i32] [debug line = 155:13]
  %p_lshr_f = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %j_1, i32 1, i32 31), !dbg !136 ; [#uses=1 type=i31] [debug line = 155:13]
  %tmp_15 = zext i31 %p_lshr_f to i32, !dbg !136  ; [#uses=1 type=i32] [debug line = 155:13]
  %tmp_9 = select i1 %tmp_18, i32 %p_neg_t, i32 %tmp_15, !dbg !136 ; [#uses=1 type=i32] [debug line = 155:13]
  %tmp_10 = sext i32 %tmp_9 to i64, !dbg !136     ; [#uses=2 type=i64] [debug line = 155:13]
  %a_priority_addr_5 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_10, !dbg !136 ; [#uses=1 type=i32*] [debug line = 155:13]
  store i32 %a_priority_load_2, i32* %a_priority_addr_5, align 4, !dbg !136 ; [debug line = 155:13]
  %a_data_addr_2 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_10, !dbg !136 ; [#uses=1 type=i32*] [debug line = 155:13]
  %a_data_addr_3 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_5, !dbg !136 ; [#uses=1 type=i32*] [debug line = 155:13]
  %a_data_load = load i32* %a_data_addr_3, align 4, !dbg !136 ; [#uses=1 type=i32] [debug line = 155:13]
  store i32 %a_data_load, i32* %a_data_addr_2, align 4, !dbg !136 ; [debug line = 155:13]
  br label %.backedge

.loopexit:                                        ; preds = %_ifconv, %.backedge
  %j_3 = phi i32 [ %j, %.backedge ], [ %j_1, %_ifconv ] ; [#uses=3 type=i32]
  %tmp_17 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %j_3, i32 31), !dbg !138 ; [#uses=1 type=i1] [debug line = 159:5]
  %p_neg1 = sub i32 0, %j_3, !dbg !138            ; [#uses=1 type=i32] [debug line = 159:5]
  %p_lshr1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg1, i32 1, i32 31), !dbg !138 ; [#uses=1 type=i31] [debug line = 159:5]
  %tmp_12 = zext i31 %p_lshr1 to i32, !dbg !138   ; [#uses=1 type=i32] [debug line = 159:5]
  %p_neg_t1 = sub i32 0, %tmp_12, !dbg !138       ; [#uses=1 type=i32] [debug line = 159:5]
  %p_lshr_f1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %j_3, i32 1, i32 31), !dbg !138 ; [#uses=1 type=i31] [debug line = 159:5]
  %tmp_13 = zext i31 %p_lshr_f1 to i32, !dbg !138 ; [#uses=1 type=i32] [debug line = 159:5]
  %tmp_7 = select i1 %tmp_17, i32 %p_neg_t1, i32 %tmp_13, !dbg !138 ; [#uses=1 type=i32] [debug line = 159:5]
  %tmp_8 = sext i32 %tmp_7 to i64, !dbg !138      ; [#uses=2 type=i64] [debug line = 159:5]
  %a_priority_addr_4 = getelementptr [201 x i32]* %a_priority, i64 0, i64 %tmp_8, !dbg !138 ; [#uses=1 type=i32*] [debug line = 159:5]
  store i32 %temp_priority, i32* %a_priority_addr_4, align 4, !dbg !138 ; [debug line = 159:5]
  %a_data_addr_1 = getelementptr [201 x i32]* %a_data, i64 0, i64 %tmp_8, !dbg !138 ; [#uses=1 type=i32*] [debug line = 159:5]
  store i32 %temp_data, i32* %a_data_addr_1, align 4, !dbg !138 ; [debug line = 159:5]
  ret void, !dbg !139                             ; [debug line = 160:5]
}

; [#uses=6]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=4]
define internal fastcc { i32, i32 } @queue(i1 zeroext %isPush, i9 %inData_priority, i8 %inData_data) {
  %inData_data_read = call i8 @_ssdm_op_Read.ap_auto.i8(i8 %inData_data) ; [#uses=1 type=i8]
  %inData_priority_read = call i9 @_ssdm_op_Read.ap_auto.i9(i9 %inData_priority) ; [#uses=1 type=i9]
  %isPush_read = call i1 @_ssdm_op_Read.ap_auto.i1(i1 %isPush) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %isPush_read}, i64 0, metadata !140), !dbg !144 ; [debug line = 90:17] [debug variable = isPush]
  %inData_data_cast = zext i8 %inData_data_read to i32 ; [#uses=2 type=i32]
  %inData_priority_cast = zext i9 %inData_priority_read to i32 ; [#uses=2 type=i32]
  call void @llvm.dbg.value(metadata !{i1 %isPush}, i64 0, metadata !140), !dbg !144 ; [debug line = 90:17] [debug variable = isPush]
  %size_load = load i32* @size, align 4, !dbg !145 ; [#uses=7 type=i32] [debug line = 97:3]
  br i1 %isPush_read, label %1, label %5, !dbg !148 ; [debug line = 96:2]

; <label>:1                                       ; preds = %0
  %tmp = icmp eq i32 %size_load, 200, !dbg !145   ; [#uses=1 type=i1] [debug line = 97:3]
  br i1 %tmp, label %9, label %2, !dbg !145       ; [debug line = 97:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i32 %size_load}, i64 0, metadata !149), !dbg !155 ; [debug line = 127:40@101:11] [debug variable = size]
  %n_assign = add nsw i32 %size_load, 1, !dbg !156 ; [#uses=5 type=i32] [debug line = 128:2@101:11]
  %tmp_i = sext i32 %n_assign to i64, !dbg !156   ; [#uses=2 type=i64] [debug line = 128:2@101:11]
  %queueDataHeap_priority_addr = getelementptr [201 x i32]* @queueDataHeap_priority, i64 0, i64 %tmp_i, !dbg !156 ; [#uses=1 type=i32*] [debug line = 128:2@101:11]
  store i32 %inData_priority_cast, i32* %queueDataHeap_priority_addr, align 4, !dbg !156 ; [debug line = 128:2@101:11]
  %queueDataHeap_data_addr = getelementptr [201 x i32]* @queueDataHeap_data, i64 0, i64 %tmp_i, !dbg !156 ; [#uses=1 type=i32*] [debug line = 128:2@101:11]
  store i32 %inData_data_cast, i32* %queueDataHeap_data_addr, align 4, !dbg !156 ; [debug line = 128:2@101:11]
  call void @llvm.dbg.value(metadata !{i32 %n_assign}, i64 0, metadata !158), !dbg !163 ; [debug line = 163:38@129:2@101:11] [debug variable = n]
  %tmp_19 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign, i32 31), !dbg !164 ; [#uses=1 type=i1] [debug line = 166:9@129:2@101:11]
  %p_neg_i_i_cast = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %size_load, i32 1, i32 31), !dbg !164 ; [#uses=1 type=i31] [debug line = 166:9@129:2@101:11]
  %p_lshr_i_i = xor i31 %p_neg_i_i_cast, -1, !dbg !164 ; [#uses=1 type=i31] [debug line = 166:9@129:2@101:11]
  %p_lshr_i_i_cast = zext i31 %p_lshr_i_i to i32, !dbg !164 ; [#uses=1 type=i32] [debug line = 166:9@129:2@101:11]
  %p_neg_t_i_i = sub i32 0, %p_lshr_i_i_cast, !dbg !164 ; [#uses=1 type=i32] [debug line = 166:9@129:2@101:11]
  %p_lshr_f_i_i = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %n_assign, i32 1, i32 31), !dbg !164 ; [#uses=1 type=i31] [debug line = 166:9@129:2@101:11]
  %tmp_16 = zext i31 %p_lshr_f_i_i to i32, !dbg !164 ; [#uses=1 type=i32] [debug line = 166:9@129:2@101:11]
  %i = select i1 %tmp_19, i32 %p_neg_t_i_i, i32 %tmp_16, !dbg !164 ; [#uses=1 type=i32] [debug line = 166:9@129:2@101:11]
  call void @llvm.dbg.value(metadata !{i32 %i}, i64 0, metadata !167), !dbg !164 ; [debug line = 166:9@129:2@101:11] [debug variable = i]
  br label %3, !dbg !164                          ; [debug line = 166:9@129:2@101:11]

; <label>:3                                       ; preds = %4, %2
  %i9_i_i = phi i32 [ %i, %2 ], [ %i_10_cast, %4 ] ; [#uses=3 type=i32]
  %tmp_i_i = icmp sgt i32 %i9_i_i, 0, !dbg !164   ; [#uses=1 type=i1] [debug line = 166:9@129:2@101:11]
  br i1 %tmp_i_i, label %4, label %push.exit, !dbg !164 ; [debug line = 166:9@129:2@101:11]

; <label>:4                                       ; preds = %3
  call fastcc void @min_heapify([201 x i32]* @queueDataHeap_priority, [201 x i32]* @queueDataHeap_data, i32 %i9_i_i, i32 %n_assign), !dbg !168 ; [debug line = 168:9@129:2@101:11]
  %tmp_21 = trunc i32 %i9_i_i to i31, !dbg !164   ; [#uses=1 type=i31] [debug line = 166:9@129:2@101:11]
  %i_10 = add i31 %tmp_21, -1, !dbg !170          ; [#uses=1 type=i31] [debug line = 166:26@129:2@101:11]
  %i_10_cast = zext i31 %i_10 to i32, !dbg !170   ; [#uses=1 type=i32] [debug line = 166:26@129:2@101:11]
  call void @llvm.dbg.value(metadata !{i31 %i_10}, i64 0, metadata !167), !dbg !170 ; [debug line = 166:26@129:2@101:11] [debug variable = i]
  br label %3, !dbg !170                          ; [debug line = 166:26@129:2@101:11]

push.exit:                                        ; preds = %3
  store i32 %n_assign, i32* @size, align 4, !dbg !153 ; [debug line = 101:11]
  br label %9

; <label>:5                                       ; preds = %0
  %tmp_s = icmp eq i32 %size_load, 0, !dbg !171   ; [#uses=1 type=i1] [debug line = 111:3]
  br i1 %tmp_s, label %9, label %6, !dbg !171     ; [debug line = 111:3]

; <label>:6                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{i32 %size_load}, i64 0, metadata !173), !dbg !179 ; [debug line = 134:39@121:11] [debug variable = size]
  %queueDataHeap_priority_load = load i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_priority, i64 0, i64 1), align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 135:2@121:11]
  %queueDataHeap_data_load = load i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_data, i64 0, i64 1), align 4, !dbg !180 ; [#uses=1 type=i32] [debug line = 135:2@121:11]
  %tmp_i1 = sext i32 %size_load to i64, !dbg !182 ; [#uses=2 type=i64] [debug line = 136:2@121:11]
  %queueDataHeap_priority_addr_1 = getelementptr [201 x i32]* @queueDataHeap_priority, i64 0, i64 %tmp_i1, !dbg !182 ; [#uses=1 type=i32*] [debug line = 136:2@121:11]
  %queueDataHeap_priority_load_1 = load i32* %queueDataHeap_priority_addr_1, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 136:2@121:11]
  store i32 %queueDataHeap_priority_load_1, i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_priority, i64 0, i64 1), align 4, !dbg !182 ; [debug line = 136:2@121:11]
  %queueDataHeap_data_addr_1 = getelementptr [201 x i32]* @queueDataHeap_data, i64 0, i64 %tmp_i1, !dbg !182 ; [#uses=1 type=i32*] [debug line = 136:2@121:11]
  %queueDataHeap_data_load_1 = load i32* %queueDataHeap_data_addr_1, align 4, !dbg !182 ; [#uses=1 type=i32] [debug line = 136:2@121:11]
  store i32 %queueDataHeap_data_load_1, i32* getelementptr inbounds ([201 x i32]* @queueDataHeap_data, i64 0, i64 1), align 4, !dbg !182 ; [debug line = 136:2@121:11]
  %n_assign_1 = add nsw i32 %size_load, -1, !dbg !183 ; [#uses=4 type=i32] [debug line = 137:2@121:11]
  call void @llvm.dbg.value(metadata !{i32 %n_assign_1}, i64 0, metadata !184), !dbg !185 ; [debug line = 163:38@137:2@121:11] [debug variable = n]
  %tmp_20 = call i1 @_ssdm_op_BitSelect.i1.i32.i32(i32 %n_assign_1, i32 31), !dbg !186 ; [#uses=1 type=i1] [debug line = 166:9@137:2@121:11]
  %p_neg_i_i7 = sub i32 1, %size_load, !dbg !186  ; [#uses=1 type=i32] [debug line = 166:9@137:2@121:11]
  %p_lshr_i_i8 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %p_neg_i_i7, i32 1, i32 31), !dbg !186 ; [#uses=1 type=i31] [debug line = 166:9@137:2@121:11]
  %tmp_17 = zext i31 %p_lshr_i_i8 to i32, !dbg !186 ; [#uses=1 type=i32] [debug line = 166:9@137:2@121:11]
  %p_neg_t_i_i9 = sub i32 0, %tmp_17, !dbg !186   ; [#uses=1 type=i32] [debug line = 166:9@137:2@121:11]
  %p_lshr_f_i_i1 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %n_assign_1, i32 1, i32 31), !dbg !186 ; [#uses=1 type=i31] [debug line = 166:9@137:2@121:11]
  %tmp_18 = zext i31 %p_lshr_f_i_i1 to i32, !dbg !186 ; [#uses=1 type=i32] [debug line = 166:9@137:2@121:11]
  %i_9 = select i1 %tmp_20, i32 %p_neg_t_i_i9, i32 %tmp_18, !dbg !186 ; [#uses=1 type=i32] [debug line = 166:9@137:2@121:11]
  call void @llvm.dbg.value(metadata !{i32 %i_9}, i64 0, metadata !187), !dbg !186 ; [debug line = 166:9@137:2@121:11] [debug variable = i]
  br label %7, !dbg !186                          ; [debug line = 166:9@137:2@121:11]

; <label>:7                                       ; preds = %8, %6
  %i9_i_i1 = phi i32 [ %i_9, %6 ], [ %i_11_cast, %8 ] ; [#uses=3 type=i32]
  %tmp_i_i1 = icmp sgt i32 %i9_i_i1, 0, !dbg !186 ; [#uses=1 type=i1] [debug line = 166:9@137:2@121:11]
  br i1 %tmp_i_i1, label %8, label %pop.exit, !dbg !186 ; [debug line = 166:9@137:2@121:11]

; <label>:8                                       ; preds = %7
  call fastcc void @min_heapify([201 x i32]* @queueDataHeap_priority, [201 x i32]* @queueDataHeap_data, i32 %i9_i_i1, i32 %n_assign_1), !dbg !188 ; [debug line = 168:9@137:2@121:11]
  %tmp_22 = trunc i32 %i9_i_i1 to i31, !dbg !186  ; [#uses=1 type=i31] [debug line = 166:9@137:2@121:11]
  %i_11 = add i31 %tmp_22, -1, !dbg !189          ; [#uses=1 type=i31] [debug line = 166:26@137:2@121:11]
  %i_11_cast = zext i31 %i_11 to i32, !dbg !189   ; [#uses=1 type=i32] [debug line = 166:26@137:2@121:11]
  call void @llvm.dbg.value(metadata !{i31 %i_11}, i64 0, metadata !187), !dbg !189 ; [debug line = 166:26@137:2@121:11] [debug variable = i]
  br label %7, !dbg !189                          ; [debug line = 166:26@137:2@121:11]

pop.exit:                                         ; preds = %7
  call void @llvm.dbg.value(metadata !{i32 %queueDataHeap_priority_load}, i64 0, metadata !190), !dbg !193 ; [debug line = 134:56@121:11] [debug variable = itemOut.priority]
  call void @llvm.dbg.value(metadata !{i32 %queueDataHeap_data_load}, i64 0, metadata !194), !dbg !193 ; [debug line = 134:56@121:11] [debug variable = itemOut.data]
  store i32 %n_assign_1, i32* @size, align 4, !dbg !177 ; [debug line = 121:11]
  br label %9

; <label>:9                                       ; preds = %pop.exit, %5, %push.exit, %1
  %outData_priority_2 = phi i32 [ %inData_priority_cast, %push.exit ], [ %queueDataHeap_priority_load, %pop.exit ], [ 2147483647, %1 ], [ 2147483647, %5 ] ; [#uses=1 type=i32]
  %outData_data_2 = phi i32 [ %inData_data_cast, %push.exit ], [ %queueDataHeap_data_load, %pop.exit ], [ -1, %1 ], [ -1, %5 ] ; [#uses=1 type=i32]
  %mrv = insertvalue { i32, i32 } undef, i32 %outData_priority_2, 0, !dbg !196 ; [#uses=1 type={ i32, i32 }] [debug line = 124:1]
  %mrv_1 = insertvalue { i32, i32 } %mrv, i32 %outData_data_2, 1, !dbg !196 ; [#uses=1 type={ i32, i32 }] [debug line = 124:1]
  ret { i32, i32 } %mrv_1, !dbg !196              ; [debug line = 124:1]
}

; [#uses=9]
define weak i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_12 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  ret i31 %empty_12
}

; [#uses=1]
define weak i32 @_ssdm_op_BitConcatenate.i32.i31.i1(i31, i1) nounwind readnone {
entry:
  %empty = zext i31 %0 to i32                     ; [#uses=1 type=i32]
  %empty_13 = zext i1 %1 to i32                   ; [#uses=2 type=i32]
  %empty_14 = trunc i32 %empty to i31             ; [#uses=1 type=i31]
  %empty_15 = call i31 @_ssdm_op_PartSelect.i31.i32.i32.i32(i32 %empty_13, i32 1, i32 31) ; [#uses=1 type=i31]
  %empty_16 = or i31 %empty_14, %empty_15         ; [#uses=1 type=i31]
  %empty_17 = call i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32 %empty_13, i31 %empty_16, i32 1, i32 31) ; [#uses=1 type=i32]
  ret i32 %empty_17
}

; [#uses=1]
define weak i1 @_ssdm_op_Read.ap_auto.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=1]
define weak i9 @_ssdm_op_Read.ap_auto.i9(i9) {
entry:
  ret i9 %0
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.ap_auto.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=2]
define weak i32 @_ssdm_op_Read.ap_auto.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=4]
define weak i1 @_ssdm_op_BitSelect.i1.i32.i32(i32, i32) nounwind readnone {
entry:
  %empty = shl i32 1, %1                          ; [#uses=1 type=i32]
  %empty_18 = and i32 %0, %empty                  ; [#uses=1 type=i32]
  %empty_19 = icmp ne i32 %empty_18, 0            ; [#uses=1 type=i1]
  ret i1 %empty_19
}

; [#uses=1]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=1]
define weak i32 @_ssdm_op_PartSet.i32.i32.i31.i32.i32(i32, i31, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.set.i32.i31(i32 %0, i31 %1, i32 %2, i32 %3) ; [#uses=1 type=i32]
  ret i32 %empty
}

; [#uses=1]
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
!13 = metadata !{i32 31, i32 1, metadata !14, null}
!14 = metadata !{i32 786443, metadata !15, i32 30, i32 16, metadata !16, i32 0} ; [ DW_TAG_lexical_block ]
!15 = metadata !{i32 786478, i32 0, metadata !16, metadata !"runQueue", metadata !"runQueue", metadata !"_Z8runQueuev", metadata !16, i32 30, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @runQueue, null, null, metadata !20, i32 30} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786473, metadata !"CAV_MinHeap/source/priorityQueueMinHeap.cpp", metadata !"/home/michael/ecen5139_final_project", null} ; [ DW_TAG_file_type ]
!17 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !18, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!18 = metadata !{metadata !19}
!19 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!20 = metadata !{metadata !21}
!21 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!22 = metadata !{i32 33, i32 1, metadata !14, null}
!23 = metadata !{i32 37, i32 6, metadata !24, null}
!24 = metadata !{i32 786443, metadata !14, i32 37, i32 2, metadata !16, i32 1} ; [ DW_TAG_lexical_block ]
!25 = metadata !{i32 37, i32 20, metadata !24, null}
!26 = metadata !{i32 39, i32 13, metadata !27, null}
!27 = metadata !{i32 786443, metadata !24, i32 37, i32 24, metadata !16, i32 2} ; [ DW_TAG_lexical_block ]
!28 = metadata !{i32 786688, metadata !14, metadata !"result", metadata !16, i32 36, metadata !19, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!29 = metadata !{i32 786688, metadata !14, metadata !"i", metadata !16, i32 35, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!30 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 42, i32 2, metadata !14, null}
!32 = metadata !{i32 786688, metadata !33, metadata !"dequeuedItems", metadata !16, i32 48, metadata !35, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!33 = metadata !{i32 786443, metadata !34, i32 45, i32 15, metadata !16, i32 3} ; [ DW_TAG_lexical_block ]
!34 = metadata !{i32 786478, i32 0, metadata !16, metadata !"runTest", metadata !"runTest", metadata !"_Z7runTestv", metadata !16, i32 45, metadata !17, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i1 ()* @runTest, null, null, metadata !20, i32 45} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 6400, i64 32, i32 0, i32 0, metadata !30, metadata !36, i32 0, i32 0} ; [ DW_TAG_array_type ]
!36 = metadata !{metadata !37}
!37 = metadata !{i32 786465, i64 0, i64 199}      ; [ DW_TAG_subrange_type ]
!38 = metadata !{i32 48, i32 6, metadata !33, null}
!39 = metadata !{i32 49, i32 6, metadata !40, null}
!40 = metadata !{i32 786443, metadata !33, i32 49, i32 2, metadata !16, i32 4} ; [ DW_TAG_lexical_block ]
!41 = metadata !{i32 49, i32 18, metadata !40, null}
!42 = metadata !{i32 51, i32 3, metadata !43, null}
!43 = metadata !{i32 786443, metadata !40, i32 49, i32 22, metadata !16, i32 5} ; [ DW_TAG_lexical_block ]
!44 = metadata !{i32 790529, metadata !45, metadata !"current.data", null, i32 50, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!45 = metadata !{i32 786688, metadata !43, metadata !"current", metadata !16, i32 50, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!46 = metadata !{i32 786454, null, metadata !"QueueData", metadata !16, i32 10, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_typedef ]
!47 = metadata !{i32 786434, null, metadata !"QueueData", metadata !48, i32 7, i64 64, i64 32, i32 0, i32 0, null, metadata !49, i32 0, null, null} ; [ DW_TAG_class_type ]
!48 = metadata !{i32 786473, metadata !"CAV_MinHeap/source/priorityQueueMinHeap.h", metadata !"/home/michael/ecen5139_final_project", null} ; [ DW_TAG_file_type ]
!49 = metadata !{metadata !50, metadata !51, metadata !52, metadata !56, metadata !61}
!50 = metadata !{i32 786445, metadata !47, metadata !"priority", metadata !48, i32 8, i64 32, i64 32, i64 0, i32 0, metadata !30} ; [ DW_TAG_member ]
!51 = metadata !{i32 786445, metadata !47, metadata !"data", metadata !48, i32 9, i64 32, i64 32, i64 32, i32 0, metadata !30} ; [ DW_TAG_member ]
!52 = metadata !{i32 786478, i32 0, metadata !47, metadata !"QueueData", metadata !"QueueData", metadata !"", metadata !48, i32 7, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !20, i32 7} ; [ DW_TAG_subprogram ]
!53 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !54, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!54 = metadata !{null, metadata !55}
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !47} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !47, metadata !"QueueData", metadata !"QueueData", metadata !"", metadata !48, i32 7, metadata !57, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !20, i32 7} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !58, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!58 = metadata !{null, metadata !55, metadata !59}
!59 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !60} ; [ DW_TAG_reference_type ]
!60 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_const_type ]
!61 = metadata !{i32 786478, i32 0, metadata !47, metadata !"~QueueData", metadata !"~QueueData", metadata !"", metadata !48, i32 7, metadata !53, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !20, i32 7} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786438, null, metadata !"QueueData", metadata !48, i32 7, i64 32, i64 32, i32 0, i32 0, null, metadata !63, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!63 = metadata !{metadata !51}
!64 = metadata !{i32 790529, metadata !45, metadata !"current.priority", null, i32 50, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!65 = metadata !{i32 786438, null, metadata !"QueueData", metadata !48, i32 7, i64 32, i64 32, i32 0, i32 0, null, metadata !66, i32 0, null, null} ; [ DW_TAG_class_field_type ]
!66 = metadata !{metadata !50}
!67 = metadata !{i32 52, i32 3, metadata !43, null}
!68 = metadata !{i32 53, i32 3, metadata !43, null}
!69 = metadata !{i32 786688, metadata !33, metadata !"i", metadata !16, i32 46, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!70 = metadata !{i32 55, i32 6, metadata !71, null}
!71 = metadata !{i32 786443, metadata !33, i32 55, i32 2, metadata !16, i32 6} ; [ DW_TAG_lexical_block ]
!72 = metadata !{i32 55, i32 18, metadata !71, null}
!73 = metadata !{i32 57, i32 3, metadata !74, null}
!74 = metadata !{i32 786443, metadata !71, i32 55, i32 22, metadata !16, i32 7} ; [ DW_TAG_lexical_block ]
!75 = metadata !{i32 790529, metadata !76, metadata !"out.priority", null, i32 56, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!76 = metadata !{i32 786688, metadata !74, metadata !"out", metadata !16, i32 56, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!77 = metadata !{i32 790529, metadata !76, metadata !"out.data", null, i32 56, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!78 = metadata !{i32 58, i32 3, metadata !74, null}
!79 = metadata !{i32 63, i32 6, metadata !80, null}
!80 = metadata !{i32 786443, metadata !33, i32 63, i32 2, metadata !16, i32 9} ; [ DW_TAG_lexical_block ]
!81 = metadata !{i32 63, i32 18, metadata !80, null}
!82 = metadata !{i32 65, i32 3, metadata !83, null}
!83 = metadata !{i32 786443, metadata !80, i32 63, i32 22, metadata !16, i32 10} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 790529, metadata !85, metadata !"current.data", null, i32 64, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!85 = metadata !{i32 786688, metadata !83, metadata !"current", metadata !16, i32 64, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!86 = metadata !{i32 66, i32 3, metadata !83, null}
!87 = metadata !{i32 790529, metadata !85, metadata !"current.priority", null, i32 64, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!88 = metadata !{i32 67, i32 3, metadata !83, null}
!89 = metadata !{i32 69, i32 6, metadata !90, null}
!90 = metadata !{i32 786443, metadata !33, i32 69, i32 2, metadata !16, i32 11} ; [ DW_TAG_lexical_block ]
!91 = metadata !{i32 69, i32 18, metadata !90, null}
!92 = metadata !{i32 70, i32 3, metadata !93, null}
!93 = metadata !{i32 786443, metadata !90, i32 69, i32 22, metadata !16, i32 12} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 73, i32 6, metadata !95, null}
!95 = metadata !{i32 786443, metadata !33, i32 73, i32 2, metadata !16, i32 13} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 73, i32 18, metadata !95, null}
!97 = metadata !{i32 75, i32 3, metadata !98, null}
!98 = metadata !{i32 786443, metadata !95, i32 73, i32 22, metadata !16, i32 14} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 790529, metadata !100, metadata !"out.priority", null, i32 74, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!100 = metadata !{i32 786688, metadata !98, metadata !"out", metadata !16, i32 74, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!101 = metadata !{i32 790529, metadata !100, metadata !"out.data", null, i32 74, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!102 = metadata !{i32 76, i32 3, metadata !98, null}
!103 = metadata !{i32 79, i32 3, metadata !98, null}
!104 = metadata !{i32 83, i32 3, metadata !98, null}
!105 = metadata !{i32 786688, metadata !33, metadata !"last", metadata !16, i32 72, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!106 = metadata !{i32 84, i32 3, metadata !98, null}
!107 = metadata !{i32 86, i32 2, metadata !33, null}
!108 = metadata !{i32 786689, metadata !109, metadata !"n", metadata !16, i32 50331789, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!109 = metadata !{i32 786478, i32 0, metadata !16, metadata !"min_heapify", metadata !"min_heapify", metadata !"_Z11min_heapifyP9QueueDataii", metadata !16, i32 141, metadata !110, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 142} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !112, metadata !30, metadata !30}
!112 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !46} ; [ DW_TAG_pointer_type ]
!113 = metadata !{i32 141, i32 41, metadata !109, null}
!114 = metadata !{i32 786689, metadata !109, metadata !"i", metadata !16, i32 33554573, metadata !30, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!115 = metadata !{i32 141, i32 35, metadata !109, null}
!116 = metadata !{i32 790531, metadata !117, metadata !"a.priority", null, i32 141, metadata !118, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!117 = metadata !{i32 786689, metadata !109, metadata !"a", metadata !16, i32 16777357, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!118 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 6432, i64 32, i32 0, i32 0, metadata !65, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ]
!119 = metadata !{metadata !120}
!120 = metadata !{i32 786465, i64 0, i64 200}     ; [ DW_TAG_subrange_type ]
!121 = metadata !{i32 141, i32 29, metadata !109, null}
!122 = metadata !{i32 790531, metadata !117, metadata !"a.data", null, i32 141, metadata !123, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!123 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 6432, i64 32, i32 0, i32 0, metadata !62, metadata !119, i32 0, i32 0} ; [ DW_TAG_array_type ]
!124 = metadata !{i32 145, i32 5, metadata !125, null}
!125 = metadata !{i32 786443, metadata !109, i32 142, i32 1, metadata !16, i32 26} ; [ DW_TAG_lexical_block ]
!126 = metadata !{i32 790529, metadata !127, metadata !"temp.priority", null, i32 144, metadata !65, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!127 = metadata !{i32 786688, metadata !125, metadata !"temp", metadata !16, i32 144, metadata !46, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!128 = metadata !{i32 790529, metadata !127, metadata !"temp.data", null, i32 144, metadata !62, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!129 = metadata !{i32 147, i32 5, metadata !125, null}
!130 = metadata !{i32 146, i32 5, metadata !125, null}
!131 = metadata !{i32 786688, metadata !125, metadata !"j", metadata !16, i32 143, metadata !30, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!132 = metadata !{i32 149, i32 9, metadata !133, null}
!133 = metadata !{i32 786443, metadata !125, i32 148, i32 5, metadata !16, i32 27} ; [ DW_TAG_lexical_block ]
!134 = metadata !{i32 150, i32 13, metadata !133, null}
!135 = metadata !{i32 151, i32 9, metadata !133, null}
!136 = metadata !{i32 155, i32 13, metadata !137, null}
!137 = metadata !{i32 786443, metadata !133, i32 154, i32 9, metadata !16, i32 28} ; [ DW_TAG_lexical_block ]
!138 = metadata !{i32 159, i32 5, metadata !125, null}
!139 = metadata !{i32 160, i32 5, metadata !125, null}
!140 = metadata !{i32 786689, metadata !141, metadata !"isPush", metadata !16, i32 16777306, metadata !19, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!141 = metadata !{i32 786478, i32 0, metadata !16, metadata !"queue", metadata !"queue", metadata !"_Z5queueb9QueueDataPS_", metadata !16, i32 90, metadata !142, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 90} ; [ DW_TAG_subprogram ]
!142 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !143, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!143 = metadata !{null, metadata !19, metadata !46, metadata !112}
!144 = metadata !{i32 90, i32 17, metadata !141, null}
!145 = metadata !{i32 97, i32 3, metadata !146, null}
!146 = metadata !{i32 786443, metadata !147, i32 96, i32 12, metadata !16, i32 18} ; [ DW_TAG_lexical_block ]
!147 = metadata !{i32 786443, metadata !141, i32 90, i32 62, metadata !16, i32 17} ; [ DW_TAG_lexical_block ]
!148 = metadata !{i32 96, i32 2, metadata !147, null}
!149 = metadata !{i32 786689, metadata !150, metadata !"size", metadata !16, i32 33554559, metadata !30, i32 0, metadata !153} ; [ DW_TAG_arg_variable ]
!150 = metadata !{i32 786478, i32 0, metadata !16, metadata !"push", metadata !"push", metadata !"_Z4pushP9QueueDataiS_", metadata !16, i32 127, metadata !151, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 127} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{metadata !30, metadata !112, metadata !30, metadata !46}
!153 = metadata !{i32 101, i32 11, metadata !154, null}
!154 = metadata !{i32 786443, metadata !146, i32 100, i32 9, metadata !16, i32 20} ; [ DW_TAG_lexical_block ]
!155 = metadata !{i32 127, i32 40, metadata !150, metadata !153}
!156 = metadata !{i32 128, i32 2, metadata !157, metadata !153}
!157 = metadata !{i32 786443, metadata !150, i32 127, i32 61, metadata !16, i32 24} ; [ DW_TAG_lexical_block ]
!158 = metadata !{i32 786689, metadata !159, metadata !"n", metadata !16, i32 33554595, metadata !30, i32 0, metadata !162} ; [ DW_TAG_arg_variable ]
!159 = metadata !{i32 786478, i32 0, metadata !16, metadata !"build_minheap", metadata !"build_minheap", metadata !"_Z13build_minheapP9QueueDatai", metadata !16, i32 163, metadata !160, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 164} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{null, metadata !112, metadata !30}
!162 = metadata !{i32 129, i32 2, metadata !157, metadata !153}
!163 = metadata !{i32 163, i32 38, metadata !159, metadata !162}
!164 = metadata !{i32 166, i32 9, metadata !165, metadata !162}
!165 = metadata !{i32 786443, metadata !166, i32 166, i32 5, metadata !16, i32 30} ; [ DW_TAG_lexical_block ]
!166 = metadata !{i32 786443, metadata !159, i32 164, i32 1, metadata !16, i32 29} ; [ DW_TAG_lexical_block ]
!167 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !16, i32 165, metadata !30, i32 0, metadata !162} ; [ DW_TAG_auto_variable ]
!168 = metadata !{i32 168, i32 9, metadata !169, metadata !162}
!169 = metadata !{i32 786443, metadata !165, i32 167, i32 5, metadata !16, i32 31} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 166, i32 26, metadata !165, metadata !162}
!171 = metadata !{i32 111, i32 3, metadata !172, null}
!172 = metadata !{i32 786443, metadata !147, i32 110, i32 8, metadata !16, i32 21} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 786689, metadata !174, metadata !"size", metadata !16, i32 33554566, metadata !30, i32 0, metadata !177} ; [ DW_TAG_arg_variable ]
!174 = metadata !{i32 786478, i32 0, metadata !16, metadata !"pop", metadata !"pop", metadata !"_Z3popP9QueueDataiS0_", metadata !16, i32 134, metadata !175, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !20, i32 134} ; [ DW_TAG_subprogram ]
!175 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !176, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!176 = metadata !{metadata !30, metadata !112, metadata !30, metadata !112}
!177 = metadata !{i32 121, i32 11, metadata !178, null}
!178 = metadata !{i32 786443, metadata !172, i32 114, i32 9, metadata !16, i32 23} ; [ DW_TAG_lexical_block ]
!179 = metadata !{i32 134, i32 39, metadata !174, metadata !177}
!180 = metadata !{i32 135, i32 2, metadata !181, metadata !177}
!181 = metadata !{i32 786443, metadata !174, i32 134, i32 64, metadata !16, i32 25} ; [ DW_TAG_lexical_block ]
!182 = metadata !{i32 136, i32 2, metadata !181, metadata !177}
!183 = metadata !{i32 137, i32 2, metadata !181, metadata !177}
!184 = metadata !{i32 786689, metadata !159, metadata !"n", metadata !16, i32 33554595, metadata !30, i32 0, metadata !183} ; [ DW_TAG_arg_variable ]
!185 = metadata !{i32 163, i32 38, metadata !159, metadata !183}
!186 = metadata !{i32 166, i32 9, metadata !165, metadata !183}
!187 = metadata !{i32 786688, metadata !166, metadata !"i", metadata !16, i32 165, metadata !30, i32 0, metadata !183} ; [ DW_TAG_auto_variable ]
!188 = metadata !{i32 168, i32 9, metadata !169, metadata !183}
!189 = metadata !{i32 166, i32 26, metadata !165, metadata !183}
!190 = metadata !{i32 790535, metadata !191, metadata !"itemOut.priority", null, i32 134, metadata !192, i32 0, metadata !177} ; [ DW_TAG_arg_variable_field_wo ]
!191 = metadata !{i32 786689, metadata !174, metadata !"itemOut", metadata !16, i32 50331782, metadata !112, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!192 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !65} ; [ DW_TAG_pointer_type ]
!193 = metadata !{i32 134, i32 56, metadata !174, metadata !177}
!194 = metadata !{i32 790535, metadata !191, metadata !"itemOut.data", null, i32 134, metadata !195, i32 0, metadata !177} ; [ DW_TAG_arg_variable_field_wo ]
!195 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !62} ; [ DW_TAG_pointer_type ]
!196 = metadata !{i32 124, i32 1, metadata !147, null}
