; ModuleID = 'together.bc.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128"
target triple = "x86_64-apple-darwin10.0"

deplibs = [ "gc" ]
%struct.__darwin_pthread_handler_rec = type <{ void (i8*)*, i8*, %struct.__darwin_pthread_handler_rec* }>
%struct._msg_queue_t = type <{ %struct._opaque_pthread_attr_t, %struct._opaque_pthread_cond_t, %struct._opaque_pthread_cond_t, i64, i64, i64, i8* }>
%struct._opaque_pthread_attr_t = type <{ i64, [56 x i8] }>
%struct._opaque_pthread_cond_t = type <{ i64, [40 x i8] }>
%struct._opaque_pthread_condattr_t = type <{ i64, [8 x i8] }>
%struct._opaque_pthread_t = type <{ i64, %struct.__darwin_pthread_handler_rec*, [1168 x i8] }>
%struct._proc_t = type <{ %struct._opaque_pthread_t*, %struct._opaque_pthread_attr_t, %struct._msg_queue_t* }>
%struct.data = type <{ i8*, i64 }>
%struct.slot_node = type <{ %struct.slot_node*, i32, i8, i8, i8, i8, i32*, i8* }>

@__sym_lt = internal global i32 0                 ; <i32*> [#uses=5]
@__sym_add = internal global i32 0                ; <i32*> [#uses=8]
@__sym_apply = internal global i32 0              ; <i32*> [#uses=9]
@__sym_to_s = internal global i32 0               ; <i32*> [#uses=19]
@__sym_print = internal global i32 0              ; <i32*> [#uses=4]
@__sym_main = internal global i32 0               ; <i32*> [#uses=5]
@"\01LC" = internal constant [9 x i8] c"object.c\00" ; <[9 x i8]*> [#uses=1]
@__sym_delegate = internal global i32 0, align 4  ; <i32*> [#uses=1]
@__func__.object_get_slot = internal constant [16 x i8] c"object_get_slot\00" ; <[16 x i8]*> [#uses=1]
@"\01LC5" = internal constant [7 x i8] c"target\00" ; <[7 x i8]*> [#uses=1]
@"\01LC6" = internal constant [51 x i8] c"Warning: trying to overwrite immutable slot: '%p'\0A\00" ; <[51 x i8]*> [#uses=1]
@__func__.object_set_slot = internal constant [16 x i8] c"object_set_slot\00" ; <[16 x i8]*> [#uses=1]
@"\01LC8" = internal constant [67 x i8] c"!(flags & SLOT_ASSIGNMENT) && \22trying to assign non-existant slot\22\00" ; <[67 x i8]*> [#uses=1]
@__func__.object_set_delegate = internal constant [20 x i8] c"object_set_delegate\00" ; <[20 x i8]*> [#uses=1]
@"\01LC9" = internal constant [18 x i8] c"OBJ_VALID(object)\00" ; <[18 x i8]*> [#uses=1]
@__func__.object_get_delegate = internal constant [20 x i8] c"object_get_delegate\00" ; <[20 x i8]*> [#uses=1]
@__func__.object_exec = internal constant [12 x i8] c"object_exec\00" ; <[12 x i8]*> [#uses=1]
@"\01LC11" = internal constant [25 x i8] c"OBJ_VALID(resolved_slot)\00" ; <[25 x i8]*> [#uses=1]
@"\01LC12" = internal constant [39 x i8] c"OBJ_TYPE(resolved_slot) == OBJ_CLOSURE\00" ; <[39 x i8]*> [#uses=1]
@"\01LC13" = internal constant [18 x i8] c"0 && \22NOOOOOOOOO\22\00" ; <[18 x i8]*> [#uses=1]
@string_prototype.prototype = internal global i8* null ; <i8**> [#uses=13]
@string_prototype_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@__sym_puts = internal global i32 0, align 4      ; <i32*> [#uses=3]
@__sym_clone = internal global i32 0, align 4     ; <i32*> [#uses=17]
@__sym_class = internal global i32 0, align 4     ; <i32*> [#uses=15]
@__sym_eq = internal global i32 0, align 4        ; <i32*> [#uses=10]
@__sym_neq = internal global i32 0, align 4       ; <i32*> [#uses=9]
@__sym_size = internal global i32 0, align 4      ; <i32*> [#uses=5]
@"\01LC19" = internal constant [9 x i8] c"string.c\00" ; <[9 x i8]*> [#uses=1]
@__func__.string_cstrC = internal constant [13 x i8] c"string_cstrC\00" ; <[13 x i8]*> [#uses=1]
@"\01LC120" = internal constant [28 x i8] c"OBJ_TYPE(obj) == OBJ_STRING\00" ; <[28 x i8]*> [#uses=1]
@"\01LC221" = internal constant [7 x i8] c"string\00" ; <[7 x i8]*> [#uses=1]
@__func__.string_puts = internal constant [12 x i8] c"string_puts\00" ; <[12 x i8]*> [#uses=1]
@"\01LC322" = internal constant [29 x i8] c"OBJ_TYPE(self) == OBJ_STRING\00" ; <[29 x i8]*> [#uses=1]
@__func__.string_print = internal constant [13 x i8] c"string_print\00" ; <[13 x i8]*> [#uses=1]
@"\01LC423" = internal constant [3 x i8] c"%s\00" ; <[3 x i8]*> [#uses=1]
@__func__.string_eq = internal constant [10 x i8] c"string_eq\00" ; <[10 x i8]*> [#uses=1]
@"\01LC524" = internal constant [17 x i8] c"OBJ_VALID(param)\00" ; <[17 x i8]*> [#uses=1]
@__func__.string_to_s = internal constant [12 x i8] c"string_to_s\00" ; <[12 x i8]*> [#uses=1]
@__func__.string_add = internal constant [11 x i8] c"string_add\00" ; <[11 x i8]*> [#uses=1]
@null_object.cached_null = internal global i8* null ; <i8**> [#uses=9]
@null_cache_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@wrapped_null_object.cached_wrap = internal global i8* null ; <i8**> [#uses=4]
@wrapped_cache_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@"\01LC26" = internal constant [5 x i8] c"null\00" ; <[5 x i8]*> [#uses=1]
@closure_prototype.prototype = internal global i8* null ; <i8**> [#uses=7]
@closure_prototype_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@"\01LC29" = internal constant [10 x i8] c"closure.c\00" ; <[10 x i8]*> [#uses=1]
@__func__.closure_get_fptrC = internal constant [18 x i8] c"closure_get_fptrC\00" ; <[18 x i8]*> [#uses=1]
@"\01LC231" = internal constant [31 x i8] c"self_obj->flags & OBJ_METADATA\00" ; <[31 x i8]*> [#uses=1]
@"\01LC332" = internal constant [8 x i8] c"closure\00" ; <[8 x i8]*> [#uses=1]
@"\01LC433" = internal constant [11 x i8] c"Closure %p\00" ; <[11 x i8]*> [#uses=1]
@int_prototype.prototype = internal global i8* null ; <i8**> [#uses=19]
@int_cache_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@__sym_le = internal global i32 0, align 4        ; <i32*> [#uses=3]
@__sym_gt = internal global i32 0, align 4        ; <i32*> [#uses=3]
@__sym_ge = internal global i32 0, align 4        ; <i32*> [#uses=3]
@__sym_sub = internal global i32 0, align 4       ; <i32*> [#uses=3]
@__sym_mul = internal global i32 0, align 4       ; <i32*> [#uses=3]
@__sym_div = internal global i32 0, align 4       ; <i32*> [#uses=3]
@__sym_rem = internal global i32 0, align 4       ; <i32*> [#uses=3]
@__sym_succ = internal global i32 0, align 4      ; <i32*> [#uses=4]
@"\01LC36" = internal constant [4 x i8] c"int\00" ; <[4 x i8]*> [#uses=1]
@__func__.int_to_s = internal constant [9 x i8] c"int_to_s\00" ; <[9 x i8]*> [#uses=1]
@"\01LC137" = internal constant [10 x i8] c"integer.c\00" ; <[10 x i8]*> [#uses=1]
@"\01LC238" = internal constant [30 x i8] c"OBJ_TYPE(self) == OBJ_INTEGER\00" ; <[30 x i8]*> [#uses=1]
@"\01LC339" = internal constant [3 x i8] c"%i\00" ; <[3 x i8]*> [#uses=1]
@bool_prototype.prototype = internal global i8* null ; <i8**> [#uses=11]
@__sym_andand = internal global i32 0, align 4    ; <i32*> [#uses=3]
@__sym_oror = internal global i32 0, align 4      ; <i32*> [#uses=3]
@__sym_not = internal global i32 0, align 4       ; <i32*> [#uses=3]
@"\01LC41" = internal constant [5 x i8] c"bool\00" ; <[5 x i8]*> [#uses=1]
@__func__.bool_to_s = internal constant [10 x i8] c"bool_to_s\00" ; <[10 x i8]*> [#uses=1]
@"\01LC142" = internal constant [7 x i8] c"bool.c\00" ; <[7 x i8]*> [#uses=1]
@"\01LC243" = internal constant [27 x i8] c"OBJ_TYPE(self) == OBJ_BOOL\00" ; <[27 x i8]*> [#uses=1]
@"\01LC344" = internal constant [5 x i8] c"true\00" ; <[5 x i8]*> [#uses=1]
@"\01LC445" = internal constant [6 x i8] c"false\00" ; <[6 x i8]*> [#uses=1]
@bool_false.cached_false = internal global i8* null ; <i8**> [#uses=6]
@bool_cache_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=4]
@bool_true.cached_true = internal global i8* null ; <i8**> [#uses=6]
@"\01LC51" = internal constant [8 x i8] c"array.c\00" ; <[8 x i8]*> [#uses=1]
@__func__.array_get_elementC = internal constant [19 x i8] c"array_get_elementC\00" ; <[19 x i8]*> [#uses=1]
@"\01LC152" = internal constant [5 x i8] c"data\00" ; <[5 x i8]*> [#uses=1]
@__func__.array_set_elementC = internal constant [19 x i8] c"array_set_elementC\00" ; <[19 x i8]*> [#uses=1]
@"\01LC354" = internal constant [52 x i8] c"index >= 0 && index < size && \22index out of bounds\22\00" ; <[52 x i8]*> [#uses=1]
@__func__.array_get_sizeC = internal constant [16 x i8] c"array_get_sizeC\00" ; <[16 x i8]*> [#uses=1]
@"\01LC455" = internal constant [28 x i8] c"OBJ_TYPE(self) == OBJ_ARRAY\00" ; <[28 x i8]*> [#uses=1]
@__sym_at = internal global i32 0, align 4        ; <i32*> [#uses=3]
@__sym_join = internal global i32 0, align 4      ; <i32*> [#uses=3]
@__sym_append = internal global i32 0, align 4    ; <i32*> [#uses=3]
@__sym_inject = internal global i32 0, align 4    ; <i32*> [#uses=3]
@__sym_all_q = internal global i32 0, align 4     ; <i32*> [#uses=3]
@__sym_each_with_index = internal global i32 0, align 4 ; <i32*> [#uses=3]
@__sym_each = internal global i32 0, align 4      ; <i32*> [#uses=5]
@empty_c = internal global i8* null, align 8      ; <i8**> [#uses=4]
@array_cache_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=4]
@array_prototype.prototype = internal global i8* null ; <i8**> [#uses=16]
@"\01LC756" = internal constant [1 x i8] zeroinitializer ; <[1 x i8]*> [#uses=1]
@"\01LC857" = internal constant [6 x i8] c"array\00" ; <[6 x i8]*> [#uses=1]
@"\01LC958" = internal constant [2 x i8] c"[\00"  ; <[2 x i8]*> [#uses=1]
@"\01LC1059" = internal constant [3 x i8] c", \00" ; <[3 x i8]*> [#uses=1]
@"\01LC1160" = internal constant [2 x i8] c"]\00" ; <[2 x i8]*> [#uses=1]
@"\01LC367" = internal constant [15 x i8] c"MAIN-----> %p\0A\00" ; <[15 x i8]*> [#uses=1]
@"\01LC69" = internal constant [16 x i8] c"Heap size = %d\0A\00" ; <[16 x i8]*> [#uses=1]
@"\01LC170" = internal constant [31 x i8] c"mem usage: %i, num allocs: %i\0A\00" ; <[31 x i8]*> [#uses=1]
@"\01LC271" = internal constant [18 x i8] c"# collections %i\0A\00" ; <[18 x i8]*> [#uses=1]
@GC_gc_no = external global i64                   ; <i64*> [#uses=2]
@__func__.mem_alloc = internal constant [10 x i8] c"mem_alloc\00" ; <[10 x i8]*> [#uses=1]
@"\01LC473" = internal constant [9 x i8] c"memory.c\00" ; <[9 x i8]*> [#uses=1]
@"\01LC574" = internal constant [31 x i8] c"ret && \22failed to alloc space\22\00" ; <[31 x i8]*> [#uses=1]
@object_prototype.prototype = internal global i8* null ; <i8**> [#uses=8]
@object_prototype_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@__sym_inspect = internal global i32 0, align 4   ; <i32*> [#uses=4]
@__sym_dotdot = internal global i32 0, align 4    ; <i32*> [#uses=3]
@"\01LC79" = internal constant [14 x i8] c"OBJ_METADATA|\00" ; <[14 x i8]*> [#uses=1]
@"\01LC180" = internal constant [11 x i8] c"OBJ_CLASS|\00" ; <[11 x i8]*> [#uses=1]
@"\01LC281" = internal constant [10 x i8] c"OBJ_NULL|\00" ; <[10 x i8]*> [#uses=1]
@"\01LC382" = internal constant [13 x i8] c"OBJ_INTEGER|\00" ; <[13 x i8]*> [#uses=1]
@"\01LC483" = internal constant [12 x i8] c"OBJ_STRING|\00" ; <[12 x i8]*> [#uses=1]
@"\01LC584" = internal constant [13 x i8] c"OBJ_CLOSURE|\00" ; <[13 x i8]*> [#uses=1]
@"\01LC685" = internal constant [11 x i8] c"OBJ_FLOAT|\00" ; <[11 x i8]*> [#uses=1]
@"\01LC786" = internal constant [10 x i8] c"OBJ_BOOL|\00" ; <[10 x i8]*> [#uses=1]
@"\01LC887" = internal constant [11 x i8] c"OBJ_ARRAY|\00" ; <[11 x i8]*> [#uses=1]
@"\01LC988" = internal constant [10 x i8] c"OBJ_PROC|\00" ; <[10 x i8]*> [#uses=1]
@"\01LC1089" = internal constant [2 x i8] c"0\00" ; <[2 x i8]*> [#uses=1]
@"\01LC1190" = internal constant [3 x i8] c"%p\00" ; <[3 x i8]*> [#uses=1]
@"\01LC1291" = internal constant [7 x i8] c"== %s \00" ; <[7 x i8]*> [#uses=1]
@"\01LC1594" = internal constant [18 x i8] c"   magic: 0x%08X\0A\00" ; <[18 x i8]*> [#uses=1]
@"\01LC1695" = internal constant [23 x i8] c"   flags: 0x%04X (%s)\0A\00" ; <[23 x i8]*> [#uses=1]
@"\01LC1796" = internal constant [17 x i8] c"   delegate: %p\0A\00" ; <[17 x i8]*> [#uses=1]
@"\01LC1897" = internal constant [19 x i8] c"   first node: %p\0A\00" ; <[19 x i8]*> [#uses=1]
@"\01LC1998" = internal constant [17 x i8] c"   metadata: %p\0A\00" ; <[17 x i8]*> [#uses=1]
@"\01LC20" = internal constant [51 x i8] c"   name                          value       flags\00" ; <[51 x i8]*> [#uses=1]
@"\01LC21" = internal constant [4 x i8] c"   \00" ; <[4 x i8]*> [#uses=1]
@"\01LC22" = internal constant [12 x i8] c"%p 0x%04X (\00" ; <[12 x i8]*> [#uses=1]
@"\01LC23" = internal constant [14 x i8] c"SLOT_MUTABLE|\00" ; <[14 x i8]*> [#uses=1]
@"\01LC24" = internal constant [15 x i8] c"SLOT_METADATA|\00" ; <[15 x i8]*> [#uses=1]
@"\01LC25" = internal constant [2 x i8] c")\00"   ; <[2 x i8]*> [#uses=1]
@"\01LC2699" = internal constant [13 x i8] c"[Object: %p]\00" ; <[13 x i8]*> [#uses=1]
@"\01LC27" = internal constant [7 x i8] c"object\00" ; <[7 x i8]*> [#uses=1]
@__sym___start = internal global i32 0, align 4   ; <i32*> [#uses=4]
@__sym___end = internal global i32 0, align 4     ; <i32*> [#uses=4]
@range_prototype.prototype = internal global i8* null ; <i8**> [#uses=5]
@range_prototype_m = internal global %struct._opaque_pthread_attr_t <{ i64 850045863, [56 x i8] zeroinitializer }>, align 8 ; <%struct._opaque_pthread_attr_t*> [#uses=2]
@__func__.range_each = internal constant [11 x i8] c"range_each\00" ; <[11 x i8]*> [#uses=1]
@"\01LC129" = internal constant [8 x i8] c"range.c\00" ; <[8 x i8]*> [#uses=1]
@"\01LC2130" = internal constant [8 x i8] c"element\00" ; <[8 x i8]*> [#uses=1]

define i32 @main(i32, i8* nocapture) nounwind {
entry:
  %2 = tail call i32 @atexit(void ()* @__t_exit) nounwind ; <i32> [#uses=0]
  tail call void @GC_init() nounwind
  %3 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=7]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %entry
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %entry
  %7 = getelementptr i8* %3, i64 12               ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i32*                     ; <i32*> [#uses=1]
  store i32 0, i32* %8
  %9 = getelementptr i8* %3, i64 8                ; <i8*> [#uses=1]
  %10 = bitcast i8* %9 to i32*                    ; <i32*> [#uses=3]
  store i32 364969966, i32* %10
  %11 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %12 = load i32* %10                             ; <i32> [#uses=1]
  %13 = icmp eq i32 %12, 364969966                ; <i1> [#uses=1]
  br i1 %13, label %object_create.exit, label %.thread.i

.thread.i:                                        ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_create.exit:                               ; preds = %6
  %14 = getelementptr i8* %3, i64 16              ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i8**                   ; <i8**> [#uses=2]
  store i8* %11, i8** %15
  %16 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %17 = icmp eq i8* %16, null                     ; <i1> [#uses=1]
  br i1 %17, label %18, label %19

; <label>:18                                      ; preds = %object_create.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:19                                      ; preds = %object_create.exit
  %20 = getelementptr i8* %16, i64 12             ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %21
  %22 = getelementptr i8* %16, i64 8              ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %23
  %24 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %25 = load i32* %23                             ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 364969966                ; <i1> [#uses=1]
  br i1 %26, label %closure_object_place.exit, label %.thread.i3

.thread.i3:                                       ; preds = %19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object_place.exit:                        ; preds = %19
  %27 = getelementptr i8* %16, i64 16             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* %24, i8** %28
  %29 = getelementptr i8* %16, i64 24             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @__closure to i8*), i8** %30
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_main to i64)), i64 4), label %31, label %34

; <label>:31                                      ; preds = %closure_object_place.exit
  %32 = load i32* %10                             ; <i32> [#uses=1]
  %33 = icmp eq i32 %32, 364969966                ; <i1> [#uses=1]
  br i1 %33, label %object_set_delegate.exit.i, label %.thread.i2

.thread.i2:                                       ; preds = %31
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %31
  store i8* %16, i8** %15
  br label %object_set_slot.exit

; <label>:34                                      ; preds = %closure_object_place.exit
  %35 = bitcast i8* %3 to %struct.slot_node**     ; <%struct.slot_node**> [#uses=1]
  %36 = load %struct.slot_node** %35              ; <%struct.slot_node*> [#uses=2]
  %37 = bitcast i8* %3 to %struct.slot_node*      ; <%struct.slot_node*> [#uses=1]
  br label %38

; <label>:38                                      ; preds = %56, %34
  %node.0.i = phi %struct.slot_node* [ %36, %34 ], [ %58, %56 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %37, %34 ], [ %node.0.i, %56 ] ; <%struct.slot_node*> [#uses=1]
  %39 = phi %struct.slot_node* [ %58, %56 ], [ %36, %34 ] ; <%struct.slot_node*> [#uses=1]
  %40 = icmp eq %struct.slot_node* %39, null      ; <i1> [#uses=1]
  br i1 %40, label %59, label %41

; <label>:41                                      ; preds = %38
  %42 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %43 = load i32** %42                            ; <i32*> [#uses=1]
  %44 = ptrtoint i32* %43 to i64                  ; <i64> [#uses=1]
  %45 = sub i64 ptrtoint (i32* @__sym_main to i64), %44 ; <i64> [#uses=1]
  %46 = icmp ult i64 %45, 4                       ; <i1> [#uses=1]
  br i1 %46, label %47, label %56

; <label>:47                                      ; preds = %41
  %48 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %49 = load i32* %48                             ; <i32> [#uses=1]
  %50 = and i32 %49, 2                            ; <i32> [#uses=1]
  %51 = icmp eq i32 %50, 0                        ; <i1> [#uses=1]
  br i1 %51, label %54, label %52

; <label>:52                                      ; preds = %47
  %53 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %16, i8** %53
  br label %object_set_slot.exit

; <label>:54                                      ; preds = %47
  %55 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_main) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:56                                      ; preds = %41
  %57 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %58 = load %struct.slot_node** %57              ; <%struct.slot_node*> [#uses=2]
  br label %38

; <label>:59                                      ; preds = %38
  %60 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %61 = icmp eq i8* %60, null                     ; <i1> [#uses=1]
  br i1 %61, label %62, label %mem_alloc.exit.i

; <label>:62                                      ; preds = %59
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i:                                 ; preds = %59
  %63 = bitcast i8* %60 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %64 = getelementptr i8* %60, i64 8              ; <i8*> [#uses=1]
  %65 = bitcast i8* %64 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %65
  %66 = getelementptr i8* %60, i64 16             ; <i8*> [#uses=1]
  %67 = bitcast i8* %66 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_main, i32** %67
  %68 = getelementptr i8* %60, i64 24             ; <i8*> [#uses=1]
  %69 = bitcast i8* %68 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %69
  %70 = bitcast i8* %60 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %70
  %71 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %63, %struct.slot_node** %71
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i, %54, %52, %object_set_delegate.exit.i
  %tmp = bitcast i8* %1 to i8**                   ; <i8**> [#uses=1]
  %72 = tail call fastcc i32 @__t_start(i32 %0, i8** %tmp, i8* %3) nounwind ; <i32> [#uses=1]
  ret i32 %72
}

define internal i8* @__closure(i8* nocapture, i8* nocapture, i8* nocapture) nounwind {
entry:
  %3 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=9]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %entry
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %entry
  %7 = getelementptr i8* %3, i64 12               ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i32*                     ; <i32*> [#uses=1]
  store i32 258, i32* %8
  %9 = getelementptr i8* %3, i64 8                ; <i8*> [#uses=1]
  %10 = bitcast i8* %9 to i32*                    ; <i32*> [#uses=2]
  store i32 364969966, i32* %10
  %11 = getelementptr i8* %3, i64 24              ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  store i8* null, i8** %12
  %13 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %14 = load i32* %10                             ; <i32> [#uses=1]
  %15 = icmp eq i32 %14, 364969966                ; <i1> [#uses=1]
  br i1 %15, label %int_object.exit, label %.thread.i

.thread.i:                                        ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %6
  %16 = getelementptr i8* %3, i64 16              ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  store i8* %13, i8** %17
  %18 = tail call fastcc i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %19 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=7]
  %20 = icmp eq i8* %19, null                     ; <i1> [#uses=1]
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %int_object.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %int_object.exit
  %23 = getelementptr i8* %19, i64 12             ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %24
  %25 = getelementptr i8* %19, i64 8              ; <i8*> [#uses=1]
  %26 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %26
  %27 = getelementptr i8* %19, i64 24             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* inttoptr (i64 10000000 to i8*), i8** %28
  %29 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %30 = load i32* %26                             ; <i32> [#uses=1]
  %31 = icmp eq i32 %30, 364969966                ; <i1> [#uses=1]
  br i1 %31, label %int_object.exit2, label %.thread.i1

.thread.i1:                                       ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit2:                                 ; preds = %22
  %32 = getelementptr i8* %19, i64 16             ; <i8*> [#uses=1]
  %33 = bitcast i8* %32 to i8**                   ; <i8**> [#uses=1]
  store i8* %29, i8** %33
  %34 = getelementptr i8* %18, i64 24             ; <i8*> [#uses=1]
  %35 = bitcast i8* %34 to i8**                   ; <i8**> [#uses=1]
  %36 = load i8** %35                             ; <i8*> [#uses=3]
  %37 = icmp eq i8* %36, null                     ; <i1> [#uses=1]
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %int_object.exit2
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:39                                      ; preds = %int_object.exit2
  %40 = bitcast i8* %36 to i32*                   ; <i32*> [#uses=1]
  %41 = load i32* %40                             ; <i32> [#uses=1]
  %42 = icmp sgt i32 %41, 0                       ; <i1> [#uses=1]
  br i1 %42, label %array_set_elementC.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %39
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %39
  %43 = getelementptr i8* %36, i64 8              ; <i8*> [#uses=1]
  %44 = bitcast i8* %43 to i8**                   ; <i8**> [#uses=1]
  store i8* %19, i8** %44
  %calltmp5 = tail call fastcc i8* @object_exec(i8* %3, i32* @__sym_lt, i8* %18) nounwind ; <i8*> [#uses=2]
  %45 = getelementptr i8* %calltmp5, i64 12       ; <i8*> [#uses=1]
  %46 = bitcast i8* %45 to i32*                   ; <i32*> [#uses=1]
  %47 = load i32* %46                             ; <i32> [#uses=1]
  %48 = and i32 %47, 255                          ; <i32> [#uses=1]
  %49 = icmp eq i32 %48, 1                        ; <i1> [#uses=1]
  br i1 %49, label %loopcont, label %bool_get_value.exit

bool_get_value.exit:                              ; preds = %array_set_elementC.exit
  %50 = getelementptr i8* %calltmp5, i64 24       ; <i8*> [#uses=1]
  %51 = bitcast i8* %50 to i8**                   ; <i8**> [#uses=1]
  %52 = load i8** %51                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %52 to i64                ; <i64> [#uses=1]
  %53 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=1]
  %phitmp10 = icmp eq i32 %53, 0                  ; <i1> [#uses=1]
  br i1 %phitmp10, label %loopcont, label %loop

loop:                                             ; preds = %bool_get_value.exit5, %bool_get_value.exit
  %x.01 = phi i8* [ %calltmp2, %bool_get_value.exit5 ], [ %3, %bool_get_value.exit ] ; <i8*> [#uses=1]
  %54 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %55 = icmp eq i8* %54, null                     ; <i1> [#uses=1]
  br i1 %55, label %56, label %57

; <label>:56                                      ; preds = %loop
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:57                                      ; preds = %loop
  %58 = getelementptr i8* %54, i64 12             ; <i8*> [#uses=1]
  %59 = bitcast i8* %58 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %59
  %60 = getelementptr i8* %54, i64 8              ; <i8*> [#uses=1]
  %61 = bitcast i8* %60 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %61
  %62 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %63 = load i32* %61                             ; <i32> [#uses=1]
  %64 = icmp eq i32 %63, 364969966                ; <i1> [#uses=1]
  br i1 %64, label %closure_object_place.exit, label %.thread.i3

.thread.i3:                                       ; preds = %57
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object_place.exit:                        ; preds = %57
  %65 = getelementptr i8* %54, i64 16             ; <i8*> [#uses=1]
  %66 = bitcast i8* %65 to i8**                   ; <i8**> [#uses=1]
  store i8* %62, i8** %66
  %67 = getelementptr i8* %54, i64 24             ; <i8*> [#uses=1]
  %68 = bitcast i8* %67 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @__closure1 to i8*), i8** %68
  %69 = tail call fastcc i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %70 = getelementptr i8* %69, i64 24             ; <i8*> [#uses=1]
  %71 = bitcast i8* %70 to i8**                   ; <i8**> [#uses=1]
  %72 = load i8** %71                             ; <i8*> [#uses=3]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %closure_object_place.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:75                                      ; preds = %closure_object_place.exit
  %76 = bitcast i8* %72 to i32*                   ; <i32*> [#uses=1]
  %77 = load i32* %76                             ; <i32> [#uses=1]
  %78 = icmp sgt i32 %77, 0                       ; <i1> [#uses=1]
  br i1 %78, label %array_set_elementC.exit9, label %._crit_edge.i8

._crit_edge.i8:                                   ; preds = %75
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit9:                         ; preds = %75
  %79 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %80 = bitcast i8* %79 to i8**                   ; <i8**> [#uses=1]
  store i8* %x.01, i8** %80
  %calltmp2 = tail call fastcc i8* @object_exec(i8* %54, i32* @__sym_apply, i8* %69) nounwind ; <i8*> [#uses=4]
  %81 = tail call fastcc i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %82 = getelementptr i8* %81, i64 24             ; <i8*> [#uses=1]
  %83 = bitcast i8* %82 to i8**                   ; <i8**> [#uses=1]
  %84 = load i8** %83                             ; <i8*> [#uses=3]
  %85 = icmp eq i8* %84, null                     ; <i1> [#uses=1]
  br i1 %85, label %86, label %87

; <label>:86                                      ; preds = %array_set_elementC.exit9
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:87                                      ; preds = %array_set_elementC.exit9
  %88 = bitcast i8* %84 to i32*                   ; <i32*> [#uses=1]
  %89 = load i32* %88                             ; <i32> [#uses=1]
  %90 = icmp sgt i32 %89, 0                       ; <i1> [#uses=1]
  br i1 %90, label %array_set_elementC.exit7, label %._crit_edge.i6

._crit_edge.i6:                                   ; preds = %87
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit7:                         ; preds = %87
  %91 = getelementptr i8* %84, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i8**                   ; <i8**> [#uses=1]
  store i8* %19, i8** %92
  %calltmp = tail call fastcc i8* @object_exec(i8* %calltmp2, i32* @__sym_lt, i8* %81) nounwind ; <i8*> [#uses=2]
  %93 = getelementptr i8* %calltmp, i64 12        ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i32*                   ; <i32*> [#uses=1]
  %95 = load i32* %94                             ; <i32> [#uses=1]
  %96 = and i32 %95, 255                          ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 1                        ; <i1> [#uses=1]
  br i1 %97, label %loopcont, label %bool_get_value.exit5

bool_get_value.exit5:                             ; preds = %array_set_elementC.exit7
  %98 = getelementptr i8* %calltmp, i64 24        ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  %100 = load i8** %99                            ; <i8*> [#uses=1]
  %tmp.i4 = ptrtoint i8* %100 to i64              ; <i64> [#uses=1]
  %101 = trunc i64 %tmp.i4 to i32                 ; <i32> [#uses=1]
  %phitmp = icmp eq i32 %101, 0                   ; <i1> [#uses=1]
  br i1 %phitmp, label %loopcont, label %loop

loopcont:                                         ; preds = %bool_get_value.exit5, %array_set_elementC.exit7, %bool_get_value.exit, %array_set_elementC.exit
  %x.0.lcssa = phi i8* [ %3, %bool_get_value.exit ], [ %3, %array_set_elementC.exit ], [ %calltmp2, %array_set_elementC.exit7 ], [ %calltmp2, %bool_get_value.exit5 ] ; <i8*> [#uses=1]
  %102 = tail call fastcc i8* @array_object(i32 0) nounwind ; <i8*> [#uses=1]
  %calltmp3 = tail call fastcc i8* @object_exec(i8* %x.0.lcssa, i32* @__sym_to_s, i8* %102) nounwind ; <i8*> [#uses=1]
  %103 = tail call fastcc i8* @array_object(i32 0) nounwind ; <i8*> [#uses=1]
  %calltmp4 = tail call fastcc i8* @object_exec(i8* %calltmp3, i32* @__sym_print, i8* %103) nounwind ; <i8*> [#uses=1]
  ret i8* %calltmp4
}

define internal i8* @__closure1(i8* nocapture, i8* nocapture, i8* nocapture) nounwind {
entry:
  %3 = getelementptr i8* %2, i64 24               ; <i8*> [#uses=1]
  %4 = bitcast i8* %3 to i8**                     ; <i8**> [#uses=1]
  %5 = load i8** %4                               ; <i8*> [#uses=3]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %8

; <label>:7                                       ; preds = %entry
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:8                                       ; preds = %entry
  %9 = bitcast i8* %5 to i32*                     ; <i32*> [#uses=1]
  %10 = load i32* %9                              ; <i32> [#uses=1]
  %11 = icmp sgt i32 %10, 0                       ; <i1> [#uses=1]
  br i1 %11, label %12, label %._crit_edge.i

; <label>:12                                      ; preds = %8
  %13 = getelementptr i8* %5, i64 8               ; <i8*> [#uses=1]
  %14 = bitcast i8* %13 to i8**                   ; <i8**> [#uses=1]
  %15 = load i8** %14                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

._crit_edge.i:                                    ; preds = %8
  %16 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %._crit_edge.i, %12
  %17 = phi i8* [ %16, %._crit_edge.i ], [ %15, %12 ] ; <i8*> [#uses=1]
  %18 = tail call fastcc i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %19 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %20 = icmp eq i8* %19, null                     ; <i1> [#uses=1]
  br i1 %20, label %21, label %22

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %19, i64 12             ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %24
  %25 = getelementptr i8* %19, i64 8              ; <i8*> [#uses=1]
  %26 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %26
  %27 = getelementptr i8* %19, i64 24             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* inttoptr (i64 1 to i8*), i8** %28
  %29 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %30 = load i32* %26                             ; <i32> [#uses=1]
  %31 = icmp eq i32 %30, 364969966                ; <i1> [#uses=1]
  br i1 %31, label %int_object.exit, label %.thread.i

.thread.i:                                        ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %22
  %32 = getelementptr i8* %19, i64 16             ; <i8*> [#uses=1]
  %33 = bitcast i8* %32 to i8**                   ; <i8**> [#uses=1]
  store i8* %29, i8** %33
  %34 = getelementptr i8* %18, i64 24             ; <i8*> [#uses=1]
  %35 = bitcast i8* %34 to i8**                   ; <i8**> [#uses=1]
  %36 = load i8** %35                             ; <i8*> [#uses=3]
  %37 = icmp eq i8* %36, null                     ; <i1> [#uses=1]
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %int_object.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:39                                      ; preds = %int_object.exit
  %40 = bitcast i8* %36 to i32*                   ; <i32*> [#uses=1]
  %41 = load i32* %40                             ; <i32> [#uses=1]
  %42 = icmp sgt i32 %41, 0                       ; <i1> [#uses=1]
  br i1 %42, label %array_set_elementC.exit, label %._crit_edge.i1

._crit_edge.i1:                                   ; preds = %39
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %39
  %43 = getelementptr i8* %36, i64 8              ; <i8*> [#uses=1]
  %44 = bitcast i8* %43 to i8**                   ; <i8**> [#uses=1]
  store i8* %19, i8** %44
  %calltmp = tail call fastcc i8* @object_exec(i8* %17, i32* @__sym_add, i8* %18) nounwind ; <i8*> [#uses=1]
  ret i8* %calltmp
}

declare void @__assert_rtn(i8*, i8*, i32, i8*) noreturn

define internal fastcc i8* @object_get_slot(i8* %object, i32* %name) nounwind {
; <label>:0
  %1 = ptrtoint i32* %name to i64                 ; <i64> [#uses=2]
  %2 = sub i64 ptrtoint (i32* @__sym_delegate to i64), %1 ; <i64> [#uses=1]
  %3 = icmp ult i64 %2, 4                         ; <i1> [#uses=1]
  br label %tailrecurse

tailrecurse:                                      ; preds = %closure_get_fptrC.exit._crit_edge, %56, %0
  %object.tr = phi i8* [ %object, %0 ], [ %51, %56 ], [ %storemerge1, %closure_get_fptrC.exit._crit_edge ] ; <i8*> [#uses=8]
  br i1 %3, label %4, label %14

; <label>:4                                       ; preds = %tailrecurse
  %5 = icmp eq i8* %object.tr, null               ; <i1> [#uses=1]
  br i1 %5, label %.thread, label %6

; <label>:6                                       ; preds = %4
  %7 = getelementptr i8* %object.tr, i64 8        ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i32*                     ; <i32*> [#uses=1]
  %9 = load i32* %8                               ; <i32> [#uses=1]
  %10 = icmp eq i32 %9, 364969966                 ; <i1> [#uses=1]
  br i1 %10, label %object_get_delegate.exit, label %.thread

.thread:                                          ; preds = %6, %4
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_get_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 201, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_get_delegate.exit:                         ; preds = %6
  %11 = getelementptr i8* %object.tr, i64 16      ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  ret i8* %13

; <label>:14                                      ; preds = %tailrecurse
  %15 = bitcast i8* %object.tr to %struct.slot_node** ; <%struct.slot_node**> [#uses=1]
  br label %16

; <label>:16                                      ; preds = %40, %14
  %storemerge.in = phi %struct.slot_node** [ %41, %40 ], [ %15, %14 ] ; <%struct.slot_node**> [#uses=1]
  %storemerge = load %struct.slot_node** %storemerge.in ; <%struct.slot_node*> [#uses=6]
  %17 = icmp eq %struct.slot_node* %storemerge, null ; <i1> [#uses=1]
  br i1 %17, label %42, label %18

; <label>:18                                      ; preds = %16
  %19 = getelementptr %struct.slot_node* %storemerge, i64 0, i32 6 ; <i32**> [#uses=1]
  %20 = load i32** %19                            ; <i32*> [#uses=1]
  %21 = ptrtoint i32* %20 to i64                  ; <i64> [#uses=1]
  %22 = sub i64 %1, %21                           ; <i64> [#uses=1]
  %23 = icmp ult i64 %22, 4                       ; <i1> [#uses=1]
  br i1 %23, label %24, label %40

; <label>:24                                      ; preds = %18
  %25 = getelementptr %struct.slot_node* %storemerge, i64 0, i32 1 ; <i32*> [#uses=1]
  %26 = load i32* %25                             ; <i32> [#uses=1]
  %27 = and i32 %26, 4                            ; <i32> [#uses=1]
  %28 = icmp eq i32 %27, 0                        ; <i1> [#uses=1]
  br i1 %28, label %29, label %._crit_edge

; <label>:29                                      ; preds = %24
  %30 = getelementptr %struct.slot_node* %storemerge, i64 0, i32 7 ; <i8**> [#uses=1]
  %31 = load i8** %30                             ; <i8*> [#uses=2]
  %32 = icmp eq i8* %31, null                     ; <i1> [#uses=1]
  br i1 %32, label %._crit_edge2, label %33

; <label>:33                                      ; preds = %29
  %34 = getelementptr i8* %31, i64 8              ; <i8*> [#uses=1]
  %35 = bitcast i8* %34 to i32*                   ; <i32*> [#uses=1]
  %36 = load i32* %35                             ; <i32> [#uses=1]
  %37 = icmp eq i32 %36, 364969966                ; <i1> [#uses=1]
  br i1 %37, label %._crit_edge, label %._crit_edge2

._crit_edge2:                                     ; preds = %33, %29
  tail call void @abort() noreturn nounwind
  unreachable

._crit_edge:                                      ; preds = %33, %24
  %38 = getelementptr %struct.slot_node* %storemerge, i64 0, i32 7 ; <i8**> [#uses=1]
  %39 = load i8** %38                             ; <i8*> [#uses=1]
  ret i8* %39

; <label>:40                                      ; preds = %18
  %41 = getelementptr %struct.slot_node* %storemerge, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  br label %16

; <label>:42                                      ; preds = %16
  %43 = icmp eq i8* %object.tr, null              ; <i1> [#uses=1]
  br i1 %43, label %.thread4, label %44

; <label>:44                                      ; preds = %42
  %45 = getelementptr i8* %object.tr, i64 8       ; <i8*> [#uses=1]
  %46 = bitcast i8* %45 to i32*                   ; <i32*> [#uses=1]
  %47 = load i32* %46                             ; <i32> [#uses=1]
  %48 = icmp eq i32 %47, 364969966                ; <i1> [#uses=1]
  br i1 %48, label %object_get_delegate.exit3, label %.thread4

.thread4:                                         ; preds = %44, %42
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_get_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 201, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_get_delegate.exit3:                        ; preds = %44
  %49 = getelementptr i8* %object.tr, i64 16      ; <i8*> [#uses=1]
  %50 = bitcast i8* %49 to i8**                   ; <i8**> [#uses=1]
  %51 = load i8** %50                             ; <i8*> [#uses=7]
  %52 = icmp eq i8* %51, null                     ; <i1> [#uses=1]
  br i1 %52, label %object_get_delegate.exit3._crit_edge, label %53

; <label>:53                                      ; preds = %object_get_delegate.exit3
  %54 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  %55 = icmp eq i8* %51, %54                      ; <i1> [#uses=1]
  br i1 %55, label %object_get_delegate.exit3._crit_edge, label %56

; <label>:56                                      ; preds = %53
  %57 = getelementptr i8* %51, i64 12             ; <i8*> [#uses=1]
  %58 = bitcast i8* %57 to i32*                   ; <i32*> [#uses=1]
  %59 = load i32* %58                             ; <i32> [#uses=2]
  %60 = and i32 %59, 255                          ; <i32> [#uses=1]
  %61 = icmp eq i32 %60, 4                        ; <i1> [#uses=1]
  br i1 %61, label %62, label %tailrecurse

; <label>:62                                      ; preds = %56
  %63 = and i32 %59, 256                          ; <i32> [#uses=1]
  %64 = icmp eq i32 %63, 0                        ; <i1> [#uses=1]
  br i1 %64, label %65, label %closure_get_fptrC.exit

; <label>:65                                      ; preds = %62
  tail call void @__assert_rtn(i8* getelementptr inbounds ([18 x i8]* @__func__.closure_get_fptrC, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @"\01LC29", i64 0, i64 0), i32 73, i8* getelementptr inbounds ([31 x i8]* @"\01LC231", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_get_fptrC.exit:                           ; preds = %62
  %66 = getelementptr i8* %51, i64 24             ; <i8*> [#uses=1]
  %67 = bitcast i8* %66 to i8**                   ; <i8**> [#uses=1]
  %68 = load i8** %67                             ; <i8*> [#uses=2]
  %69 = icmp eq i8* %68, null                     ; <i1> [#uses=1]
  br i1 %69, label %closure_get_fptrC.exit._crit_edge, label %70

; <label>:70                                      ; preds = %closure_get_fptrC.exit
  %71 = bitcast i8* %68 to i8* (i8*, i8*, i8*)*   ; <i8* (i8*, i8*, i8*)*> [#uses=1]
  %72 = tail call fastcc i8* @array_object(i32 0) ; <i8*> [#uses=1]
  %73 = tail call i8* %71(i8* %object.tr, i8* %51, i8* %72) nounwind ; <i8*> [#uses=1]
  br label %closure_get_fptrC.exit._crit_edge

closure_get_fptrC.exit._crit_edge:                ; preds = %70, %closure_get_fptrC.exit
  %storemerge1 = phi i8* [ %73, %70 ], [ %51, %closure_get_fptrC.exit ] ; <i8*> [#uses=2]
  %74 = icmp eq i8* %storemerge1, null            ; <i1> [#uses=1]
  br i1 %74, label %75, label %tailrecurse

; <label>:75                                      ; preds = %closure_get_fptrC.exit._crit_edge
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.object_get_slot, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 130, i8* getelementptr inbounds ([7 x i8]* @"\01LC5", i64 0, i64 0)) noreturn nounwind
  unreachable

object_get_delegate.exit3._crit_edge:             ; preds = %53, %object_get_delegate.exit3
  %76 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  ret i8* %76
}

declare void @abort() noreturn

define internal fastcc void @object_set_slot(i8* %object, i32* %name, i8* %value, i32 %flags) nounwind {
  %1 = ptrtoint i32* %name to i64                 ; <i64> [#uses=2]
  %2 = sub i64 ptrtoint (i32* @__sym_delegate to i64), %1 ; <i64> [#uses=1]
  %3 = icmp ult i64 %2, 4                         ; <i1> [#uses=1]
  br i1 %3, label %4, label %13

; <label>:4                                       ; preds = %0
  %5 = icmp eq i8* %object, null                  ; <i1> [#uses=1]
  br i1 %5, label %.thread, label %6

; <label>:6                                       ; preds = %4
  %7 = getelementptr i8* %object, i64 8           ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i32*                     ; <i32*> [#uses=1]
  %9 = load i32* %8                               ; <i32> [#uses=1]
  %10 = icmp eq i32 %9, 364969966                 ; <i1> [#uses=1]
  br i1 %10, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %6, %4
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %6
  %11 = getelementptr i8* %object, i64 16         ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  store i8* %value, i8** %12
  ret void

; <label>:13                                      ; preds = %0
  %14 = bitcast i8* %object to %struct.slot_node** ; <%struct.slot_node**> [#uses=1]
  %15 = load %struct.slot_node** %14              ; <%struct.slot_node*> [#uses=2]
  %16 = bitcast i8* %object to %struct.slot_node* ; <%struct.slot_node*> [#uses=1]
  br label %17

; <label>:17                                      ; preds = %35, %13
  %node.0 = phi %struct.slot_node* [ %15, %13 ], [ %37, %35 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0 = phi %struct.slot_node* [ %16, %13 ], [ %node.0, %35 ] ; <%struct.slot_node*> [#uses=1]
  %18 = phi %struct.slot_node* [ %37, %35 ], [ %15, %13 ] ; <%struct.slot_node*> [#uses=1]
  %19 = icmp eq %struct.slot_node* %18, null      ; <i1> [#uses=1]
  br i1 %19, label %38, label %20

; <label>:20                                      ; preds = %17
  %21 = getelementptr %struct.slot_node* %node.0, i64 0, i32 6 ; <i32**> [#uses=1]
  %22 = load i32** %21                            ; <i32*> [#uses=1]
  %23 = ptrtoint i32* %22 to i64                  ; <i64> [#uses=1]
  %24 = sub i64 %1, %23                           ; <i64> [#uses=1]
  %25 = icmp ult i64 %24, 4                       ; <i1> [#uses=1]
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %20
  %27 = getelementptr %struct.slot_node* %node.0, i64 0, i32 1 ; <i32*> [#uses=1]
  %28 = load i32* %27                             ; <i32> [#uses=1]
  %29 = and i32 %28, 2                            ; <i32> [#uses=1]
  %30 = icmp eq i32 %29, 0                        ; <i1> [#uses=1]
  br i1 %30, label %33, label %31

; <label>:31                                      ; preds = %26
  %32 = getelementptr %struct.slot_node* %node.0, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %value, i8** %32
  ret void

; <label>:33                                      ; preds = %26
  %34 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* %name) nounwind ; <i32> [#uses=0]
  ret void

; <label>:35                                      ; preds = %20
  %36 = getelementptr %struct.slot_node* %node.0, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %37 = load %struct.slot_node** %36              ; <%struct.slot_node*> [#uses=2]
  br label %17

; <label>:38                                      ; preds = %17
  %39 = and i32 %flags, 4096                      ; <i32> [#uses=1]
  %40 = icmp eq i32 %39, 0                        ; <i1> [#uses=1]
  br i1 %40, label %42, label %41

; <label>:41                                      ; preds = %38
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.object_set_slot, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 175, i8* getelementptr inbounds ([67 x i8]* @"\01LC8", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:42                                      ; preds = %38
  %43 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %44 = icmp eq i8* %43, null                     ; <i1> [#uses=1]
  br i1 %44, label %45, label %mem_alloc.exit

; <label>:45                                      ; preds = %42
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit:                                   ; preds = %42
  %46 = bitcast i8* %43 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %47 = getelementptr i8* %43, i64 8              ; <i8*> [#uses=1]
  %48 = bitcast i8* %47 to i32*                   ; <i32*> [#uses=1]
  store i32 %flags, i32* %48
  %49 = getelementptr i8* %43, i64 16             ; <i8*> [#uses=1]
  %50 = bitcast i8* %49 to i32**                  ; <i32**> [#uses=1]
  store i32* %name, i32** %50
  %51 = getelementptr i8* %43, i64 24             ; <i8*> [#uses=1]
  %52 = bitcast i8* %51 to i8**                   ; <i8**> [#uses=1]
  store i8* %value, i8** %52
  %53 = bitcast i8* %43 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %53
  %54 = getelementptr %struct.slot_node* %last_node.0, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %46, %struct.slot_node** %54
  ret void
}

declare i32 @printf(i8* nocapture, ...) nounwind

define internal fastcc i8* @object_exec(i8* %object, i32* %name, i8* %args) nounwind {
  %1 = icmp eq i8* %object, null                  ; <i1> [#uses=1]
  br i1 %1, label %.thread, label %2

; <label>:2                                       ; preds = %0
  %3 = getelementptr i8* %object, i64 8           ; <i8*> [#uses=1]
  %4 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %5 = load i32* %4                               ; <i32> [#uses=1]
  %6 = icmp eq i32 %5, 364969966                  ; <i1> [#uses=1]
  br i1 %6, label %7, label %.thread

.thread:                                          ; preds = %2, %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.object_exec, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 231, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %2
  %8 = ptrtoint i32* %name to i64                 ; <i64> [#uses=1]
  %9 = sub i64 ptrtoint (i32* @__sym_apply to i64), %8 ; <i64> [#uses=1]
  %10 = icmp ult i64 %9, 4                        ; <i1> [#uses=1]
  br i1 %10, label %11, label %19

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %object, i64 12         ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  %14 = load i32* %13                             ; <i32> [#uses=1]
  %15 = and i32 %14, 255                          ; <i32> [#uses=1]
  %16 = icmp eq i32 %15, 4                        ; <i1> [#uses=1]
  br i1 %16, label %._crit_edge, label %17

; <label>:17                                      ; preds = %11
  %18 = tail call fastcc i8* @object_get_slot(i8* %object, i32* %name) ; <i8*> [#uses=1]
  br label %._crit_edge

; <label>:19                                      ; preds = %7
  %20 = tail call fastcc i8* @object_get_slot(i8* %object, i32* %name) ; <i8*> [#uses=1]
  br label %._crit_edge

._crit_edge:                                      ; preds = %19, %17, %11
  %storemerge1 = phi i8* [ %20, %19 ], [ %18, %17 ], [ %object, %11 ] ; <i8*> [#uses=5]
  %21 = icmp eq i8* %storemerge1, null            ; <i1> [#uses=1]
  br i1 %21, label %.thread3, label %22

; <label>:22                                      ; preds = %._crit_edge
  %23 = getelementptr i8* %storemerge1, i64 8     ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i32*                   ; <i32*> [#uses=1]
  %25 = load i32* %24                             ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 364969966                ; <i1> [#uses=1]
  br i1 %26, label %27, label %.thread3

.thread3:                                         ; preds = %22, %._crit_edge
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.object_exec, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 248, i8* getelementptr inbounds ([25 x i8]* @"\01LC11", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:27                                      ; preds = %22
  %28 = getelementptr i8* %storemerge1, i64 12    ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=1]
  %30 = load i32* %29                             ; <i32> [#uses=2]
  %31 = and i32 %30, 255                          ; <i32> [#uses=1]
  %32 = icmp eq i32 %31, 4                        ; <i1> [#uses=1]
  br i1 %32, label %34, label %33

; <label>:33                                      ; preds = %27
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.object_exec, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 249, i8* getelementptr inbounds ([39 x i8]* @"\01LC12", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:34                                      ; preds = %27
  %35 = and i32 %30, 256                          ; <i32> [#uses=1]
  %36 = icmp eq i32 %35, 0                        ; <i1> [#uses=1]
  br i1 %36, label %37, label %closure_get_fptrC.exit

; <label>:37                                      ; preds = %34
  tail call void @__assert_rtn(i8* getelementptr inbounds ([18 x i8]* @__func__.closure_get_fptrC, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @"\01LC29", i64 0, i64 0), i32 73, i8* getelementptr inbounds ([31 x i8]* @"\01LC231", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_get_fptrC.exit:                           ; preds = %34
  %38 = getelementptr i8* %storemerge1, i64 24    ; <i8*> [#uses=1]
  %39 = bitcast i8* %38 to i8**                   ; <i8**> [#uses=1]
  %40 = load i8** %39                             ; <i8*> [#uses=2]
  %41 = load i8** @wrapped_null_object.cached_wrap ; <i8*> [#uses=2]
  %42 = icmp eq i8* %41, null                     ; <i1> [#uses=1]
  br i1 %42, label %43, label %wrapped_null_object.exit

; <label>:43                                      ; preds = %closure_get_fptrC.exit
  %44 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @wrapped_cache_m) nounwind ; <i32> [#uses=0]
  %45 = load i8** @wrapped_null_object.cached_wrap ; <i8*> [#uses=1]
  %46 = icmp eq i8* %45, null                     ; <i1> [#uses=1]
  br i1 %46, label %47, label %._crit_edge.i

; <label>:47                                      ; preds = %43
  %48 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %49 = icmp eq i8* %48, null                     ; <i1> [#uses=1]
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %47
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:51                                      ; preds = %47
  %52 = getelementptr i8* %48, i64 12             ; <i8*> [#uses=1]
  %53 = bitcast i8* %52 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %53
  %54 = getelementptr i8* %48, i64 8              ; <i8*> [#uses=1]
  %55 = bitcast i8* %54 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %55
  %56 = getelementptr i8* %48, i64 24             ; <i8*> [#uses=1]
  %57 = bitcast i8* %56 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_wrapped to i8*), i8** %57
  %58 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %59 = load i32* %55                             ; <i32> [#uses=1]
  %60 = icmp eq i32 %59, 364969966                ; <i1> [#uses=1]
  br i1 %60, label %closure_object.exit.i, label %.thread.i

.thread.i:                                        ; preds = %51
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit.i:                            ; preds = %51
  %61 = getelementptr i8* %48, i64 16             ; <i8*> [#uses=1]
  %62 = bitcast i8* %61 to i8**                   ; <i8**> [#uses=1]
  store i8* %58, i8** %62
  store i8* %48, i8** @wrapped_null_object.cached_wrap
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %closure_object.exit.i, %43
  %63 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @wrapped_cache_m) nounwind ; <i32> [#uses=0]
  %.pre.i = load i8** @wrapped_null_object.cached_wrap ; <i8*> [#uses=1]
  br label %wrapped_null_object.exit

wrapped_null_object.exit:                         ; preds = %._crit_edge.i, %closure_get_fptrC.exit
  %64 = phi i8* [ %.pre.i, %._crit_edge.i ], [ %41, %closure_get_fptrC.exit ] ; <i8*> [#uses=1]
  %65 = icmp eq i8* %40, %64                      ; <i1> [#uses=1]
  br i1 %65, label %66, label %67

; <label>:66                                      ; preds = %wrapped_null_object.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.object_exec, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 256, i8* getelementptr inbounds ([18 x i8]* @"\01LC13", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:67                                      ; preds = %wrapped_null_object.exit
  %68 = bitcast i8* %40 to i8* (i8*, i8*, i8*)*   ; <i8* (i8*, i8*, i8*)*> [#uses=1]
  %69 = tail call i8* %68(i8* %object, i8* %storemerge1, i8* %args) nounwind ; <i8*> [#uses=2]
  %70 = icmp eq i8* %69, null                     ; <i1> [#uses=1]
  br i1 %70, label %71, label %73

; <label>:71                                      ; preds = %67
  %72 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  ret i8* %72

; <label>:73                                      ; preds = %67
  ret i8* %69
}

declare i8* @__memcpy_chk(i8*, i8*, i64, i64)

define internal fastcc i8* @string_prototype() nounwind {
  %1 = load i8** @string_prototype.prototype      ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %589

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @string_prototype_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @string_prototype.prototype      ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 512, i32* %13
  %14 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  store i8* %8, i8** @string_prototype.prototype
  %16 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %17 = load i32* %15                             ; <i32> [#uses=1]
  %18 = icmp eq i32 %17, 364969966                ; <i1> [#uses=1]
  br i1 %18, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %11
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %11
  %19 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %20
  %21 = load i8** @string_prototype.prototype     ; <i8*> [#uses=5]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %object_set_delegate.exit
  %26 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %27
  %28 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %29
  %30 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_print to i8*), i8** %31
  %32 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %33 = load i32* %29                             ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 364969966                ; <i1> [#uses=1]
  br i1 %34, label %closure_object.exit, label %.thread41

.thread41:                                        ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %25
  %35 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %32, i8** %36
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_print to i64)), i64 4), label %37, label %46

; <label>:37                                      ; preds = %closure_object.exit
  %38 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %38, label %.thread.i14, label %39

; <label>:39                                      ; preds = %37
  %40 = getelementptr i8* %21, i64 8              ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 364969966                ; <i1> [#uses=1]
  br i1 %43, label %object_set_delegate.exit.i15, label %.thread.i14

.thread.i14:                                      ; preds = %39, %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i15:                     ; preds = %39
  %44 = getelementptr i8* %21, i64 16             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %45
  br label %object_set_slot.exit19

; <label>:46                                      ; preds = %closure_object.exit
  %47 = bitcast i8* %21 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %48 = load %struct.slot_node** %47              ; <%struct.slot_node*> [#uses=2]
  %49 = bitcast i8* %21 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %50

; <label>:50                                      ; preds = %68, %46
  %node.0.i16 = phi %struct.slot_node* [ %48, %46 ], [ %70, %68 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i17 = phi %struct.slot_node* [ %49, %46 ], [ %node.0.i16, %68 ] ; <%struct.slot_node*> [#uses=1]
  %51 = phi %struct.slot_node* [ %70, %68 ], [ %48, %46 ] ; <%struct.slot_node*> [#uses=1]
  %52 = icmp eq %struct.slot_node* %51, null      ; <i1> [#uses=1]
  br i1 %52, label %71, label %53

; <label>:53                                      ; preds = %50
  %54 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 6 ; <i32**> [#uses=1]
  %55 = load i32** %54                            ; <i32*> [#uses=1]
  %56 = ptrtoint i32* %55 to i64                  ; <i64> [#uses=1]
  %57 = sub i64 ptrtoint (i32* @__sym_print to i64), %56 ; <i64> [#uses=1]
  %58 = icmp ult i64 %57, 4                       ; <i1> [#uses=1]
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %53
  %60 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 1 ; <i32*> [#uses=1]
  %61 = load i32* %60                             ; <i32> [#uses=1]
  %62 = and i32 %61, 2                            ; <i32> [#uses=1]
  %63 = icmp eq i32 %62, 0                        ; <i1> [#uses=1]
  br i1 %63, label %66, label %64

; <label>:64                                      ; preds = %59
  %65 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %22, i8** %65
  br label %object_set_slot.exit19

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_print) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit19

; <label>:68                                      ; preds = %53
  %69 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %70 = load %struct.slot_node** %69              ; <%struct.slot_node*> [#uses=2]
  br label %50

; <label>:71                                      ; preds = %50
  %72 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %mem_alloc.exit.i18

; <label>:74                                      ; preds = %71
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i18:                               ; preds = %71
  %75 = bitcast i8* %72 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %76 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %77
  %78 = getelementptr i8* %72, i64 16             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_print, i32** %79
  %80 = getelementptr i8* %72, i64 24             ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %81
  %82 = bitcast i8* %72 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %82
  %83 = getelementptr %struct.slot_node* %last_node.0.i17, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %75, %struct.slot_node** %83
  br label %object_set_slot.exit19

object_set_slot.exit19:                           ; preds = %mem_alloc.exit.i18, %66, %64, %object_set_delegate.exit.i15
  %84 = load i8** @string_prototype.prototype     ; <i8*> [#uses=5]
  %85 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %object_set_slot.exit19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %object_set_slot.exit19
  %89 = getelementptr i8* %85, i64 12             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %90
  %91 = getelementptr i8* %85, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %92
  %93 = getelementptr i8* %85, i64 24             ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_puts to i8*), i8** %94
  %95 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %96 = load i32* %92                             ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 364969966                ; <i1> [#uses=1]
  br i1 %97, label %closure_object.exit10, label %.thread42

.thread42:                                        ; preds = %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %88
  %98 = getelementptr i8* %85, i64 16             ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  store i8* %95, i8** %99
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_puts to i64)), i64 4), label %100, label %109

; <label>:100                                     ; preds = %closure_object.exit10
  %101 = icmp eq i8* %84, null                    ; <i1> [#uses=1]
  br i1 %101, label %.thread.i41, label %102

; <label>:102                                     ; preds = %100
  %103 = getelementptr i8* %84, i64 8             ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i32*                 ; <i32*> [#uses=1]
  %105 = load i32* %104                           ; <i32> [#uses=1]
  %106 = icmp eq i32 %105, 364969966              ; <i1> [#uses=1]
  br i1 %106, label %object_set_delegate.exit.i42, label %.thread.i41

.thread.i41:                                      ; preds = %102, %100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i42:                     ; preds = %102
  %107 = getelementptr i8* %84, i64 16            ; <i8*> [#uses=1]
  %108 = bitcast i8* %107 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %108
  br label %object_set_slot.exit46

; <label>:109                                     ; preds = %closure_object.exit10
  %110 = bitcast i8* %84 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %111 = load %struct.slot_node** %110            ; <%struct.slot_node*> [#uses=2]
  %112 = bitcast i8* %84 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %113

; <label>:113                                     ; preds = %131, %109
  %node.0.i43 = phi %struct.slot_node* [ %111, %109 ], [ %133, %131 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i44 = phi %struct.slot_node* [ %112, %109 ], [ %node.0.i43, %131 ] ; <%struct.slot_node*> [#uses=1]
  %114 = phi %struct.slot_node* [ %133, %131 ], [ %111, %109 ] ; <%struct.slot_node*> [#uses=1]
  %115 = icmp eq %struct.slot_node* %114, null    ; <i1> [#uses=1]
  br i1 %115, label %134, label %116

; <label>:116                                     ; preds = %113
  %117 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 6 ; <i32**> [#uses=1]
  %118 = load i32** %117                          ; <i32*> [#uses=1]
  %119 = ptrtoint i32* %118 to i64                ; <i64> [#uses=1]
  %120 = sub i64 ptrtoint (i32* @__sym_puts to i64), %119 ; <i64> [#uses=1]
  %121 = icmp ult i64 %120, 4                     ; <i1> [#uses=1]
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %116
  %123 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 1 ; <i32*> [#uses=1]
  %124 = load i32* %123                           ; <i32> [#uses=1]
  %125 = and i32 %124, 2                          ; <i32> [#uses=1]
  %126 = icmp eq i32 %125, 0                      ; <i1> [#uses=1]
  br i1 %126, label %129, label %127

; <label>:127                                     ; preds = %122
  %128 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %85, i8** %128
  br label %object_set_slot.exit46

; <label>:129                                     ; preds = %122
  %130 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_puts) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit46

; <label>:131                                     ; preds = %116
  %132 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %133 = load %struct.slot_node** %132            ; <%struct.slot_node*> [#uses=2]
  br label %113

; <label>:134                                     ; preds = %113
  %135 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %136 = icmp eq i8* %135, null                   ; <i1> [#uses=1]
  br i1 %136, label %137, label %mem_alloc.exit.i45

; <label>:137                                     ; preds = %134
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i45:                               ; preds = %134
  %138 = bitcast i8* %135 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %139 = getelementptr i8* %135, i64 8            ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %140
  %141 = getelementptr i8* %135, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_puts, i32** %142
  %143 = getelementptr i8* %135, i64 24           ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %144
  %145 = bitcast i8* %135 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %145
  %146 = getelementptr %struct.slot_node* %last_node.0.i44, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %138, %struct.slot_node** %146
  br label %object_set_slot.exit46

object_set_slot.exit46:                           ; preds = %mem_alloc.exit.i45, %129, %127, %object_set_delegate.exit.i42
  %147 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %148 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %149 = icmp eq i8* %148, null                   ; <i1> [#uses=1]
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %object_set_slot.exit46
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %object_set_slot.exit46
  %152 = getelementptr i8* %148, i64 12           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %153
  %154 = getelementptr i8* %148, i64 8            ; <i8*> [#uses=1]
  %155 = bitcast i8* %154 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %155
  %156 = getelementptr i8* %148, i64 24           ; <i8*> [#uses=1]
  %157 = bitcast i8* %156 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_to_s to i8*), i8** %157
  %158 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %159 = load i32* %155                           ; <i32> [#uses=1]
  %160 = icmp eq i32 %159, 364969966              ; <i1> [#uses=1]
  br i1 %160, label %closure_object.exit20, label %.thread43

.thread43:                                        ; preds = %151
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %151
  %161 = getelementptr i8* %148, i64 16           ; <i8*> [#uses=1]
  %162 = bitcast i8* %161 to i8**                 ; <i8**> [#uses=1]
  store i8* %158, i8** %162
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %163, label %172

; <label>:163                                     ; preds = %closure_object.exit20
  %164 = icmp eq i8* %147, null                   ; <i1> [#uses=1]
  br i1 %164, label %.thread.i68, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr i8* %147, i64 8            ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i32*                 ; <i32*> [#uses=1]
  %168 = load i32* %167                           ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 364969966              ; <i1> [#uses=1]
  br i1 %169, label %object_set_delegate.exit.i69, label %.thread.i68

.thread.i68:                                      ; preds = %165, %163
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i69:                     ; preds = %165
  %170 = getelementptr i8* %147, i64 16           ; <i8*> [#uses=1]
  %171 = bitcast i8* %170 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %171
  br label %object_set_slot.exit73

; <label>:172                                     ; preds = %closure_object.exit20
  %173 = bitcast i8* %147 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %174 = load %struct.slot_node** %173            ; <%struct.slot_node*> [#uses=2]
  %175 = bitcast i8* %147 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %176

; <label>:176                                     ; preds = %194, %172
  %node.0.i70 = phi %struct.slot_node* [ %174, %172 ], [ %196, %194 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i71 = phi %struct.slot_node* [ %175, %172 ], [ %node.0.i70, %194 ] ; <%struct.slot_node*> [#uses=1]
  %177 = phi %struct.slot_node* [ %196, %194 ], [ %174, %172 ] ; <%struct.slot_node*> [#uses=1]
  %178 = icmp eq %struct.slot_node* %177, null    ; <i1> [#uses=1]
  br i1 %178, label %197, label %179

; <label>:179                                     ; preds = %176
  %180 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 6 ; <i32**> [#uses=1]
  %181 = load i32** %180                          ; <i32*> [#uses=1]
  %182 = ptrtoint i32* %181 to i64                ; <i64> [#uses=1]
  %183 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %182 ; <i64> [#uses=1]
  %184 = icmp ult i64 %183, 4                     ; <i1> [#uses=1]
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %179
  %186 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 1 ; <i32*> [#uses=1]
  %187 = load i32* %186                           ; <i32> [#uses=1]
  %188 = and i32 %187, 2                          ; <i32> [#uses=1]
  %189 = icmp eq i32 %188, 0                      ; <i1> [#uses=1]
  br i1 %189, label %192, label %190

; <label>:190                                     ; preds = %185
  %191 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %148, i8** %191
  br label %object_set_slot.exit73

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit73

; <label>:194                                     ; preds = %179
  %195 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %196 = load %struct.slot_node** %195            ; <%struct.slot_node*> [#uses=2]
  br label %176

; <label>:197                                     ; preds = %176
  %198 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %199 = icmp eq i8* %198, null                   ; <i1> [#uses=1]
  br i1 %199, label %200, label %mem_alloc.exit.i72

; <label>:200                                     ; preds = %197
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i72:                               ; preds = %197
  %201 = bitcast i8* %198 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %202 = getelementptr i8* %198, i64 8            ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %203
  %204 = getelementptr i8* %198, i64 16           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %205
  %206 = getelementptr i8* %198, i64 24           ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %207
  %208 = bitcast i8* %198 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %208
  %209 = getelementptr %struct.slot_node* %last_node.0.i71, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %201, %struct.slot_node** %209
  br label %object_set_slot.exit73

object_set_slot.exit73:                           ; preds = %mem_alloc.exit.i72, %192, %190, %object_set_delegate.exit.i69
  %210 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %211 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %212 = icmp eq i8* %211, null                   ; <i1> [#uses=1]
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %object_set_slot.exit73
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:214                                     ; preds = %object_set_slot.exit73
  %215 = getelementptr i8* %211, i64 12           ; <i8*> [#uses=1]
  %216 = bitcast i8* %215 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %216
  %217 = getelementptr i8* %211, i64 8            ; <i8*> [#uses=1]
  %218 = bitcast i8* %217 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %218
  %219 = getelementptr i8* %211, i64 24           ; <i8*> [#uses=1]
  %220 = bitcast i8* %219 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_clone to i8*), i8** %220
  %221 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %222 = load i32* %218                           ; <i32> [#uses=1]
  %223 = icmp eq i32 %222, 364969966              ; <i1> [#uses=1]
  br i1 %223, label %closure_object.exit30, label %.thread44

.thread44:                                        ; preds = %214
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit30:                            ; preds = %214
  %224 = getelementptr i8* %211, i64 16           ; <i8*> [#uses=1]
  %225 = bitcast i8* %224 to i8**                 ; <i8**> [#uses=1]
  store i8* %221, i8** %225
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %226, label %235

; <label>:226                                     ; preds = %closure_object.exit30
  %227 = icmp eq i8* %210, null                   ; <i1> [#uses=1]
  br i1 %227, label %.thread.i62, label %228

; <label>:228                                     ; preds = %226
  %229 = getelementptr i8* %210, i64 8            ; <i8*> [#uses=1]
  %230 = bitcast i8* %229 to i32*                 ; <i32*> [#uses=1]
  %231 = load i32* %230                           ; <i32> [#uses=1]
  %232 = icmp eq i32 %231, 364969966              ; <i1> [#uses=1]
  br i1 %232, label %object_set_delegate.exit.i63, label %.thread.i62

.thread.i62:                                      ; preds = %228, %226
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i63:                     ; preds = %228
  %233 = getelementptr i8* %210, i64 16           ; <i8*> [#uses=1]
  %234 = bitcast i8* %233 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %234
  br label %object_set_slot.exit67

; <label>:235                                     ; preds = %closure_object.exit30
  %236 = bitcast i8* %210 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %237 = load %struct.slot_node** %236            ; <%struct.slot_node*> [#uses=2]
  %238 = bitcast i8* %210 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %239

; <label>:239                                     ; preds = %257, %235
  %node.0.i64 = phi %struct.slot_node* [ %237, %235 ], [ %259, %257 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i65 = phi %struct.slot_node* [ %238, %235 ], [ %node.0.i64, %257 ] ; <%struct.slot_node*> [#uses=1]
  %240 = phi %struct.slot_node* [ %259, %257 ], [ %237, %235 ] ; <%struct.slot_node*> [#uses=1]
  %241 = icmp eq %struct.slot_node* %240, null    ; <i1> [#uses=1]
  br i1 %241, label %260, label %242

; <label>:242                                     ; preds = %239
  %243 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 6 ; <i32**> [#uses=1]
  %244 = load i32** %243                          ; <i32*> [#uses=1]
  %245 = ptrtoint i32* %244 to i64                ; <i64> [#uses=1]
  %246 = sub i64 ptrtoint (i32* @__sym_clone to i64), %245 ; <i64> [#uses=1]
  %247 = icmp ult i64 %246, 4                     ; <i1> [#uses=1]
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %242
  %249 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 1 ; <i32*> [#uses=1]
  %250 = load i32* %249                           ; <i32> [#uses=1]
  %251 = and i32 %250, 2                          ; <i32> [#uses=1]
  %252 = icmp eq i32 %251, 0                      ; <i1> [#uses=1]
  br i1 %252, label %255, label %253

; <label>:253                                     ; preds = %248
  %254 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %211, i8** %254
  br label %object_set_slot.exit67

; <label>:255                                     ; preds = %248
  %256 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit67

; <label>:257                                     ; preds = %242
  %258 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %259 = load %struct.slot_node** %258            ; <%struct.slot_node*> [#uses=2]
  br label %239

; <label>:260                                     ; preds = %239
  %261 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %262 = icmp eq i8* %261, null                   ; <i1> [#uses=1]
  br i1 %262, label %263, label %mem_alloc.exit.i66

; <label>:263                                     ; preds = %260
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i66:                               ; preds = %260
  %264 = bitcast i8* %261 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %265 = getelementptr i8* %261, i64 8            ; <i8*> [#uses=1]
  %266 = bitcast i8* %265 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %266
  %267 = getelementptr i8* %261, i64 16           ; <i8*> [#uses=1]
  %268 = bitcast i8* %267 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %268
  %269 = getelementptr i8* %261, i64 24           ; <i8*> [#uses=1]
  %270 = bitcast i8* %269 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %270
  %271 = bitcast i8* %261 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %271
  %272 = getelementptr %struct.slot_node* %last_node.0.i65, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %264, %struct.slot_node** %272
  br label %object_set_slot.exit67

object_set_slot.exit67:                           ; preds = %mem_alloc.exit.i66, %255, %253, %object_set_delegate.exit.i63
  %273 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %274 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %275 = icmp eq i8* %274, null                   ; <i1> [#uses=1]
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %object_set_slot.exit67
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:277                                     ; preds = %object_set_slot.exit67
  %278 = getelementptr i8* %274, i64 12           ; <i8*> [#uses=1]
  %279 = bitcast i8* %278 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %279
  %280 = getelementptr i8* %274, i64 8            ; <i8*> [#uses=1]
  %281 = bitcast i8* %280 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %281
  %282 = getelementptr i8* %274, i64 24           ; <i8*> [#uses=1]
  %283 = bitcast i8* %282 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_class to i8*), i8** %283
  %284 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %285 = load i32* %281                           ; <i32> [#uses=1]
  %286 = icmp eq i32 %285, 364969966              ; <i1> [#uses=1]
  br i1 %286, label %closure_object.exit40, label %.thread45

.thread45:                                        ; preds = %277
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit40:                            ; preds = %277
  %287 = getelementptr i8* %274, i64 16           ; <i8*> [#uses=1]
  %288 = bitcast i8* %287 to i8**                 ; <i8**> [#uses=1]
  store i8* %284, i8** %288
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %289, label %298

; <label>:289                                     ; preds = %closure_object.exit40
  %290 = icmp eq i8* %273, null                   ; <i1> [#uses=1]
  br i1 %290, label %.thread.i50, label %291

; <label>:291                                     ; preds = %289
  %292 = getelementptr i8* %273, i64 8            ; <i8*> [#uses=1]
  %293 = bitcast i8* %292 to i32*                 ; <i32*> [#uses=1]
  %294 = load i32* %293                           ; <i32> [#uses=1]
  %295 = icmp eq i32 %294, 364969966              ; <i1> [#uses=1]
  br i1 %295, label %object_set_delegate.exit.i51, label %.thread.i50

.thread.i50:                                      ; preds = %291, %289
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i51:                     ; preds = %291
  %296 = getelementptr i8* %273, i64 16           ; <i8*> [#uses=1]
  %297 = bitcast i8* %296 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %297
  br label %object_set_slot.exit55

; <label>:298                                     ; preds = %closure_object.exit40
  %299 = bitcast i8* %273 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %300 = load %struct.slot_node** %299            ; <%struct.slot_node*> [#uses=2]
  %301 = bitcast i8* %273 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %302

; <label>:302                                     ; preds = %320, %298
  %node.0.i52 = phi %struct.slot_node* [ %300, %298 ], [ %322, %320 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i53 = phi %struct.slot_node* [ %301, %298 ], [ %node.0.i52, %320 ] ; <%struct.slot_node*> [#uses=1]
  %303 = phi %struct.slot_node* [ %322, %320 ], [ %300, %298 ] ; <%struct.slot_node*> [#uses=1]
  %304 = icmp eq %struct.slot_node* %303, null    ; <i1> [#uses=1]
  br i1 %304, label %323, label %305

; <label>:305                                     ; preds = %302
  %306 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 6 ; <i32**> [#uses=1]
  %307 = load i32** %306                          ; <i32*> [#uses=1]
  %308 = ptrtoint i32* %307 to i64                ; <i64> [#uses=1]
  %309 = sub i64 ptrtoint (i32* @__sym_class to i64), %308 ; <i64> [#uses=1]
  %310 = icmp ult i64 %309, 4                     ; <i1> [#uses=1]
  br i1 %310, label %311, label %320

; <label>:311                                     ; preds = %305
  %312 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 1 ; <i32*> [#uses=1]
  %313 = load i32* %312                           ; <i32> [#uses=1]
  %314 = and i32 %313, 2                          ; <i32> [#uses=1]
  %315 = icmp eq i32 %314, 0                      ; <i1> [#uses=1]
  br i1 %315, label %318, label %316

; <label>:316                                     ; preds = %311
  %317 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %274, i8** %317
  br label %object_set_slot.exit55

; <label>:318                                     ; preds = %311
  %319 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit55

; <label>:320                                     ; preds = %305
  %321 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %322 = load %struct.slot_node** %321            ; <%struct.slot_node*> [#uses=2]
  br label %302

; <label>:323                                     ; preds = %302
  %324 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %325 = icmp eq i8* %324, null                   ; <i1> [#uses=1]
  br i1 %325, label %326, label %mem_alloc.exit.i54

; <label>:326                                     ; preds = %323
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i54:                               ; preds = %323
  %327 = bitcast i8* %324 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %328 = getelementptr i8* %324, i64 8            ; <i8*> [#uses=1]
  %329 = bitcast i8* %328 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %329
  %330 = getelementptr i8* %324, i64 16           ; <i8*> [#uses=1]
  %331 = bitcast i8* %330 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %331
  %332 = getelementptr i8* %324, i64 24           ; <i8*> [#uses=1]
  %333 = bitcast i8* %332 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %333
  %334 = bitcast i8* %324 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %334
  %335 = getelementptr %struct.slot_node* %last_node.0.i53, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %327, %struct.slot_node** %335
  br label %object_set_slot.exit55

object_set_slot.exit55:                           ; preds = %mem_alloc.exit.i54, %318, %316, %object_set_delegate.exit.i51
  %336 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %337 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %338 = icmp eq i8* %337, null                   ; <i1> [#uses=1]
  br i1 %338, label %339, label %340

; <label>:339                                     ; preds = %object_set_slot.exit55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:340                                     ; preds = %object_set_slot.exit55
  %341 = getelementptr i8* %337, i64 12           ; <i8*> [#uses=1]
  %342 = bitcast i8* %341 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %342
  %343 = getelementptr i8* %337, i64 8            ; <i8*> [#uses=1]
  %344 = bitcast i8* %343 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %344
  %345 = getelementptr i8* %337, i64 24           ; <i8*> [#uses=1]
  %346 = bitcast i8* %345 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_add to i8*), i8** %346
  %347 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %348 = load i32* %344                           ; <i32> [#uses=1]
  %349 = icmp eq i32 %348, 364969966              ; <i1> [#uses=1]
  br i1 %349, label %closure_object.exit35, label %.thread46

.thread46:                                        ; preds = %340
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit35:                            ; preds = %340
  %350 = getelementptr i8* %337, i64 16           ; <i8*> [#uses=1]
  %351 = bitcast i8* %350 to i8**                 ; <i8**> [#uses=1]
  store i8* %347, i8** %351
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_add to i64)), i64 4), label %352, label %361

; <label>:352                                     ; preds = %closure_object.exit35
  %353 = icmp eq i8* %336, null                   ; <i1> [#uses=1]
  br i1 %353, label %.thread.i35, label %354

; <label>:354                                     ; preds = %352
  %355 = getelementptr i8* %336, i64 8            ; <i8*> [#uses=1]
  %356 = bitcast i8* %355 to i32*                 ; <i32*> [#uses=1]
  %357 = load i32* %356                           ; <i32> [#uses=1]
  %358 = icmp eq i32 %357, 364969966              ; <i1> [#uses=1]
  br i1 %358, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %354, %352
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %354
  %359 = getelementptr i8* %336, i64 16           ; <i8*> [#uses=1]
  %360 = bitcast i8* %359 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %360
  br label %object_set_slot.exit40

; <label>:361                                     ; preds = %closure_object.exit35
  %362 = bitcast i8* %336 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %363 = load %struct.slot_node** %362            ; <%struct.slot_node*> [#uses=2]
  %364 = bitcast i8* %336 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %365

; <label>:365                                     ; preds = %383, %361
  %node.0.i37 = phi %struct.slot_node* [ %363, %361 ], [ %385, %383 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %364, %361 ], [ %node.0.i37, %383 ] ; <%struct.slot_node*> [#uses=1]
  %366 = phi %struct.slot_node* [ %385, %383 ], [ %363, %361 ] ; <%struct.slot_node*> [#uses=1]
  %367 = icmp eq %struct.slot_node* %366, null    ; <i1> [#uses=1]
  br i1 %367, label %386, label %368

; <label>:368                                     ; preds = %365
  %369 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %370 = load i32** %369                          ; <i32*> [#uses=1]
  %371 = ptrtoint i32* %370 to i64                ; <i64> [#uses=1]
  %372 = sub i64 ptrtoint (i32* @__sym_add to i64), %371 ; <i64> [#uses=1]
  %373 = icmp ult i64 %372, 4                     ; <i1> [#uses=1]
  br i1 %373, label %374, label %383

; <label>:374                                     ; preds = %368
  %375 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %376 = load i32* %375                           ; <i32> [#uses=1]
  %377 = and i32 %376, 2                          ; <i32> [#uses=1]
  %378 = icmp eq i32 %377, 0                      ; <i1> [#uses=1]
  br i1 %378, label %381, label %379

; <label>:379                                     ; preds = %374
  %380 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %337, i8** %380
  br label %object_set_slot.exit40

; <label>:381                                     ; preds = %374
  %382 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_add) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:383                                     ; preds = %368
  %384 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %385 = load %struct.slot_node** %384            ; <%struct.slot_node*> [#uses=2]
  br label %365

; <label>:386                                     ; preds = %365
  %387 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %388 = icmp eq i8* %387, null                   ; <i1> [#uses=1]
  br i1 %388, label %389, label %mem_alloc.exit.i39

; <label>:389                                     ; preds = %386
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %386
  %390 = bitcast i8* %387 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %391 = getelementptr i8* %387, i64 8            ; <i8*> [#uses=1]
  %392 = bitcast i8* %391 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %392
  %393 = getelementptr i8* %387, i64 16           ; <i8*> [#uses=1]
  %394 = bitcast i8* %393 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_add, i32** %394
  %395 = getelementptr i8* %387, i64 24           ; <i8*> [#uses=1]
  %396 = bitcast i8* %395 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %396
  %397 = bitcast i8* %387 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %397
  %398 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %390, %struct.slot_node** %398
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %381, %379, %object_set_delegate.exit.i36
  %399 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %400 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %401 = icmp eq i8* %400, null                   ; <i1> [#uses=1]
  br i1 %401, label %402, label %403

; <label>:402                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:403                                     ; preds = %object_set_slot.exit40
  %404 = getelementptr i8* %400, i64 12           ; <i8*> [#uses=1]
  %405 = bitcast i8* %404 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %405
  %406 = getelementptr i8* %400, i64 8            ; <i8*> [#uses=1]
  %407 = bitcast i8* %406 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %407
  %408 = getelementptr i8* %400, i64 24           ; <i8*> [#uses=1]
  %409 = bitcast i8* %408 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_eq to i8*), i8** %409
  %410 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %411 = load i32* %407                           ; <i32> [#uses=1]
  %412 = icmp eq i32 %411, 364969966              ; <i1> [#uses=1]
  br i1 %412, label %closure_object.exit25, label %.thread47

.thread47:                                        ; preds = %403
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit25:                            ; preds = %403
  %413 = getelementptr i8* %400, i64 16           ; <i8*> [#uses=1]
  %414 = bitcast i8* %413 to i8**                 ; <i8**> [#uses=1]
  store i8* %410, i8** %414
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_eq to i64)), i64 4), label %415, label %424

; <label>:415                                     ; preds = %closure_object.exit25
  %416 = icmp eq i8* %399, null                   ; <i1> [#uses=1]
  br i1 %416, label %.thread.i23, label %417

; <label>:417                                     ; preds = %415
  %418 = getelementptr i8* %399, i64 8            ; <i8*> [#uses=1]
  %419 = bitcast i8* %418 to i32*                 ; <i32*> [#uses=1]
  %420 = load i32* %419                           ; <i32> [#uses=1]
  %421 = icmp eq i32 %420, 364969966              ; <i1> [#uses=1]
  br i1 %421, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %417, %415
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %417
  %422 = getelementptr i8* %399, i64 16           ; <i8*> [#uses=1]
  %423 = bitcast i8* %422 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %423
  br label %object_set_slot.exit28

; <label>:424                                     ; preds = %closure_object.exit25
  %425 = bitcast i8* %399 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %426 = load %struct.slot_node** %425            ; <%struct.slot_node*> [#uses=2]
  %427 = bitcast i8* %399 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %428

; <label>:428                                     ; preds = %446, %424
  %node.0.i25 = phi %struct.slot_node* [ %426, %424 ], [ %448, %446 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %427, %424 ], [ %node.0.i25, %446 ] ; <%struct.slot_node*> [#uses=1]
  %429 = phi %struct.slot_node* [ %448, %446 ], [ %426, %424 ] ; <%struct.slot_node*> [#uses=1]
  %430 = icmp eq %struct.slot_node* %429, null    ; <i1> [#uses=1]
  br i1 %430, label %449, label %431

; <label>:431                                     ; preds = %428
  %432 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %433 = load i32** %432                          ; <i32*> [#uses=1]
  %434 = ptrtoint i32* %433 to i64                ; <i64> [#uses=1]
  %435 = sub i64 ptrtoint (i32* @__sym_eq to i64), %434 ; <i64> [#uses=1]
  %436 = icmp ult i64 %435, 4                     ; <i1> [#uses=1]
  br i1 %436, label %437, label %446

; <label>:437                                     ; preds = %431
  %438 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %439 = load i32* %438                           ; <i32> [#uses=1]
  %440 = and i32 %439, 2                          ; <i32> [#uses=1]
  %441 = icmp eq i32 %440, 0                      ; <i1> [#uses=1]
  br i1 %441, label %444, label %442

; <label>:442                                     ; preds = %437
  %443 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %400, i8** %443
  br label %object_set_slot.exit28

; <label>:444                                     ; preds = %437
  %445 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_eq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:446                                     ; preds = %431
  %447 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %448 = load %struct.slot_node** %447            ; <%struct.slot_node*> [#uses=2]
  br label %428

; <label>:449                                     ; preds = %428
  %450 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %451 = icmp eq i8* %450, null                   ; <i1> [#uses=1]
  br i1 %451, label %452, label %mem_alloc.exit.i27

; <label>:452                                     ; preds = %449
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %449
  %453 = bitcast i8* %450 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %454 = getelementptr i8* %450, i64 8            ; <i8*> [#uses=1]
  %455 = bitcast i8* %454 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %455
  %456 = getelementptr i8* %450, i64 16           ; <i8*> [#uses=1]
  %457 = bitcast i8* %456 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_eq, i32** %457
  %458 = getelementptr i8* %450, i64 24           ; <i8*> [#uses=1]
  %459 = bitcast i8* %458 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %459
  %460 = bitcast i8* %450 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %460
  %461 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %453, %struct.slot_node** %461
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %444, %442, %object_set_delegate.exit.i24
  %462 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %463 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %464 = icmp eq i8* %463, null                   ; <i1> [#uses=1]
  br i1 %464, label %465, label %466

; <label>:465                                     ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:466                                     ; preds = %object_set_slot.exit28
  %467 = getelementptr i8* %463, i64 12           ; <i8*> [#uses=1]
  %468 = bitcast i8* %467 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %468
  %469 = getelementptr i8* %463, i64 8            ; <i8*> [#uses=1]
  %470 = bitcast i8* %469 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %470
  %471 = getelementptr i8* %463, i64 24           ; <i8*> [#uses=1]
  %472 = bitcast i8* %471 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_neq to i8*), i8** %472
  %473 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %474 = load i32* %470                           ; <i32> [#uses=1]
  %475 = icmp eq i32 %474, 364969966              ; <i1> [#uses=1]
  br i1 %475, label %closure_object.exit15, label %.thread48

.thread48:                                        ; preds = %466
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %466
  %476 = getelementptr i8* %463, i64 16           ; <i8*> [#uses=1]
  %477 = bitcast i8* %476 to i8**                 ; <i8**> [#uses=1]
  store i8* %473, i8** %477
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_neq to i64)), i64 4), label %478, label %487

; <label>:478                                     ; preds = %closure_object.exit15
  %479 = icmp eq i8* %462, null                   ; <i1> [#uses=1]
  br i1 %479, label %.thread.i8, label %480

; <label>:480                                     ; preds = %478
  %481 = getelementptr i8* %462, i64 8            ; <i8*> [#uses=1]
  %482 = bitcast i8* %481 to i32*                 ; <i32*> [#uses=1]
  %483 = load i32* %482                           ; <i32> [#uses=1]
  %484 = icmp eq i32 %483, 364969966              ; <i1> [#uses=1]
  br i1 %484, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %480, %478
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %480
  %485 = getelementptr i8* %462, i64 16           ; <i8*> [#uses=1]
  %486 = bitcast i8* %485 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %486
  br label %object_set_slot.exit13

; <label>:487                                     ; preds = %closure_object.exit15
  %488 = bitcast i8* %462 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %489 = load %struct.slot_node** %488            ; <%struct.slot_node*> [#uses=2]
  %490 = bitcast i8* %462 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %491

; <label>:491                                     ; preds = %509, %487
  %node.0.i10 = phi %struct.slot_node* [ %489, %487 ], [ %511, %509 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %490, %487 ], [ %node.0.i10, %509 ] ; <%struct.slot_node*> [#uses=1]
  %492 = phi %struct.slot_node* [ %511, %509 ], [ %489, %487 ] ; <%struct.slot_node*> [#uses=1]
  %493 = icmp eq %struct.slot_node* %492, null    ; <i1> [#uses=1]
  br i1 %493, label %512, label %494

; <label>:494                                     ; preds = %491
  %495 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %496 = load i32** %495                          ; <i32*> [#uses=1]
  %497 = ptrtoint i32* %496 to i64                ; <i64> [#uses=1]
  %498 = sub i64 ptrtoint (i32* @__sym_neq to i64), %497 ; <i64> [#uses=1]
  %499 = icmp ult i64 %498, 4                     ; <i1> [#uses=1]
  br i1 %499, label %500, label %509

; <label>:500                                     ; preds = %494
  %501 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %502 = load i32* %501                           ; <i32> [#uses=1]
  %503 = and i32 %502, 2                          ; <i32> [#uses=1]
  %504 = icmp eq i32 %503, 0                      ; <i1> [#uses=1]
  br i1 %504, label %507, label %505

; <label>:505                                     ; preds = %500
  %506 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %463, i8** %506
  br label %object_set_slot.exit13

; <label>:507                                     ; preds = %500
  %508 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_neq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:509                                     ; preds = %494
  %510 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %511 = load %struct.slot_node** %510            ; <%struct.slot_node*> [#uses=2]
  br label %491

; <label>:512                                     ; preds = %491
  %513 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %514 = icmp eq i8* %513, null                   ; <i1> [#uses=1]
  br i1 %514, label %515, label %mem_alloc.exit.i12

; <label>:515                                     ; preds = %512
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %512
  %516 = bitcast i8* %513 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %517 = getelementptr i8* %513, i64 8            ; <i8*> [#uses=1]
  %518 = bitcast i8* %517 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %518
  %519 = getelementptr i8* %513, i64 16           ; <i8*> [#uses=1]
  %520 = bitcast i8* %519 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_neq, i32** %520
  %521 = getelementptr i8* %513, i64 24           ; <i8*> [#uses=1]
  %522 = bitcast i8* %521 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %522
  %523 = bitcast i8* %513 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %523
  %524 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %516, %struct.slot_node** %524
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %507, %505, %object_set_delegate.exit.i9
  %525 = load i8** @string_prototype.prototype    ; <i8*> [#uses=5]
  %526 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %527 = icmp eq i8* %526, null                   ; <i1> [#uses=1]
  br i1 %527, label %528, label %529

; <label>:528                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:529                                     ; preds = %object_set_slot.exit13
  %530 = getelementptr i8* %526, i64 12           ; <i8*> [#uses=1]
  %531 = bitcast i8* %530 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %531
  %532 = getelementptr i8* %526, i64 8            ; <i8*> [#uses=1]
  %533 = bitcast i8* %532 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %533
  %534 = getelementptr i8* %526, i64 24           ; <i8*> [#uses=1]
  %535 = bitcast i8* %534 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @string_size to i8*), i8** %535
  %536 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %537 = load i32* %533                           ; <i32> [#uses=1]
  %538 = icmp eq i32 %537, 364969966              ; <i1> [#uses=1]
  br i1 %538, label %closure_object.exit5, label %.thread49

.thread49:                                        ; preds = %529
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %529
  %539 = getelementptr i8* %526, i64 16           ; <i8*> [#uses=1]
  %540 = bitcast i8* %539 to i8**                 ; <i8**> [#uses=1]
  store i8* %536, i8** %540
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_size to i64)), i64 4), label %541, label %550

; <label>:541                                     ; preds = %closure_object.exit5
  %542 = icmp eq i8* %525, null                   ; <i1> [#uses=1]
  br i1 %542, label %.thread.i, label %543

; <label>:543                                     ; preds = %541
  %544 = getelementptr i8* %525, i64 8            ; <i8*> [#uses=1]
  %545 = bitcast i8* %544 to i32*                 ; <i32*> [#uses=1]
  %546 = load i32* %545                           ; <i32> [#uses=1]
  %547 = icmp eq i32 %546, 364969966              ; <i1> [#uses=1]
  br i1 %547, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %543, %541
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %543
  %548 = getelementptr i8* %525, i64 16           ; <i8*> [#uses=1]
  %549 = bitcast i8* %548 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %549
  br label %object_set_slot.exit

; <label>:550                                     ; preds = %closure_object.exit5
  %551 = bitcast i8* %525 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %552 = load %struct.slot_node** %551            ; <%struct.slot_node*> [#uses=2]
  %553 = bitcast i8* %525 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %554

; <label>:554                                     ; preds = %572, %550
  %node.0.i = phi %struct.slot_node* [ %552, %550 ], [ %574, %572 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %553, %550 ], [ %node.0.i, %572 ] ; <%struct.slot_node*> [#uses=1]
  %555 = phi %struct.slot_node* [ %574, %572 ], [ %552, %550 ] ; <%struct.slot_node*> [#uses=1]
  %556 = icmp eq %struct.slot_node* %555, null    ; <i1> [#uses=1]
  br i1 %556, label %575, label %557

; <label>:557                                     ; preds = %554
  %558 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %559 = load i32** %558                          ; <i32*> [#uses=1]
  %560 = ptrtoint i32* %559 to i64                ; <i64> [#uses=1]
  %561 = sub i64 ptrtoint (i32* @__sym_size to i64), %560 ; <i64> [#uses=1]
  %562 = icmp ult i64 %561, 4                     ; <i1> [#uses=1]
  br i1 %562, label %563, label %572

; <label>:563                                     ; preds = %557
  %564 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %565 = load i32* %564                           ; <i32> [#uses=1]
  %566 = and i32 %565, 2                          ; <i32> [#uses=1]
  %567 = icmp eq i32 %566, 0                      ; <i1> [#uses=1]
  br i1 %567, label %570, label %568

; <label>:568                                     ; preds = %563
  %569 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %526, i8** %569
  br label %object_set_slot.exit

; <label>:570                                     ; preds = %563
  %571 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_size) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:572                                     ; preds = %557
  %573 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %574 = load %struct.slot_node** %573            ; <%struct.slot_node*> [#uses=2]
  br label %554

; <label>:575                                     ; preds = %554
  %576 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %577 = icmp eq i8* %576, null                   ; <i1> [#uses=1]
  br i1 %577, label %578, label %mem_alloc.exit.i1

; <label>:578                                     ; preds = %575
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i1:                                ; preds = %575
  %579 = bitcast i8* %576 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %580 = getelementptr i8* %576, i64 8            ; <i8*> [#uses=1]
  %581 = bitcast i8* %580 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %581
  %582 = getelementptr i8* %576, i64 16           ; <i8*> [#uses=1]
  %583 = bitcast i8* %582 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_size, i32** %583
  %584 = getelementptr i8* %576, i64 24           ; <i8*> [#uses=1]
  %585 = bitcast i8* %584 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %585
  %586 = bitcast i8* %576 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %586
  %587 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %579, %struct.slot_node** %587
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i1, %570, %568, %object_set_delegate.exit.i, %3
  %588 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @string_prototype_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @string_prototype.prototype   ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:589                                     ; preds = %0
  ret i8* %1
}

declare i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t*)

define internal i8* @string_print(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.string_print, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 146, i8* getelementptr inbounds ([29 x i8]* @"\01LC322", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=1]
  %11 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([3 x i8]* @"\01LC423", i64 0, i64 0), i8* %10) nounwind ; <i32> [#uses=0]
  ret i8* %self
}

define internal i8* @string_puts(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.string_puts, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 154, i8* getelementptr inbounds ([29 x i8]* @"\01LC322", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=1]
  %11 = tail call i32 @puts(i8* %10) nounwind     ; <i32> [#uses=0]
  ret i8* %self
}

define internal i8* @string_to_s(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([12 x i8]* @__func__.string_to_s, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 107, i8* getelementptr inbounds ([29 x i8]* @"\01LC322", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  ret i8* %self
}

define internal i8* @string_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @string_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([7 x i8]* @"\01LC221", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @string_add(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %string_cstrC.exit, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([11 x i8]* @__func__.string_add, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 94, i8* getelementptr inbounds ([29 x i8]* @"\01LC322", i64 0, i64 0)) noreturn nounwind
  unreachable

string_cstrC.exit:                                ; preds = %0
  %7 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i8**                     ; <i8**> [#uses=1]
  %9 = load i8** %8                               ; <i8*> [#uses=3]
  %10 = getelementptr i8* %args, i64 24           ; <i8*> [#uses=1]
  %11 = bitcast i8* %10 to i8**                   ; <i8**> [#uses=1]
  %12 = load i8** %11                             ; <i8*> [#uses=3]
  %13 = icmp eq i8* %12, null                     ; <i1> [#uses=1]
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %string_cstrC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:15                                      ; preds = %string_cstrC.exit
  %16 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  %17 = load i32* %16                             ; <i32> [#uses=1]
  %18 = icmp sgt i32 %17, 0                       ; <i1> [#uses=1]
  br i1 %18, label %19, label %23

; <label>:19                                      ; preds = %15
  %20 = getelementptr i8* %12, i64 8              ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:23                                      ; preds = %15
  %24 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %23, %19
  %storemerge.i = phi i8* [ %22, %19 ], [ %24, %23 ] ; <i8*> [#uses=2]
  %25 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %26 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %27 = load i32* %26                             ; <i32> [#uses=1]
  %28 = and i32 %27, 255                          ; <i32> [#uses=1]
  %29 = icmp eq i32 %28, 3                        ; <i1> [#uses=1]
  br i1 %29, label %string_cstrC.exit2, label %30

; <label>:30                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.string_cstrC, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 88, i8* getelementptr inbounds ([28 x i8]* @"\01LC120", i64 0, i64 0)) noreturn nounwind
  unreachable

string_cstrC.exit2:                               ; preds = %array_get_elementC.exit
  %31 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  %33 = load i8** %32                             ; <i8*> [#uses=2]
  %34 = tail call i64 @strlen(i8* %9) nounwind    ; <i64> [#uses=1]
  %35 = tail call i64 @strlen(i8* %33) nounwind   ; <i64> [#uses=1]
  %36 = add i64 %34, 1                            ; <i64> [#uses=1]
  %37 = add i64 %36, %35                          ; <i64> [#uses=1]
  %38 = tail call i8* @GC_debug_malloc(i64 %37, i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 99) nounwind ; <i8*> [#uses=4]
  %39 = icmp eq i8* %38, null                     ; <i1> [#uses=1]
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %string_cstrC.exit2
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:41                                      ; preds = %string_cstrC.exit2
  %42 = tail call i64 @strlen(i8* %9) nounwind    ; <i64> [#uses=1]
  %43 = add i64 %42, 1                            ; <i64> [#uses=1]
  %44 = tail call i8* @__memcpy_chk(i8* %38, i8* %9, i64 %43, i64 -1) nounwind ; <i8*> [#uses=0]
  %45 = tail call i8* @__strcat_chk(i8* %38, i8* %33, i64 -1) nounwind ; <i8*> [#uses=0]
  %46 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %47 = icmp eq i8* %46, null                     ; <i1> [#uses=1]
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %41
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:49                                      ; preds = %41
  %50 = getelementptr i8* %46, i64 12             ; <i8*> [#uses=1]
  %51 = bitcast i8* %50 to i32*                   ; <i32*> [#uses=1]
  store i32 259, i32* %51
  %52 = getelementptr i8* %46, i64 8              ; <i8*> [#uses=1]
  %53 = bitcast i8* %52 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %53
  %54 = getelementptr i8* %46, i64 24             ; <i8*> [#uses=1]
  %55 = bitcast i8* %54 to i8**                   ; <i8**> [#uses=1]
  store i8* %38, i8** %55
  %56 = tail call fastcc i8* @string_prototype() nounwind ; <i8*> [#uses=1]
  %57 = load i32* %53                             ; <i32> [#uses=1]
  %58 = icmp eq i32 %57, 364969966                ; <i1> [#uses=1]
  br i1 %58, label %string_object_nocopy.exit, label %.thread

.thread:                                          ; preds = %49
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

string_object_nocopy.exit:                        ; preds = %49
  %59 = getelementptr i8* %46, i64 16             ; <i8*> [#uses=1]
  %60 = bitcast i8* %59 to i8**                   ; <i8**> [#uses=1]
  store i8* %56, i8** %60
  ret i8* %46
}

define internal i8* @string_eq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.string_eq, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 112, i8* getelementptr inbounds ([29 x i8]* @"\01LC322", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=3]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:13                                      ; preds = %7
  %14 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=1]
  %15 = load i32* %14                             ; <i32> [#uses=1]
  %16 = icmp sgt i32 %15, 0                       ; <i1> [#uses=1]
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %13
  %18 = getelementptr i8* %10, i64 8              ; <i8*> [#uses=1]
  %19 = bitcast i8* %18 to i8**                   ; <i8**> [#uses=1]
  %20 = load i8** %19                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:21                                      ; preds = %13
  %22 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %21, %17
  %storemerge.i = phi i8* [ %20, %17 ], [ %22, %21 ] ; <i8*> [#uses=4]
  %23 = icmp eq i8* %storemerge.i, null           ; <i1> [#uses=1]
  br i1 %23, label %.thread, label %24

; <label>:24                                      ; preds = %array_get_elementC.exit
  %25 = getelementptr i8* %storemerge.i, i64 8    ; <i8*> [#uses=1]
  %26 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %27 = load i32* %26                             ; <i32> [#uses=1]
  %28 = icmp eq i32 %27, 364969966                ; <i1> [#uses=1]
  br i1 %28, label %29, label %.thread

.thread:                                          ; preds = %24, %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.string_eq, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 115, i8* getelementptr inbounds ([17 x i8]* @"\01LC524", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:29                                      ; preds = %24
  %30 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i32*                   ; <i32*> [#uses=1]
  %32 = load i32* %31                             ; <i32> [#uses=1]
  %33 = and i32 %32, 255                          ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 3                        ; <i1> [#uses=1]
  br i1 %34, label %37, label %35

; <label>:35                                      ; preds = %29
  %36 = tail call fastcc i8* @bool_object(i32 0)  ; <i8*> [#uses=1]
  ret i8* %36

; <label>:37                                      ; preds = %29
  %38 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %39 = bitcast i8* %38 to i8**                   ; <i8**> [#uses=1]
  %40 = load i8** %39                             ; <i8*> [#uses=1]
  %41 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %42 = bitcast i8* %41 to i8**                   ; <i8**> [#uses=1]
  %43 = load i8** %42                             ; <i8*> [#uses=1]
  %44 = tail call i32 @strcmp(i8* %40, i8* %43) nounwind ; <i32> [#uses=1]
  %45 = icmp eq i32 %44, 0                        ; <i1> [#uses=1]
  %46 = zext i1 %45 to i32                        ; <i32> [#uses=1]
  %47 = tail call fastcc i8* @bool_object(i32 %46) ; <i8*> [#uses=1]
  ret i8* %47
}

define internal i8* @string_neq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=2]
  %16 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 3                        ; <i1> [#uses=1]
  br i1 %20, label %23, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  %22 = tail call fastcc i8* @bool_object(i32 1)  ; <i8*> [#uses=1]
  ret i8* %22

; <label>:23                                      ; preds = %array_get_elementC.exit
  %24 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %25 = bitcast i8* %24 to i8**                   ; <i8**> [#uses=1]
  %26 = load i8** %25                             ; <i8*> [#uses=1]
  %27 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  %29 = load i8** %28                             ; <i8*> [#uses=1]
  %30 = tail call i32 @strcmp(i8* %26, i8* %29) nounwind ; <i32> [#uses=1]
  %31 = icmp ne i32 %30, 0                        ; <i1> [#uses=1]
  %32 = zext i1 %31 to i32                        ; <i32> [#uses=1]
  %33 = tail call fastcc i8* @bool_object(i32 %32) ; <i8*> [#uses=1]
  ret i8* %33
}

define internal i8* @string_size(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 3                          ; <i1> [#uses=1]
  br i1 %5, label %string_cstrC.exit, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.string_cstrC, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 88, i8* getelementptr inbounds ([28 x i8]* @"\01LC120", i64 0, i64 0)) noreturn nounwind
  unreachable

string_cstrC.exit:                                ; preds = %0
  %7 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %8 = bitcast i8* %7 to i8**                     ; <i8**> [#uses=1]
  %9 = load i8** %8                               ; <i8*> [#uses=1]
  %10 = tail call i64 @strlen(i8* %9) nounwind    ; <i64> [#uses=1]
  %11 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %12 = icmp eq i8* %11, null                     ; <i1> [#uses=1]
  br i1 %12, label %13, label %14

; <label>:13                                      ; preds = %string_cstrC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:14                                      ; preds = %string_cstrC.exit
  %15 = trunc i64 %10 to i32                      ; <i32> [#uses=1]
  %16 = getelementptr i8* %11, i64 12             ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %17
  %18 = getelementptr i8* %11, i64 8              ; <i8*> [#uses=1]
  %19 = bitcast i8* %18 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %19
  %20 = sext i32 %15 to i64                       ; <i64> [#uses=1]
  %21 = inttoptr i64 %20 to i8*                   ; <i8*> [#uses=1]
  %22 = getelementptr i8* %11, i64 24             ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  store i8* %21, i8** %23
  %24 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %25 = load i32* %19                             ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 364969966                ; <i1> [#uses=1]
  br i1 %26, label %int_object.exit, label %.thread

.thread:                                          ; preds = %14
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %14
  %27 = getelementptr i8* %11, i64 16             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* %24, i8** %28
  ret i8* %11
}

declare i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t*)

define internal fastcc i8* @string_object(i8* %value) nounwind {
  %1 = tail call i64 @strlen(i8* %value) nounwind ; <i64> [#uses=1]
  %2 = add i64 %1, 1                              ; <i64> [#uses=1]
  %3 = tail call i8* @GC_debug_malloc(i64 %2, i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 72) nounwind ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = tail call i64 @strlen(i8* %value) nounwind ; <i64> [#uses=1]
  %8 = add i64 %7, 1                              ; <i64> [#uses=1]
  %9 = tail call i8* @__memcpy_chk(i8* %3, i8* %value, i64 %8, i64 -1) nounwind ; <i8*> [#uses=0]
  %10 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %13

; <label>:12                                      ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:13                                      ; preds = %6
  %14 = getelementptr i8* %10, i64 12             ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=1]
  store i32 259, i32* %15
  %16 = getelementptr i8* %10, i64 8              ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %17
  %18 = getelementptr i8* %10, i64 24             ; <i8*> [#uses=1]
  %19 = bitcast i8* %18 to i8**                   ; <i8**> [#uses=1]
  store i8* %3, i8** %19
  %20 = tail call fastcc i8* @string_prototype() nounwind ; <i8*> [#uses=1]
  %21 = load i32* %17                             ; <i32> [#uses=1]
  %22 = icmp eq i32 %21, 364969966                ; <i1> [#uses=1]
  br i1 %22, label %string_object_nocopy.exit, label %.thread

.thread:                                          ; preds = %13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

string_object_nocopy.exit:                        ; preds = %13
  %23 = getelementptr i8* %10, i64 16             ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=1]
  store i8* %20, i8** %24
  ret i8* %10
}

declare i64 @strlen(i8* nocapture) nounwind readonly

declare i32 @puts(i8* nocapture) nounwind

declare i32 @strcmp(i8* nocapture, i8* nocapture) nounwind readonly

declare i8* @__strcat_chk(i8*, i8*, i64)

define internal fastcc i8* @null_object() nounwind {
  %1 = load i8** @null_object.cached_null         ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %337

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @null_cache_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @null_object.cached_null         ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 513, i32* %13
  %14 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  store i8* %8, i8** @null_object.cached_null
  %16 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %17 = load i32* %15                             ; <i32> [#uses=1]
  %18 = icmp eq i32 %17, 364969966                ; <i1> [#uses=1]
  br i1 %18, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %11
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %11
  %19 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %20
  %21 = load i8** @null_object.cached_null        ; <i8*> [#uses=5]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %object_set_delegate.exit
  %26 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %27
  %28 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %29
  %30 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_to_s to i8*), i8** %31
  %32 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %33 = load i32* %29                             ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 364969966                ; <i1> [#uses=1]
  br i1 %34, label %closure_object.exit, label %.thread21

.thread21:                                        ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %25
  %35 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %32, i8** %36
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %37, label %46

; <label>:37                                      ; preds = %closure_object.exit
  %38 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %38, label %.thread.i14, label %39

; <label>:39                                      ; preds = %37
  %40 = getelementptr i8* %21, i64 8              ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 364969966                ; <i1> [#uses=1]
  br i1 %43, label %object_set_delegate.exit.i15, label %.thread.i14

.thread.i14:                                      ; preds = %39, %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i15:                     ; preds = %39
  %44 = getelementptr i8* %21, i64 16             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %45
  br label %object_set_slot.exit19

; <label>:46                                      ; preds = %closure_object.exit
  %47 = bitcast i8* %21 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %48 = load %struct.slot_node** %47              ; <%struct.slot_node*> [#uses=2]
  %49 = bitcast i8* %21 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %50

; <label>:50                                      ; preds = %68, %46
  %node.0.i16 = phi %struct.slot_node* [ %48, %46 ], [ %70, %68 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i17 = phi %struct.slot_node* [ %49, %46 ], [ %node.0.i16, %68 ] ; <%struct.slot_node*> [#uses=1]
  %51 = phi %struct.slot_node* [ %70, %68 ], [ %48, %46 ] ; <%struct.slot_node*> [#uses=1]
  %52 = icmp eq %struct.slot_node* %51, null      ; <i1> [#uses=1]
  br i1 %52, label %71, label %53

; <label>:53                                      ; preds = %50
  %54 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 6 ; <i32**> [#uses=1]
  %55 = load i32** %54                            ; <i32*> [#uses=1]
  %56 = ptrtoint i32* %55 to i64                  ; <i64> [#uses=1]
  %57 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %56 ; <i64> [#uses=1]
  %58 = icmp ult i64 %57, 4                       ; <i1> [#uses=1]
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %53
  %60 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 1 ; <i32*> [#uses=1]
  %61 = load i32* %60                             ; <i32> [#uses=1]
  %62 = and i32 %61, 2                            ; <i32> [#uses=1]
  %63 = icmp eq i32 %62, 0                        ; <i1> [#uses=1]
  br i1 %63, label %66, label %64

; <label>:64                                      ; preds = %59
  %65 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %22, i8** %65
  br label %object_set_slot.exit19

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit19

; <label>:68                                      ; preds = %53
  %69 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %70 = load %struct.slot_node** %69              ; <%struct.slot_node*> [#uses=2]
  br label %50

; <label>:71                                      ; preds = %50
  %72 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %mem_alloc.exit.i18

; <label>:74                                      ; preds = %71
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i18:                               ; preds = %71
  %75 = bitcast i8* %72 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %76 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %77
  %78 = getelementptr i8* %72, i64 16             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %79
  %80 = getelementptr i8* %72, i64 24             ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %81
  %82 = bitcast i8* %72 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %82
  %83 = getelementptr %struct.slot_node* %last_node.0.i17, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %75, %struct.slot_node** %83
  br label %object_set_slot.exit19

object_set_slot.exit19:                           ; preds = %mem_alloc.exit.i18, %66, %64, %object_set_delegate.exit.i15
  %84 = load i8** @null_object.cached_null        ; <i8*> [#uses=5]
  %85 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %object_set_slot.exit19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %object_set_slot.exit19
  %89 = getelementptr i8* %85, i64 12             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %90
  %91 = getelementptr i8* %85, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %92
  %93 = getelementptr i8* %85, i64 24             ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_class to i8*), i8** %94
  %95 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %96 = load i32* %92                             ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 364969966                ; <i1> [#uses=1]
  br i1 %97, label %closure_object.exit10, label %.thread22

.thread22:                                        ; preds = %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %88
  %98 = getelementptr i8* %85, i64 16             ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  store i8* %95, i8** %99
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %100, label %109

; <label>:100                                     ; preds = %closure_object.exit10
  %101 = icmp eq i8* %84, null                    ; <i1> [#uses=1]
  br i1 %101, label %.thread.i35, label %102

; <label>:102                                     ; preds = %100
  %103 = getelementptr i8* %84, i64 8             ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i32*                 ; <i32*> [#uses=1]
  %105 = load i32* %104                           ; <i32> [#uses=1]
  %106 = icmp eq i32 %105, 364969966              ; <i1> [#uses=1]
  br i1 %106, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %102, %100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %102
  %107 = getelementptr i8* %84, i64 16            ; <i8*> [#uses=1]
  %108 = bitcast i8* %107 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %108
  br label %object_set_slot.exit40

; <label>:109                                     ; preds = %closure_object.exit10
  %110 = bitcast i8* %84 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %111 = load %struct.slot_node** %110            ; <%struct.slot_node*> [#uses=2]
  %112 = bitcast i8* %84 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %113

; <label>:113                                     ; preds = %131, %109
  %node.0.i37 = phi %struct.slot_node* [ %111, %109 ], [ %133, %131 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %112, %109 ], [ %node.0.i37, %131 ] ; <%struct.slot_node*> [#uses=1]
  %114 = phi %struct.slot_node* [ %133, %131 ], [ %111, %109 ] ; <%struct.slot_node*> [#uses=1]
  %115 = icmp eq %struct.slot_node* %114, null    ; <i1> [#uses=1]
  br i1 %115, label %134, label %116

; <label>:116                                     ; preds = %113
  %117 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %118 = load i32** %117                          ; <i32*> [#uses=1]
  %119 = ptrtoint i32* %118 to i64                ; <i64> [#uses=1]
  %120 = sub i64 ptrtoint (i32* @__sym_class to i64), %119 ; <i64> [#uses=1]
  %121 = icmp ult i64 %120, 4                     ; <i1> [#uses=1]
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %116
  %123 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %124 = load i32* %123                           ; <i32> [#uses=1]
  %125 = and i32 %124, 2                          ; <i32> [#uses=1]
  %126 = icmp eq i32 %125, 0                      ; <i1> [#uses=1]
  br i1 %126, label %129, label %127

; <label>:127                                     ; preds = %122
  %128 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %85, i8** %128
  br label %object_set_slot.exit40

; <label>:129                                     ; preds = %122
  %130 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:131                                     ; preds = %116
  %132 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %133 = load %struct.slot_node** %132            ; <%struct.slot_node*> [#uses=2]
  br label %113

; <label>:134                                     ; preds = %113
  %135 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %136 = icmp eq i8* %135, null                   ; <i1> [#uses=1]
  br i1 %136, label %137, label %mem_alloc.exit.i39

; <label>:137                                     ; preds = %134
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %134
  %138 = bitcast i8* %135 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %139 = getelementptr i8* %135, i64 8            ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %140
  %141 = getelementptr i8* %135, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %142
  %143 = getelementptr i8* %135, i64 24           ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %144
  %145 = bitcast i8* %135 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %145
  %146 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %138, %struct.slot_node** %146
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %129, %127, %object_set_delegate.exit.i36
  %147 = load i8** @null_object.cached_null       ; <i8*> [#uses=5]
  %148 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %149 = icmp eq i8* %148, null                   ; <i1> [#uses=1]
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %object_set_slot.exit40
  %152 = getelementptr i8* %148, i64 12           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %153
  %154 = getelementptr i8* %148, i64 8            ; <i8*> [#uses=1]
  %155 = bitcast i8* %154 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %155
  %156 = getelementptr i8* %148, i64 24           ; <i8*> [#uses=1]
  %157 = bitcast i8* %156 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_clone to i8*), i8** %157
  %158 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %159 = load i32* %155                           ; <i32> [#uses=1]
  %160 = icmp eq i32 %159, 364969966              ; <i1> [#uses=1]
  br i1 %160, label %closure_object.exit20, label %.thread23

.thread23:                                        ; preds = %151
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %151
  %161 = getelementptr i8* %148, i64 16           ; <i8*> [#uses=1]
  %162 = bitcast i8* %161 to i8**                 ; <i8**> [#uses=1]
  store i8* %158, i8** %162
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %163, label %172

; <label>:163                                     ; preds = %closure_object.exit20
  %164 = icmp eq i8* %147, null                   ; <i1> [#uses=1]
  br i1 %164, label %.thread.i23, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr i8* %147, i64 8            ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i32*                 ; <i32*> [#uses=1]
  %168 = load i32* %167                           ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 364969966              ; <i1> [#uses=1]
  br i1 %169, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %165, %163
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %165
  %170 = getelementptr i8* %147, i64 16           ; <i8*> [#uses=1]
  %171 = bitcast i8* %170 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %171
  br label %object_set_slot.exit28

; <label>:172                                     ; preds = %closure_object.exit20
  %173 = bitcast i8* %147 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %174 = load %struct.slot_node** %173            ; <%struct.slot_node*> [#uses=2]
  %175 = bitcast i8* %147 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %176

; <label>:176                                     ; preds = %194, %172
  %node.0.i25 = phi %struct.slot_node* [ %174, %172 ], [ %196, %194 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %175, %172 ], [ %node.0.i25, %194 ] ; <%struct.slot_node*> [#uses=1]
  %177 = phi %struct.slot_node* [ %196, %194 ], [ %174, %172 ] ; <%struct.slot_node*> [#uses=1]
  %178 = icmp eq %struct.slot_node* %177, null    ; <i1> [#uses=1]
  br i1 %178, label %197, label %179

; <label>:179                                     ; preds = %176
  %180 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %181 = load i32** %180                          ; <i32*> [#uses=1]
  %182 = ptrtoint i32* %181 to i64                ; <i64> [#uses=1]
  %183 = sub i64 ptrtoint (i32* @__sym_clone to i64), %182 ; <i64> [#uses=1]
  %184 = icmp ult i64 %183, 4                     ; <i1> [#uses=1]
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %179
  %186 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %187 = load i32* %186                           ; <i32> [#uses=1]
  %188 = and i32 %187, 2                          ; <i32> [#uses=1]
  %189 = icmp eq i32 %188, 0                      ; <i1> [#uses=1]
  br i1 %189, label %192, label %190

; <label>:190                                     ; preds = %185
  %191 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %148, i8** %191
  br label %object_set_slot.exit28

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:194                                     ; preds = %179
  %195 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %196 = load %struct.slot_node** %195            ; <%struct.slot_node*> [#uses=2]
  br label %176

; <label>:197                                     ; preds = %176
  %198 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %199 = icmp eq i8* %198, null                   ; <i1> [#uses=1]
  br i1 %199, label %200, label %mem_alloc.exit.i27

; <label>:200                                     ; preds = %197
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %197
  %201 = bitcast i8* %198 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %202 = getelementptr i8* %198, i64 8            ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %203
  %204 = getelementptr i8* %198, i64 16           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %205
  %206 = getelementptr i8* %198, i64 24           ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %207
  %208 = bitcast i8* %198 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %208
  %209 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %201, %struct.slot_node** %209
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %192, %190, %object_set_delegate.exit.i24
  %210 = load i8** @null_object.cached_null       ; <i8*> [#uses=5]
  %211 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %212 = icmp eq i8* %211, null                   ; <i1> [#uses=1]
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:214                                     ; preds = %object_set_slot.exit28
  %215 = getelementptr i8* %211, i64 12           ; <i8*> [#uses=1]
  %216 = bitcast i8* %215 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %216
  %217 = getelementptr i8* %211, i64 8            ; <i8*> [#uses=1]
  %218 = bitcast i8* %217 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %218
  %219 = getelementptr i8* %211, i64 24           ; <i8*> [#uses=1]
  %220 = bitcast i8* %219 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_neq to i8*), i8** %220
  %221 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %222 = load i32* %218                           ; <i32> [#uses=1]
  %223 = icmp eq i32 %222, 364969966              ; <i1> [#uses=1]
  br i1 %223, label %closure_object.exit15, label %.thread24

.thread24:                                        ; preds = %214
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %214
  %224 = getelementptr i8* %211, i64 16           ; <i8*> [#uses=1]
  %225 = bitcast i8* %224 to i8**                 ; <i8**> [#uses=1]
  store i8* %221, i8** %225
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_neq to i64)), i64 4), label %226, label %235

; <label>:226                                     ; preds = %closure_object.exit15
  %227 = icmp eq i8* %210, null                   ; <i1> [#uses=1]
  br i1 %227, label %.thread.i8, label %228

; <label>:228                                     ; preds = %226
  %229 = getelementptr i8* %210, i64 8            ; <i8*> [#uses=1]
  %230 = bitcast i8* %229 to i32*                 ; <i32*> [#uses=1]
  %231 = load i32* %230                           ; <i32> [#uses=1]
  %232 = icmp eq i32 %231, 364969966              ; <i1> [#uses=1]
  br i1 %232, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %228, %226
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %228
  %233 = getelementptr i8* %210, i64 16           ; <i8*> [#uses=1]
  %234 = bitcast i8* %233 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %234
  br label %object_set_slot.exit13

; <label>:235                                     ; preds = %closure_object.exit15
  %236 = bitcast i8* %210 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %237 = load %struct.slot_node** %236            ; <%struct.slot_node*> [#uses=2]
  %238 = bitcast i8* %210 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %239

; <label>:239                                     ; preds = %257, %235
  %node.0.i10 = phi %struct.slot_node* [ %237, %235 ], [ %259, %257 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %238, %235 ], [ %node.0.i10, %257 ] ; <%struct.slot_node*> [#uses=1]
  %240 = phi %struct.slot_node* [ %259, %257 ], [ %237, %235 ] ; <%struct.slot_node*> [#uses=1]
  %241 = icmp eq %struct.slot_node* %240, null    ; <i1> [#uses=1]
  br i1 %241, label %260, label %242

; <label>:242                                     ; preds = %239
  %243 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %244 = load i32** %243                          ; <i32*> [#uses=1]
  %245 = ptrtoint i32* %244 to i64                ; <i64> [#uses=1]
  %246 = sub i64 ptrtoint (i32* @__sym_neq to i64), %245 ; <i64> [#uses=1]
  %247 = icmp ult i64 %246, 4                     ; <i1> [#uses=1]
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %242
  %249 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %250 = load i32* %249                           ; <i32> [#uses=1]
  %251 = and i32 %250, 2                          ; <i32> [#uses=1]
  %252 = icmp eq i32 %251, 0                      ; <i1> [#uses=1]
  br i1 %252, label %255, label %253

; <label>:253                                     ; preds = %248
  %254 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %211, i8** %254
  br label %object_set_slot.exit13

; <label>:255                                     ; preds = %248
  %256 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_neq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:257                                     ; preds = %242
  %258 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %259 = load %struct.slot_node** %258            ; <%struct.slot_node*> [#uses=2]
  br label %239

; <label>:260                                     ; preds = %239
  %261 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %262 = icmp eq i8* %261, null                   ; <i1> [#uses=1]
  br i1 %262, label %263, label %mem_alloc.exit.i12

; <label>:263                                     ; preds = %260
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %260
  %264 = bitcast i8* %261 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %265 = getelementptr i8* %261, i64 8            ; <i8*> [#uses=1]
  %266 = bitcast i8* %265 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %266
  %267 = getelementptr i8* %261, i64 16           ; <i8*> [#uses=1]
  %268 = bitcast i8* %267 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_neq, i32** %268
  %269 = getelementptr i8* %261, i64 24           ; <i8*> [#uses=1]
  %270 = bitcast i8* %269 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %270
  %271 = bitcast i8* %261 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %271
  %272 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %264, %struct.slot_node** %272
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %255, %253, %object_set_delegate.exit.i9
  %273 = load i8** @null_object.cached_null       ; <i8*> [#uses=5]
  %274 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %275 = icmp eq i8* %274, null                   ; <i1> [#uses=1]
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:277                                     ; preds = %object_set_slot.exit13
  %278 = getelementptr i8* %274, i64 12           ; <i8*> [#uses=1]
  %279 = bitcast i8* %278 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %279
  %280 = getelementptr i8* %274, i64 8            ; <i8*> [#uses=1]
  %281 = bitcast i8* %280 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %281
  %282 = getelementptr i8* %274, i64 24           ; <i8*> [#uses=1]
  %283 = bitcast i8* %282 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @null_eq to i8*), i8** %283
  %284 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %285 = load i32* %281                           ; <i32> [#uses=1]
  %286 = icmp eq i32 %285, 364969966              ; <i1> [#uses=1]
  br i1 %286, label %closure_object.exit5, label %.thread25

.thread25:                                        ; preds = %277
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %277
  %287 = getelementptr i8* %274, i64 16           ; <i8*> [#uses=1]
  %288 = bitcast i8* %287 to i8**                 ; <i8**> [#uses=1]
  store i8* %284, i8** %288
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_eq to i64)), i64 4), label %289, label %298

; <label>:289                                     ; preds = %closure_object.exit5
  %290 = icmp eq i8* %273, null                   ; <i1> [#uses=1]
  br i1 %290, label %.thread.i, label %291

; <label>:291                                     ; preds = %289
  %292 = getelementptr i8* %273, i64 8            ; <i8*> [#uses=1]
  %293 = bitcast i8* %292 to i32*                 ; <i32*> [#uses=1]
  %294 = load i32* %293                           ; <i32> [#uses=1]
  %295 = icmp eq i32 %294, 364969966              ; <i1> [#uses=1]
  br i1 %295, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %291, %289
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %291
  %296 = getelementptr i8* %273, i64 16           ; <i8*> [#uses=1]
  %297 = bitcast i8* %296 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %297
  br label %object_set_slot.exit

; <label>:298                                     ; preds = %closure_object.exit5
  %299 = bitcast i8* %273 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %300 = load %struct.slot_node** %299            ; <%struct.slot_node*> [#uses=2]
  %301 = bitcast i8* %273 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %302

; <label>:302                                     ; preds = %320, %298
  %node.0.i = phi %struct.slot_node* [ %300, %298 ], [ %322, %320 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %301, %298 ], [ %node.0.i, %320 ] ; <%struct.slot_node*> [#uses=1]
  %303 = phi %struct.slot_node* [ %322, %320 ], [ %300, %298 ] ; <%struct.slot_node*> [#uses=1]
  %304 = icmp eq %struct.slot_node* %303, null    ; <i1> [#uses=1]
  br i1 %304, label %323, label %305

; <label>:305                                     ; preds = %302
  %306 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %307 = load i32** %306                          ; <i32*> [#uses=1]
  %308 = ptrtoint i32* %307 to i64                ; <i64> [#uses=1]
  %309 = sub i64 ptrtoint (i32* @__sym_eq to i64), %308 ; <i64> [#uses=1]
  %310 = icmp ult i64 %309, 4                     ; <i1> [#uses=1]
  br i1 %310, label %311, label %320

; <label>:311                                     ; preds = %305
  %312 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %313 = load i32* %312                           ; <i32> [#uses=1]
  %314 = and i32 %313, 2                          ; <i32> [#uses=1]
  %315 = icmp eq i32 %314, 0                      ; <i1> [#uses=1]
  br i1 %315, label %318, label %316

; <label>:316                                     ; preds = %311
  %317 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %274, i8** %317
  br label %object_set_slot.exit

; <label>:318                                     ; preds = %311
  %319 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_eq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:320                                     ; preds = %305
  %321 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %322 = load %struct.slot_node** %321            ; <%struct.slot_node*> [#uses=2]
  br label %302

; <label>:323                                     ; preds = %302
  %324 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %325 = icmp eq i8* %324, null                   ; <i1> [#uses=1]
  br i1 %325, label %326, label %mem_alloc.exit.i1

; <label>:326                                     ; preds = %323
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i1:                                ; preds = %323
  %327 = bitcast i8* %324 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %328 = getelementptr i8* %324, i64 8            ; <i8*> [#uses=1]
  %329 = bitcast i8* %328 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %329
  %330 = getelementptr i8* %324, i64 16           ; <i8*> [#uses=1]
  %331 = bitcast i8* %330 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_eq, i32** %331
  %332 = getelementptr i8* %324, i64 24           ; <i8*> [#uses=1]
  %333 = bitcast i8* %332 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %333
  %334 = bitcast i8* %324 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %334
  %335 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %327, %struct.slot_node** %335
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i1, %318, %316, %object_set_delegate.exit.i, %3
  %336 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @null_cache_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @null_object.cached_null      ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:337                                     ; preds = %0
  ret i8* %1
}

define internal i8* @null_to_s(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([5 x i8]* @"\01LC26", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @null_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([5 x i8]* @"\01LC26", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @null_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @null_neq(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = icmp ne i8* %storemerge.i, %self          ; <i1> [#uses=1]
  %17 = zext i1 %16 to i32                        ; <i32> [#uses=1]
  %18 = tail call fastcc i8* @bool_object(i32 %17) ; <i8*> [#uses=1]
  ret i8* %18
}

define internal i8* @null_eq(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = icmp eq i8* %storemerge.i, %self          ; <i1> [#uses=1]
  %17 = zext i1 %16 to i32                        ; <i32> [#uses=1]
  %18 = tail call fastcc i8* @bool_object(i32 %17) ; <i8*> [#uses=1]
  ret i8* %18
}

define internal i8* @null_wrapped(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  ret i8* %1
}

define internal fastcc i8* @closure_prototype() nounwind {
  %1 = load i8** @closure_prototype.prototype     ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %211

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @closure_prototype_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @closure_prototype.prototype     ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit22

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 512, i32* %13
  %14 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  store i8* %8, i8** @closure_prototype.prototype
  %16 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %17 = load i32* %15                             ; <i32> [#uses=1]
  %18 = icmp eq i32 %17, 364969966                ; <i1> [#uses=1]
  br i1 %18, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %11
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %11
  %19 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %20
  %21 = load i8** @closure_prototype.prototype    ; <i8*> [#uses=5]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %object_set_delegate.exit
  %26 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %27
  %28 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %29
  %30 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @closure_to_s to i8*), i8** %31
  %32 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %33 = load i32* %29                             ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 364969966                ; <i1> [#uses=1]
  br i1 %34, label %closure_object.exit10, label %.thread11

.thread11:                                        ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %25
  %35 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %32, i8** %36
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %37, label %46

; <label>:37                                      ; preds = %closure_object.exit10
  %38 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %38, label %.thread.i, label %39

; <label>:39                                      ; preds = %37
  %40 = getelementptr i8* %21, i64 8              ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 364969966                ; <i1> [#uses=1]
  br i1 %43, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %39, %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %39
  %44 = getelementptr i8* %21, i64 16             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %45
  br label %object_set_slot.exit

; <label>:46                                      ; preds = %closure_object.exit10
  %47 = bitcast i8* %21 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %48 = load %struct.slot_node** %47              ; <%struct.slot_node*> [#uses=2]
  %49 = bitcast i8* %21 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %50

; <label>:50                                      ; preds = %68, %46
  %node.0.i = phi %struct.slot_node* [ %48, %46 ], [ %70, %68 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %49, %46 ], [ %node.0.i, %68 ] ; <%struct.slot_node*> [#uses=1]
  %51 = phi %struct.slot_node* [ %70, %68 ], [ %48, %46 ] ; <%struct.slot_node*> [#uses=1]
  %52 = icmp eq %struct.slot_node* %51, null      ; <i1> [#uses=1]
  br i1 %52, label %71, label %53

; <label>:53                                      ; preds = %50
  %54 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %55 = load i32** %54                            ; <i32*> [#uses=1]
  %56 = ptrtoint i32* %55 to i64                  ; <i64> [#uses=1]
  %57 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %56 ; <i64> [#uses=1]
  %58 = icmp ult i64 %57, 4                       ; <i1> [#uses=1]
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %53
  %60 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %61 = load i32* %60                             ; <i32> [#uses=1]
  %62 = and i32 %61, 2                            ; <i32> [#uses=1]
  %63 = icmp eq i32 %62, 0                        ; <i1> [#uses=1]
  br i1 %63, label %66, label %64

; <label>:64                                      ; preds = %59
  %65 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %22, i8** %65
  br label %object_set_slot.exit

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:68                                      ; preds = %53
  %69 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %70 = load %struct.slot_node** %69              ; <%struct.slot_node*> [#uses=2]
  br label %50

; <label>:71                                      ; preds = %50
  %72 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %mem_alloc.exit.i4

; <label>:74                                      ; preds = %71
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i4:                                ; preds = %71
  %75 = bitcast i8* %72 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %76 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %77
  %78 = getelementptr i8* %72, i64 16             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %79
  %80 = getelementptr i8* %72, i64 24             ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %81
  %82 = bitcast i8* %72 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %82
  %83 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %75, %struct.slot_node** %83
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i4, %66, %64, %object_set_delegate.exit.i
  %84 = load i8** @closure_prototype.prototype    ; <i8*> [#uses=5]
  %85 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %object_set_slot.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %object_set_slot.exit
  %89 = getelementptr i8* %85, i64 12             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %90
  %91 = getelementptr i8* %85, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %92
  %93 = getelementptr i8* %85, i64 24             ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @closure_clone to i8*), i8** %94
  %95 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %96 = load i32* %92                             ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 364969966                ; <i1> [#uses=1]
  br i1 %97, label %closure_object.exit5, label %.thread12

.thread12:                                        ; preds = %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %88
  %98 = getelementptr i8* %85, i64 16             ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  store i8* %95, i8** %99
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %100, label %109

; <label>:100                                     ; preds = %closure_object.exit5
  %101 = icmp eq i8* %84, null                    ; <i1> [#uses=1]
  br i1 %101, label %.thread.i8, label %102

; <label>:102                                     ; preds = %100
  %103 = getelementptr i8* %84, i64 8             ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i32*                 ; <i32*> [#uses=1]
  %105 = load i32* %104                           ; <i32> [#uses=1]
  %106 = icmp eq i32 %105, 364969966              ; <i1> [#uses=1]
  br i1 %106, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %102, %100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %102
  %107 = getelementptr i8* %84, i64 16            ; <i8*> [#uses=1]
  %108 = bitcast i8* %107 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %108
  br label %object_set_slot.exit13

; <label>:109                                     ; preds = %closure_object.exit5
  %110 = bitcast i8* %84 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %111 = load %struct.slot_node** %110            ; <%struct.slot_node*> [#uses=2]
  %112 = bitcast i8* %84 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %113

; <label>:113                                     ; preds = %131, %109
  %node.0.i10 = phi %struct.slot_node* [ %111, %109 ], [ %133, %131 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %112, %109 ], [ %node.0.i10, %131 ] ; <%struct.slot_node*> [#uses=1]
  %114 = phi %struct.slot_node* [ %133, %131 ], [ %111, %109 ] ; <%struct.slot_node*> [#uses=1]
  %115 = icmp eq %struct.slot_node* %114, null    ; <i1> [#uses=1]
  br i1 %115, label %134, label %116

; <label>:116                                     ; preds = %113
  %117 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %118 = load i32** %117                          ; <i32*> [#uses=1]
  %119 = ptrtoint i32* %118 to i64                ; <i64> [#uses=1]
  %120 = sub i64 ptrtoint (i32* @__sym_clone to i64), %119 ; <i64> [#uses=1]
  %121 = icmp ult i64 %120, 4                     ; <i1> [#uses=1]
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %116
  %123 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %124 = load i32* %123                           ; <i32> [#uses=1]
  %125 = and i32 %124, 2                          ; <i32> [#uses=1]
  %126 = icmp eq i32 %125, 0                      ; <i1> [#uses=1]
  br i1 %126, label %129, label %127

; <label>:127                                     ; preds = %122
  %128 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %85, i8** %128
  br label %object_set_slot.exit13

; <label>:129                                     ; preds = %122
  %130 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:131                                     ; preds = %116
  %132 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %133 = load %struct.slot_node** %132            ; <%struct.slot_node*> [#uses=2]
  br label %113

; <label>:134                                     ; preds = %113
  %135 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %136 = icmp eq i8* %135, null                   ; <i1> [#uses=1]
  br i1 %136, label %137, label %mem_alloc.exit.i12

; <label>:137                                     ; preds = %134
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %134
  %138 = bitcast i8* %135 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %139 = getelementptr i8* %135, i64 8            ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %140
  %141 = getelementptr i8* %135, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %142
  %143 = getelementptr i8* %135, i64 24           ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %144
  %145 = bitcast i8* %135 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %145
  %146 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %138, %struct.slot_node** %146
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %129, %127, %object_set_delegate.exit.i9
  %147 = load i8** @closure_prototype.prototype   ; <i8*> [#uses=5]
  %148 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %149 = icmp eq i8* %148, null                   ; <i1> [#uses=1]
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %object_set_slot.exit13
  %152 = getelementptr i8* %148, i64 12           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %153
  %154 = getelementptr i8* %148, i64 8            ; <i8*> [#uses=1]
  %155 = bitcast i8* %154 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %155
  %156 = getelementptr i8* %148, i64 24           ; <i8*> [#uses=1]
  %157 = bitcast i8* %156 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @closure_class to i8*), i8** %157
  %158 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %159 = load i32* %155                           ; <i32> [#uses=1]
  %160 = icmp eq i32 %159, 364969966              ; <i1> [#uses=1]
  br i1 %160, label %closure_object.exit, label %.thread13

.thread13:                                        ; preds = %151
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %151
  %161 = getelementptr i8* %148, i64 16           ; <i8*> [#uses=1]
  %162 = bitcast i8* %161 to i8**                 ; <i8**> [#uses=1]
  store i8* %158, i8** %162
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %163, label %172

; <label>:163                                     ; preds = %closure_object.exit
  %164 = icmp eq i8* %147, null                   ; <i1> [#uses=1]
  br i1 %164, label %.thread.i17, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr i8* %147, i64 8            ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i32*                 ; <i32*> [#uses=1]
  %168 = load i32* %167                           ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 364969966              ; <i1> [#uses=1]
  br i1 %169, label %object_set_delegate.exit.i18, label %.thread.i17

.thread.i17:                                      ; preds = %165, %163
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i18:                     ; preds = %165
  %170 = getelementptr i8* %147, i64 16           ; <i8*> [#uses=1]
  %171 = bitcast i8* %170 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %171
  br label %object_set_slot.exit22

; <label>:172                                     ; preds = %closure_object.exit
  %173 = bitcast i8* %147 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %174 = load %struct.slot_node** %173            ; <%struct.slot_node*> [#uses=2]
  %175 = bitcast i8* %147 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %176

; <label>:176                                     ; preds = %194, %172
  %node.0.i19 = phi %struct.slot_node* [ %174, %172 ], [ %196, %194 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i20 = phi %struct.slot_node* [ %175, %172 ], [ %node.0.i19, %194 ] ; <%struct.slot_node*> [#uses=1]
  %177 = phi %struct.slot_node* [ %196, %194 ], [ %174, %172 ] ; <%struct.slot_node*> [#uses=1]
  %178 = icmp eq %struct.slot_node* %177, null    ; <i1> [#uses=1]
  br i1 %178, label %197, label %179

; <label>:179                                     ; preds = %176
  %180 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 6 ; <i32**> [#uses=1]
  %181 = load i32** %180                          ; <i32*> [#uses=1]
  %182 = ptrtoint i32* %181 to i64                ; <i64> [#uses=1]
  %183 = sub i64 ptrtoint (i32* @__sym_class to i64), %182 ; <i64> [#uses=1]
  %184 = icmp ult i64 %183, 4                     ; <i1> [#uses=1]
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %179
  %186 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 1 ; <i32*> [#uses=1]
  %187 = load i32* %186                           ; <i32> [#uses=1]
  %188 = and i32 %187, 2                          ; <i32> [#uses=1]
  %189 = icmp eq i32 %188, 0                      ; <i1> [#uses=1]
  br i1 %189, label %192, label %190

; <label>:190                                     ; preds = %185
  %191 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %148, i8** %191
  br label %object_set_slot.exit22

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit22

; <label>:194                                     ; preds = %179
  %195 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %196 = load %struct.slot_node** %195            ; <%struct.slot_node*> [#uses=2]
  br label %176

; <label>:197                                     ; preds = %176
  %198 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %199 = icmp eq i8* %198, null                   ; <i1> [#uses=1]
  br i1 %199, label %200, label %mem_alloc.exit.i21

; <label>:200                                     ; preds = %197
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i21:                               ; preds = %197
  %201 = bitcast i8* %198 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %202 = getelementptr i8* %198, i64 8            ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %203
  %204 = getelementptr i8* %198, i64 16           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %205
  %206 = getelementptr i8* %198, i64 24           ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %207
  %208 = bitcast i8* %198 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %208
  %209 = getelementptr %struct.slot_node* %last_node.0.i20, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %201, %struct.slot_node** %209
  br label %object_set_slot.exit22

object_set_slot.exit22:                           ; preds = %mem_alloc.exit.i21, %192, %190, %object_set_delegate.exit.i18, %3
  %210 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @closure_prototype_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @closure_prototype.prototype  ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:211                                     ; preds = %0
  ret i8* %1
}

define internal i8* @closure_to_s(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %buf = alloca [128 x i8], align 1               ; <[128 x i8]*> [#uses=1]
  %1 = getelementptr [128 x i8]* %buf, i64 0, i64 0 ; <i8*> [#uses=2]
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 -1, i8* getelementptr inbounds ([11 x i8]* @"\01LC433", i64 0, i64 0), i8* %self) nounwind ; <i32> [#uses=0]
  %3 = call fastcc i8* @string_object(i8* %1)     ; <i8*> [#uses=1]
  ret i8* %3
}

define internal i8* @closure_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @closure_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([8 x i8]* @"\01LC332", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

declare i32 @__sprintf_chk(i8*, i32, i64, i8*, ...)

define internal fastcc i8* @int_prototype() nounwind {
  %1 = load i8** @int_prototype.prototype         ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %967

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @int_cache_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @int_prototype.prototype         ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 512, i32* %13
  %14 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  store i8* %8, i8** @int_prototype.prototype
  %16 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %17 = load i32* %15                             ; <i32> [#uses=1]
  %18 = icmp eq i32 %17, 364969966                ; <i1> [#uses=1]
  br i1 %18, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %11
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %11
  %19 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %20
  %21 = load i8** @int_prototype.prototype        ; <i8*> [#uses=5]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %object_set_delegate.exit
  %26 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %27
  %28 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %29
  %30 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_to_s to i8*), i8** %31
  %32 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %33 = load i32* %29                             ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 364969966                ; <i1> [#uses=1]
  br i1 %34, label %closure_object.exit, label %.thread71

.thread71:                                        ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %25
  %35 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %32, i8** %36
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %37, label %46

; <label>:37                                      ; preds = %closure_object.exit
  %38 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %38, label %.thread.i14, label %39

; <label>:39                                      ; preds = %37
  %40 = getelementptr i8* %21, i64 8              ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 364969966                ; <i1> [#uses=1]
  br i1 %43, label %object_set_delegate.exit.i15, label %.thread.i14

.thread.i14:                                      ; preds = %39, %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i15:                     ; preds = %39
  %44 = getelementptr i8* %21, i64 16             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %45
  br label %object_set_slot.exit19

; <label>:46                                      ; preds = %closure_object.exit
  %47 = bitcast i8* %21 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %48 = load %struct.slot_node** %47              ; <%struct.slot_node*> [#uses=2]
  %49 = bitcast i8* %21 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %50

; <label>:50                                      ; preds = %68, %46
  %node.0.i16 = phi %struct.slot_node* [ %48, %46 ], [ %70, %68 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i17 = phi %struct.slot_node* [ %49, %46 ], [ %node.0.i16, %68 ] ; <%struct.slot_node*> [#uses=1]
  %51 = phi %struct.slot_node* [ %70, %68 ], [ %48, %46 ] ; <%struct.slot_node*> [#uses=1]
  %52 = icmp eq %struct.slot_node* %51, null      ; <i1> [#uses=1]
  br i1 %52, label %71, label %53

; <label>:53                                      ; preds = %50
  %54 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 6 ; <i32**> [#uses=1]
  %55 = load i32** %54                            ; <i32*> [#uses=1]
  %56 = ptrtoint i32* %55 to i64                  ; <i64> [#uses=1]
  %57 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %56 ; <i64> [#uses=1]
  %58 = icmp ult i64 %57, 4                       ; <i1> [#uses=1]
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %53
  %60 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 1 ; <i32*> [#uses=1]
  %61 = load i32* %60                             ; <i32> [#uses=1]
  %62 = and i32 %61, 2                            ; <i32> [#uses=1]
  %63 = icmp eq i32 %62, 0                        ; <i1> [#uses=1]
  br i1 %63, label %66, label %64

; <label>:64                                      ; preds = %59
  %65 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %22, i8** %65
  br label %object_set_slot.exit19

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit19

; <label>:68                                      ; preds = %53
  %69 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %70 = load %struct.slot_node** %69              ; <%struct.slot_node*> [#uses=2]
  br label %50

; <label>:71                                      ; preds = %50
  %72 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %mem_alloc.exit.i18

; <label>:74                                      ; preds = %71
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i18:                               ; preds = %71
  %75 = bitcast i8* %72 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %76 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %77
  %78 = getelementptr i8* %72, i64 16             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %79
  %80 = getelementptr i8* %72, i64 24             ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %81
  %82 = bitcast i8* %72 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %82
  %83 = getelementptr %struct.slot_node* %last_node.0.i17, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %75, %struct.slot_node** %83
  br label %object_set_slot.exit19

object_set_slot.exit19:                           ; preds = %mem_alloc.exit.i18, %66, %64, %object_set_delegate.exit.i15
  %84 = load i8** @int_prototype.prototype        ; <i8*> [#uses=5]
  %85 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %object_set_slot.exit19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %object_set_slot.exit19
  %89 = getelementptr i8* %85, i64 12             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %90
  %91 = getelementptr i8* %85, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %92
  %93 = getelementptr i8* %85, i64 24             ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_class to i8*), i8** %94
  %95 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %96 = load i32* %92                             ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 364969966                ; <i1> [#uses=1]
  br i1 %97, label %closure_object.exit10, label %.thread72

.thread72:                                        ; preds = %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %88
  %98 = getelementptr i8* %85, i64 16             ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  store i8* %95, i8** %99
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %100, label %109

; <label>:100                                     ; preds = %closure_object.exit10
  %101 = icmp eq i8* %84, null                    ; <i1> [#uses=1]
  br i1 %101, label %.thread.i41, label %102

; <label>:102                                     ; preds = %100
  %103 = getelementptr i8* %84, i64 8             ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i32*                 ; <i32*> [#uses=1]
  %105 = load i32* %104                           ; <i32> [#uses=1]
  %106 = icmp eq i32 %105, 364969966              ; <i1> [#uses=1]
  br i1 %106, label %object_set_delegate.exit.i42, label %.thread.i41

.thread.i41:                                      ; preds = %102, %100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i42:                     ; preds = %102
  %107 = getelementptr i8* %84, i64 16            ; <i8*> [#uses=1]
  %108 = bitcast i8* %107 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %108
  br label %object_set_slot.exit46

; <label>:109                                     ; preds = %closure_object.exit10
  %110 = bitcast i8* %84 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %111 = load %struct.slot_node** %110            ; <%struct.slot_node*> [#uses=2]
  %112 = bitcast i8* %84 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %113

; <label>:113                                     ; preds = %131, %109
  %node.0.i43 = phi %struct.slot_node* [ %111, %109 ], [ %133, %131 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i44 = phi %struct.slot_node* [ %112, %109 ], [ %node.0.i43, %131 ] ; <%struct.slot_node*> [#uses=1]
  %114 = phi %struct.slot_node* [ %133, %131 ], [ %111, %109 ] ; <%struct.slot_node*> [#uses=1]
  %115 = icmp eq %struct.slot_node* %114, null    ; <i1> [#uses=1]
  br i1 %115, label %134, label %116

; <label>:116                                     ; preds = %113
  %117 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 6 ; <i32**> [#uses=1]
  %118 = load i32** %117                          ; <i32*> [#uses=1]
  %119 = ptrtoint i32* %118 to i64                ; <i64> [#uses=1]
  %120 = sub i64 ptrtoint (i32* @__sym_class to i64), %119 ; <i64> [#uses=1]
  %121 = icmp ult i64 %120, 4                     ; <i1> [#uses=1]
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %116
  %123 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 1 ; <i32*> [#uses=1]
  %124 = load i32* %123                           ; <i32> [#uses=1]
  %125 = and i32 %124, 2                          ; <i32> [#uses=1]
  %126 = icmp eq i32 %125, 0                      ; <i1> [#uses=1]
  br i1 %126, label %129, label %127

; <label>:127                                     ; preds = %122
  %128 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %85, i8** %128
  br label %object_set_slot.exit46

; <label>:129                                     ; preds = %122
  %130 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit46

; <label>:131                                     ; preds = %116
  %132 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %133 = load %struct.slot_node** %132            ; <%struct.slot_node*> [#uses=2]
  br label %113

; <label>:134                                     ; preds = %113
  %135 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %136 = icmp eq i8* %135, null                   ; <i1> [#uses=1]
  br i1 %136, label %137, label %mem_alloc.exit.i45

; <label>:137                                     ; preds = %134
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i45:                               ; preds = %134
  %138 = bitcast i8* %135 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %139 = getelementptr i8* %135, i64 8            ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %140
  %141 = getelementptr i8* %135, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %142
  %143 = getelementptr i8* %135, i64 24           ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %144
  %145 = bitcast i8* %135 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %145
  %146 = getelementptr %struct.slot_node* %last_node.0.i44, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %138, %struct.slot_node** %146
  br label %object_set_slot.exit46

object_set_slot.exit46:                           ; preds = %mem_alloc.exit.i45, %129, %127, %object_set_delegate.exit.i42
  %147 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %148 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %149 = icmp eq i8* %148, null                   ; <i1> [#uses=1]
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %object_set_slot.exit46
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %object_set_slot.exit46
  %152 = getelementptr i8* %148, i64 12           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %153
  %154 = getelementptr i8* %148, i64 8            ; <i8*> [#uses=1]
  %155 = bitcast i8* %154 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %155
  %156 = getelementptr i8* %148, i64 24           ; <i8*> [#uses=1]
  %157 = bitcast i8* %156 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_clone to i8*), i8** %157
  %158 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %159 = load i32* %155                           ; <i32> [#uses=1]
  %160 = icmp eq i32 %159, 364969966              ; <i1> [#uses=1]
  br i1 %160, label %closure_object.exit20, label %.thread73

.thread73:                                        ; preds = %151
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %151
  %161 = getelementptr i8* %148, i64 16           ; <i8*> [#uses=1]
  %162 = bitcast i8* %161 to i8**                 ; <i8**> [#uses=1]
  store i8* %158, i8** %162
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %163, label %172

; <label>:163                                     ; preds = %closure_object.exit20
  %164 = icmp eq i8* %147, null                   ; <i1> [#uses=1]
  br i1 %164, label %.thread.i68, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr i8* %147, i64 8            ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i32*                 ; <i32*> [#uses=1]
  %168 = load i32* %167                           ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 364969966              ; <i1> [#uses=1]
  br i1 %169, label %object_set_delegate.exit.i69, label %.thread.i68

.thread.i68:                                      ; preds = %165, %163
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i69:                     ; preds = %165
  %170 = getelementptr i8* %147, i64 16           ; <i8*> [#uses=1]
  %171 = bitcast i8* %170 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %171
  br label %object_set_slot.exit73

; <label>:172                                     ; preds = %closure_object.exit20
  %173 = bitcast i8* %147 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %174 = load %struct.slot_node** %173            ; <%struct.slot_node*> [#uses=2]
  %175 = bitcast i8* %147 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %176

; <label>:176                                     ; preds = %194, %172
  %node.0.i70 = phi %struct.slot_node* [ %174, %172 ], [ %196, %194 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i71 = phi %struct.slot_node* [ %175, %172 ], [ %node.0.i70, %194 ] ; <%struct.slot_node*> [#uses=1]
  %177 = phi %struct.slot_node* [ %196, %194 ], [ %174, %172 ] ; <%struct.slot_node*> [#uses=1]
  %178 = icmp eq %struct.slot_node* %177, null    ; <i1> [#uses=1]
  br i1 %178, label %197, label %179

; <label>:179                                     ; preds = %176
  %180 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 6 ; <i32**> [#uses=1]
  %181 = load i32** %180                          ; <i32*> [#uses=1]
  %182 = ptrtoint i32* %181 to i64                ; <i64> [#uses=1]
  %183 = sub i64 ptrtoint (i32* @__sym_clone to i64), %182 ; <i64> [#uses=1]
  %184 = icmp ult i64 %183, 4                     ; <i1> [#uses=1]
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %179
  %186 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 1 ; <i32*> [#uses=1]
  %187 = load i32* %186                           ; <i32> [#uses=1]
  %188 = and i32 %187, 2                          ; <i32> [#uses=1]
  %189 = icmp eq i32 %188, 0                      ; <i1> [#uses=1]
  br i1 %189, label %192, label %190

; <label>:190                                     ; preds = %185
  %191 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %148, i8** %191
  br label %object_set_slot.exit73

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit73

; <label>:194                                     ; preds = %179
  %195 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %196 = load %struct.slot_node** %195            ; <%struct.slot_node*> [#uses=2]
  br label %176

; <label>:197                                     ; preds = %176
  %198 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %199 = icmp eq i8* %198, null                   ; <i1> [#uses=1]
  br i1 %199, label %200, label %mem_alloc.exit.i72

; <label>:200                                     ; preds = %197
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i72:                               ; preds = %197
  %201 = bitcast i8* %198 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %202 = getelementptr i8* %198, i64 8            ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %203
  %204 = getelementptr i8* %198, i64 16           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %205
  %206 = getelementptr i8* %198, i64 24           ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %207
  %208 = bitcast i8* %198 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %208
  %209 = getelementptr %struct.slot_node* %last_node.0.i71, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %201, %struct.slot_node** %209
  br label %object_set_slot.exit73

object_set_slot.exit73:                           ; preds = %mem_alloc.exit.i72, %192, %190, %object_set_delegate.exit.i69
  %210 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %211 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %212 = icmp eq i8* %211, null                   ; <i1> [#uses=1]
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %object_set_slot.exit73
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:214                                     ; preds = %object_set_slot.exit73
  %215 = getelementptr i8* %211, i64 12           ; <i8*> [#uses=1]
  %216 = bitcast i8* %215 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %216
  %217 = getelementptr i8* %211, i64 8            ; <i8*> [#uses=1]
  %218 = bitcast i8* %217 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %218
  %219 = getelementptr i8* %211, i64 24           ; <i8*> [#uses=1]
  %220 = bitcast i8* %219 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_lt to i8*), i8** %220
  %221 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %222 = load i32* %218                           ; <i32> [#uses=1]
  %223 = icmp eq i32 %222, 364969966              ; <i1> [#uses=1]
  br i1 %223, label %closure_object.exit30, label %.thread74

.thread74:                                        ; preds = %214
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit30:                            ; preds = %214
  %224 = getelementptr i8* %211, i64 16           ; <i8*> [#uses=1]
  %225 = bitcast i8* %224 to i8**                 ; <i8**> [#uses=1]
  store i8* %221, i8** %225
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_lt to i64)), i64 4), label %226, label %235

; <label>:226                                     ; preds = %closure_object.exit30
  %227 = icmp eq i8* %210, null                   ; <i1> [#uses=1]
  br i1 %227, label %.thread.i95, label %228

; <label>:228                                     ; preds = %226
  %229 = getelementptr i8* %210, i64 8            ; <i8*> [#uses=1]
  %230 = bitcast i8* %229 to i32*                 ; <i32*> [#uses=1]
  %231 = load i32* %230                           ; <i32> [#uses=1]
  %232 = icmp eq i32 %231, 364969966              ; <i1> [#uses=1]
  br i1 %232, label %object_set_delegate.exit.i96, label %.thread.i95

.thread.i95:                                      ; preds = %228, %226
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i96:                     ; preds = %228
  %233 = getelementptr i8* %210, i64 16           ; <i8*> [#uses=1]
  %234 = bitcast i8* %233 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %234
  br label %object_set_slot.exit100

; <label>:235                                     ; preds = %closure_object.exit30
  %236 = bitcast i8* %210 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %237 = load %struct.slot_node** %236            ; <%struct.slot_node*> [#uses=2]
  %238 = bitcast i8* %210 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %239

; <label>:239                                     ; preds = %257, %235
  %node.0.i97 = phi %struct.slot_node* [ %237, %235 ], [ %259, %257 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i98 = phi %struct.slot_node* [ %238, %235 ], [ %node.0.i97, %257 ] ; <%struct.slot_node*> [#uses=1]
  %240 = phi %struct.slot_node* [ %259, %257 ], [ %237, %235 ] ; <%struct.slot_node*> [#uses=1]
  %241 = icmp eq %struct.slot_node* %240, null    ; <i1> [#uses=1]
  br i1 %241, label %260, label %242

; <label>:242                                     ; preds = %239
  %243 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 6 ; <i32**> [#uses=1]
  %244 = load i32** %243                          ; <i32*> [#uses=1]
  %245 = ptrtoint i32* %244 to i64                ; <i64> [#uses=1]
  %246 = sub i64 ptrtoint (i32* @__sym_lt to i64), %245 ; <i64> [#uses=1]
  %247 = icmp ult i64 %246, 4                     ; <i1> [#uses=1]
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %242
  %249 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 1 ; <i32*> [#uses=1]
  %250 = load i32* %249                           ; <i32> [#uses=1]
  %251 = and i32 %250, 2                          ; <i32> [#uses=1]
  %252 = icmp eq i32 %251, 0                      ; <i1> [#uses=1]
  br i1 %252, label %255, label %253

; <label>:253                                     ; preds = %248
  %254 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %211, i8** %254
  br label %object_set_slot.exit100

; <label>:255                                     ; preds = %248
  %256 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_lt) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit100

; <label>:257                                     ; preds = %242
  %258 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %259 = load %struct.slot_node** %258            ; <%struct.slot_node*> [#uses=2]
  br label %239

; <label>:260                                     ; preds = %239
  %261 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %262 = icmp eq i8* %261, null                   ; <i1> [#uses=1]
  br i1 %262, label %263, label %mem_alloc.exit.i99

; <label>:263                                     ; preds = %260
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i99:                               ; preds = %260
  %264 = bitcast i8* %261 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %265 = getelementptr i8* %261, i64 8            ; <i8*> [#uses=1]
  %266 = bitcast i8* %265 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %266
  %267 = getelementptr i8* %261, i64 16           ; <i8*> [#uses=1]
  %268 = bitcast i8* %267 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_lt, i32** %268
  %269 = getelementptr i8* %261, i64 24           ; <i8*> [#uses=1]
  %270 = bitcast i8* %269 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %270
  %271 = bitcast i8* %261 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %271
  %272 = getelementptr %struct.slot_node* %last_node.0.i98, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %264, %struct.slot_node** %272
  br label %object_set_slot.exit100

object_set_slot.exit100:                          ; preds = %mem_alloc.exit.i99, %255, %253, %object_set_delegate.exit.i96
  %273 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %274 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %275 = icmp eq i8* %274, null                   ; <i1> [#uses=1]
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %object_set_slot.exit100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:277                                     ; preds = %object_set_slot.exit100
  %278 = getelementptr i8* %274, i64 12           ; <i8*> [#uses=1]
  %279 = bitcast i8* %278 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %279
  %280 = getelementptr i8* %274, i64 8            ; <i8*> [#uses=1]
  %281 = bitcast i8* %280 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %281
  %282 = getelementptr i8* %274, i64 24           ; <i8*> [#uses=1]
  %283 = bitcast i8* %282 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_le to i8*), i8** %283
  %284 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %285 = load i32* %281                           ; <i32> [#uses=1]
  %286 = icmp eq i32 %285, 364969966              ; <i1> [#uses=1]
  br i1 %286, label %closure_object.exit40, label %.thread75

.thread75:                                        ; preds = %277
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit40:                            ; preds = %277
  %287 = getelementptr i8* %274, i64 16           ; <i8*> [#uses=1]
  %288 = bitcast i8* %287 to i8**                 ; <i8**> [#uses=1]
  store i8* %284, i8** %288
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_le to i64)), i64 4), label %289, label %298

; <label>:289                                     ; preds = %closure_object.exit40
  %290 = icmp eq i8* %273, null                   ; <i1> [#uses=1]
  br i1 %290, label %.thread.i122, label %291

; <label>:291                                     ; preds = %289
  %292 = getelementptr i8* %273, i64 8            ; <i8*> [#uses=1]
  %293 = bitcast i8* %292 to i32*                 ; <i32*> [#uses=1]
  %294 = load i32* %293                           ; <i32> [#uses=1]
  %295 = icmp eq i32 %294, 364969966              ; <i1> [#uses=1]
  br i1 %295, label %object_set_delegate.exit.i123, label %.thread.i122

.thread.i122:                                     ; preds = %291, %289
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i123:                    ; preds = %291
  %296 = getelementptr i8* %273, i64 16           ; <i8*> [#uses=1]
  %297 = bitcast i8* %296 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %297
  br label %object_set_slot.exit127

; <label>:298                                     ; preds = %closure_object.exit40
  %299 = bitcast i8* %273 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %300 = load %struct.slot_node** %299            ; <%struct.slot_node*> [#uses=2]
  %301 = bitcast i8* %273 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %302

; <label>:302                                     ; preds = %320, %298
  %node.0.i124 = phi %struct.slot_node* [ %300, %298 ], [ %322, %320 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i125 = phi %struct.slot_node* [ %301, %298 ], [ %node.0.i124, %320 ] ; <%struct.slot_node*> [#uses=1]
  %303 = phi %struct.slot_node* [ %322, %320 ], [ %300, %298 ] ; <%struct.slot_node*> [#uses=1]
  %304 = icmp eq %struct.slot_node* %303, null    ; <i1> [#uses=1]
  br i1 %304, label %323, label %305

; <label>:305                                     ; preds = %302
  %306 = getelementptr %struct.slot_node* %node.0.i124, i64 0, i32 6 ; <i32**> [#uses=1]
  %307 = load i32** %306                          ; <i32*> [#uses=1]
  %308 = ptrtoint i32* %307 to i64                ; <i64> [#uses=1]
  %309 = sub i64 ptrtoint (i32* @__sym_le to i64), %308 ; <i64> [#uses=1]
  %310 = icmp ult i64 %309, 4                     ; <i1> [#uses=1]
  br i1 %310, label %311, label %320

; <label>:311                                     ; preds = %305
  %312 = getelementptr %struct.slot_node* %node.0.i124, i64 0, i32 1 ; <i32*> [#uses=1]
  %313 = load i32* %312                           ; <i32> [#uses=1]
  %314 = and i32 %313, 2                          ; <i32> [#uses=1]
  %315 = icmp eq i32 %314, 0                      ; <i1> [#uses=1]
  br i1 %315, label %318, label %316

; <label>:316                                     ; preds = %311
  %317 = getelementptr %struct.slot_node* %node.0.i124, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %274, i8** %317
  br label %object_set_slot.exit127

; <label>:318                                     ; preds = %311
  %319 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_le) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit127

; <label>:320                                     ; preds = %305
  %321 = getelementptr %struct.slot_node* %node.0.i124, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %322 = load %struct.slot_node** %321            ; <%struct.slot_node*> [#uses=2]
  br label %302

; <label>:323                                     ; preds = %302
  %324 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %325 = icmp eq i8* %324, null                   ; <i1> [#uses=1]
  br i1 %325, label %326, label %mem_alloc.exit.i126

; <label>:326                                     ; preds = %323
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i126:                              ; preds = %323
  %327 = bitcast i8* %324 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %328 = getelementptr i8* %324, i64 8            ; <i8*> [#uses=1]
  %329 = bitcast i8* %328 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %329
  %330 = getelementptr i8* %324, i64 16           ; <i8*> [#uses=1]
  %331 = bitcast i8* %330 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_le, i32** %331
  %332 = getelementptr i8* %324, i64 24           ; <i8*> [#uses=1]
  %333 = bitcast i8* %332 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %333
  %334 = bitcast i8* %324 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %334
  %335 = getelementptr %struct.slot_node* %last_node.0.i125, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %327, %struct.slot_node** %335
  br label %object_set_slot.exit127

object_set_slot.exit127:                          ; preds = %mem_alloc.exit.i126, %318, %316, %object_set_delegate.exit.i123
  %336 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %337 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %338 = icmp eq i8* %337, null                   ; <i1> [#uses=1]
  br i1 %338, label %339, label %340

; <label>:339                                     ; preds = %object_set_slot.exit127
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:340                                     ; preds = %object_set_slot.exit127
  %341 = getelementptr i8* %337, i64 12           ; <i8*> [#uses=1]
  %342 = bitcast i8* %341 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %342
  %343 = getelementptr i8* %337, i64 8            ; <i8*> [#uses=1]
  %344 = bitcast i8* %343 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %344
  %345 = getelementptr i8* %337, i64 24           ; <i8*> [#uses=1]
  %346 = bitcast i8* %345 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_gt to i8*), i8** %346
  %347 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %348 = load i32* %344                           ; <i32> [#uses=1]
  %349 = icmp eq i32 %348, 364969966              ; <i1> [#uses=1]
  br i1 %349, label %closure_object.exit50, label %.thread76

.thread76:                                        ; preds = %340
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit50:                            ; preds = %340
  %350 = getelementptr i8* %337, i64 16           ; <i8*> [#uses=1]
  %351 = bitcast i8* %350 to i8**                 ; <i8**> [#uses=1]
  store i8* %347, i8** %351
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_gt to i64)), i64 4), label %352, label %361

; <label>:352                                     ; preds = %closure_object.exit50
  %353 = icmp eq i8* %336, null                   ; <i1> [#uses=1]
  br i1 %353, label %.thread.i116, label %354

; <label>:354                                     ; preds = %352
  %355 = getelementptr i8* %336, i64 8            ; <i8*> [#uses=1]
  %356 = bitcast i8* %355 to i32*                 ; <i32*> [#uses=1]
  %357 = load i32* %356                           ; <i32> [#uses=1]
  %358 = icmp eq i32 %357, 364969966              ; <i1> [#uses=1]
  br i1 %358, label %object_set_delegate.exit.i117, label %.thread.i116

.thread.i116:                                     ; preds = %354, %352
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i117:                    ; preds = %354
  %359 = getelementptr i8* %336, i64 16           ; <i8*> [#uses=1]
  %360 = bitcast i8* %359 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %360
  br label %object_set_slot.exit121

; <label>:361                                     ; preds = %closure_object.exit50
  %362 = bitcast i8* %336 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %363 = load %struct.slot_node** %362            ; <%struct.slot_node*> [#uses=2]
  %364 = bitcast i8* %336 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %365

; <label>:365                                     ; preds = %383, %361
  %node.0.i118 = phi %struct.slot_node* [ %363, %361 ], [ %385, %383 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i119 = phi %struct.slot_node* [ %364, %361 ], [ %node.0.i118, %383 ] ; <%struct.slot_node*> [#uses=1]
  %366 = phi %struct.slot_node* [ %385, %383 ], [ %363, %361 ] ; <%struct.slot_node*> [#uses=1]
  %367 = icmp eq %struct.slot_node* %366, null    ; <i1> [#uses=1]
  br i1 %367, label %386, label %368

; <label>:368                                     ; preds = %365
  %369 = getelementptr %struct.slot_node* %node.0.i118, i64 0, i32 6 ; <i32**> [#uses=1]
  %370 = load i32** %369                          ; <i32*> [#uses=1]
  %371 = ptrtoint i32* %370 to i64                ; <i64> [#uses=1]
  %372 = sub i64 ptrtoint (i32* @__sym_gt to i64), %371 ; <i64> [#uses=1]
  %373 = icmp ult i64 %372, 4                     ; <i1> [#uses=1]
  br i1 %373, label %374, label %383

; <label>:374                                     ; preds = %368
  %375 = getelementptr %struct.slot_node* %node.0.i118, i64 0, i32 1 ; <i32*> [#uses=1]
  %376 = load i32* %375                           ; <i32> [#uses=1]
  %377 = and i32 %376, 2                          ; <i32> [#uses=1]
  %378 = icmp eq i32 %377, 0                      ; <i1> [#uses=1]
  br i1 %378, label %381, label %379

; <label>:379                                     ; preds = %374
  %380 = getelementptr %struct.slot_node* %node.0.i118, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %337, i8** %380
  br label %object_set_slot.exit121

; <label>:381                                     ; preds = %374
  %382 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_gt) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit121

; <label>:383                                     ; preds = %368
  %384 = getelementptr %struct.slot_node* %node.0.i118, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %385 = load %struct.slot_node** %384            ; <%struct.slot_node*> [#uses=2]
  br label %365

; <label>:386                                     ; preds = %365
  %387 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %388 = icmp eq i8* %387, null                   ; <i1> [#uses=1]
  br i1 %388, label %389, label %mem_alloc.exit.i120

; <label>:389                                     ; preds = %386
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i120:                              ; preds = %386
  %390 = bitcast i8* %387 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %391 = getelementptr i8* %387, i64 8            ; <i8*> [#uses=1]
  %392 = bitcast i8* %391 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %392
  %393 = getelementptr i8* %387, i64 16           ; <i8*> [#uses=1]
  %394 = bitcast i8* %393 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_gt, i32** %394
  %395 = getelementptr i8* %387, i64 24           ; <i8*> [#uses=1]
  %396 = bitcast i8* %395 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %396
  %397 = bitcast i8* %387 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %397
  %398 = getelementptr %struct.slot_node* %last_node.0.i119, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %390, %struct.slot_node** %398
  br label %object_set_slot.exit121

object_set_slot.exit121:                          ; preds = %mem_alloc.exit.i120, %381, %379, %object_set_delegate.exit.i117
  %399 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %400 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %401 = icmp eq i8* %400, null                   ; <i1> [#uses=1]
  br i1 %401, label %402, label %403

; <label>:402                                     ; preds = %object_set_slot.exit121
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:403                                     ; preds = %object_set_slot.exit121
  %404 = getelementptr i8* %400, i64 12           ; <i8*> [#uses=1]
  %405 = bitcast i8* %404 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %405
  %406 = getelementptr i8* %400, i64 8            ; <i8*> [#uses=1]
  %407 = bitcast i8* %406 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %407
  %408 = getelementptr i8* %400, i64 24           ; <i8*> [#uses=1]
  %409 = bitcast i8* %408 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_ge to i8*), i8** %409
  %410 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %411 = load i32* %407                           ; <i32> [#uses=1]
  %412 = icmp eq i32 %411, 364969966              ; <i1> [#uses=1]
  br i1 %412, label %closure_object.exit60, label %.thread77

.thread77:                                        ; preds = %403
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit60:                            ; preds = %403
  %413 = getelementptr i8* %400, i64 16           ; <i8*> [#uses=1]
  %414 = bitcast i8* %413 to i8**                 ; <i8**> [#uses=1]
  store i8* %410, i8** %414
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_ge to i64)), i64 4), label %415, label %424

; <label>:415                                     ; preds = %closure_object.exit60
  %416 = icmp eq i8* %399, null                   ; <i1> [#uses=1]
  br i1 %416, label %.thread.i104, label %417

; <label>:417                                     ; preds = %415
  %418 = getelementptr i8* %399, i64 8            ; <i8*> [#uses=1]
  %419 = bitcast i8* %418 to i32*                 ; <i32*> [#uses=1]
  %420 = load i32* %419                           ; <i32> [#uses=1]
  %421 = icmp eq i32 %420, 364969966              ; <i1> [#uses=1]
  br i1 %421, label %object_set_delegate.exit.i105, label %.thread.i104

.thread.i104:                                     ; preds = %417, %415
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i105:                    ; preds = %417
  %422 = getelementptr i8* %399, i64 16           ; <i8*> [#uses=1]
  %423 = bitcast i8* %422 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %423
  br label %object_set_slot.exit109

; <label>:424                                     ; preds = %closure_object.exit60
  %425 = bitcast i8* %399 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %426 = load %struct.slot_node** %425            ; <%struct.slot_node*> [#uses=2]
  %427 = bitcast i8* %399 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %428

; <label>:428                                     ; preds = %446, %424
  %node.0.i106 = phi %struct.slot_node* [ %426, %424 ], [ %448, %446 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i107 = phi %struct.slot_node* [ %427, %424 ], [ %node.0.i106, %446 ] ; <%struct.slot_node*> [#uses=1]
  %429 = phi %struct.slot_node* [ %448, %446 ], [ %426, %424 ] ; <%struct.slot_node*> [#uses=1]
  %430 = icmp eq %struct.slot_node* %429, null    ; <i1> [#uses=1]
  br i1 %430, label %449, label %431

; <label>:431                                     ; preds = %428
  %432 = getelementptr %struct.slot_node* %node.0.i106, i64 0, i32 6 ; <i32**> [#uses=1]
  %433 = load i32** %432                          ; <i32*> [#uses=1]
  %434 = ptrtoint i32* %433 to i64                ; <i64> [#uses=1]
  %435 = sub i64 ptrtoint (i32* @__sym_ge to i64), %434 ; <i64> [#uses=1]
  %436 = icmp ult i64 %435, 4                     ; <i1> [#uses=1]
  br i1 %436, label %437, label %446

; <label>:437                                     ; preds = %431
  %438 = getelementptr %struct.slot_node* %node.0.i106, i64 0, i32 1 ; <i32*> [#uses=1]
  %439 = load i32* %438                           ; <i32> [#uses=1]
  %440 = and i32 %439, 2                          ; <i32> [#uses=1]
  %441 = icmp eq i32 %440, 0                      ; <i1> [#uses=1]
  br i1 %441, label %444, label %442

; <label>:442                                     ; preds = %437
  %443 = getelementptr %struct.slot_node* %node.0.i106, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %400, i8** %443
  br label %object_set_slot.exit109

; <label>:444                                     ; preds = %437
  %445 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_ge) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit109

; <label>:446                                     ; preds = %431
  %447 = getelementptr %struct.slot_node* %node.0.i106, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %448 = load %struct.slot_node** %447            ; <%struct.slot_node*> [#uses=2]
  br label %428

; <label>:449                                     ; preds = %428
  %450 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %451 = icmp eq i8* %450, null                   ; <i1> [#uses=1]
  br i1 %451, label %452, label %mem_alloc.exit.i108

; <label>:452                                     ; preds = %449
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i108:                              ; preds = %449
  %453 = bitcast i8* %450 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %454 = getelementptr i8* %450, i64 8            ; <i8*> [#uses=1]
  %455 = bitcast i8* %454 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %455
  %456 = getelementptr i8* %450, i64 16           ; <i8*> [#uses=1]
  %457 = bitcast i8* %456 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_ge, i32** %457
  %458 = getelementptr i8* %450, i64 24           ; <i8*> [#uses=1]
  %459 = bitcast i8* %458 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %459
  %460 = bitcast i8* %450 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %460
  %461 = getelementptr %struct.slot_node* %last_node.0.i107, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %453, %struct.slot_node** %461
  br label %object_set_slot.exit109

object_set_slot.exit109:                          ; preds = %mem_alloc.exit.i108, %444, %442, %object_set_delegate.exit.i105
  %462 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %463 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %464 = icmp eq i8* %463, null                   ; <i1> [#uses=1]
  br i1 %464, label %465, label %466

; <label>:465                                     ; preds = %object_set_slot.exit109
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:466                                     ; preds = %object_set_slot.exit109
  %467 = getelementptr i8* %463, i64 12           ; <i8*> [#uses=1]
  %468 = bitcast i8* %467 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %468
  %469 = getelementptr i8* %463, i64 8            ; <i8*> [#uses=1]
  %470 = bitcast i8* %469 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %470
  %471 = getelementptr i8* %463, i64 24           ; <i8*> [#uses=1]
  %472 = bitcast i8* %471 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_eq to i8*), i8** %472
  %473 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %474 = load i32* %470                           ; <i32> [#uses=1]
  %475 = icmp eq i32 %474, 364969966              ; <i1> [#uses=1]
  br i1 %475, label %closure_object.exit70, label %.thread78

.thread78:                                        ; preds = %466
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit70:                            ; preds = %466
  %476 = getelementptr i8* %463, i64 16           ; <i8*> [#uses=1]
  %477 = bitcast i8* %476 to i8**                 ; <i8**> [#uses=1]
  store i8* %473, i8** %477
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_eq to i64)), i64 4), label %478, label %487

; <label>:478                                     ; preds = %closure_object.exit70
  %479 = icmp eq i8* %462, null                   ; <i1> [#uses=1]
  br i1 %479, label %.thread.i89, label %480

; <label>:480                                     ; preds = %478
  %481 = getelementptr i8* %462, i64 8            ; <i8*> [#uses=1]
  %482 = bitcast i8* %481 to i32*                 ; <i32*> [#uses=1]
  %483 = load i32* %482                           ; <i32> [#uses=1]
  %484 = icmp eq i32 %483, 364969966              ; <i1> [#uses=1]
  br i1 %484, label %object_set_delegate.exit.i90, label %.thread.i89

.thread.i89:                                      ; preds = %480, %478
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i90:                     ; preds = %480
  %485 = getelementptr i8* %462, i64 16           ; <i8*> [#uses=1]
  %486 = bitcast i8* %485 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %486
  br label %object_set_slot.exit94

; <label>:487                                     ; preds = %closure_object.exit70
  %488 = bitcast i8* %462 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %489 = load %struct.slot_node** %488            ; <%struct.slot_node*> [#uses=2]
  %490 = bitcast i8* %462 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %491

; <label>:491                                     ; preds = %509, %487
  %node.0.i91 = phi %struct.slot_node* [ %489, %487 ], [ %511, %509 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i92 = phi %struct.slot_node* [ %490, %487 ], [ %node.0.i91, %509 ] ; <%struct.slot_node*> [#uses=1]
  %492 = phi %struct.slot_node* [ %511, %509 ], [ %489, %487 ] ; <%struct.slot_node*> [#uses=1]
  %493 = icmp eq %struct.slot_node* %492, null    ; <i1> [#uses=1]
  br i1 %493, label %512, label %494

; <label>:494                                     ; preds = %491
  %495 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 6 ; <i32**> [#uses=1]
  %496 = load i32** %495                          ; <i32*> [#uses=1]
  %497 = ptrtoint i32* %496 to i64                ; <i64> [#uses=1]
  %498 = sub i64 ptrtoint (i32* @__sym_eq to i64), %497 ; <i64> [#uses=1]
  %499 = icmp ult i64 %498, 4                     ; <i1> [#uses=1]
  br i1 %499, label %500, label %509

; <label>:500                                     ; preds = %494
  %501 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 1 ; <i32*> [#uses=1]
  %502 = load i32* %501                           ; <i32> [#uses=1]
  %503 = and i32 %502, 2                          ; <i32> [#uses=1]
  %504 = icmp eq i32 %503, 0                      ; <i1> [#uses=1]
  br i1 %504, label %507, label %505

; <label>:505                                     ; preds = %500
  %506 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %463, i8** %506
  br label %object_set_slot.exit94

; <label>:507                                     ; preds = %500
  %508 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_eq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit94

; <label>:509                                     ; preds = %494
  %510 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %511 = load %struct.slot_node** %510            ; <%struct.slot_node*> [#uses=2]
  br label %491

; <label>:512                                     ; preds = %491
  %513 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %514 = icmp eq i8* %513, null                   ; <i1> [#uses=1]
  br i1 %514, label %515, label %mem_alloc.exit.i93

; <label>:515                                     ; preds = %512
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i93:                               ; preds = %512
  %516 = bitcast i8* %513 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %517 = getelementptr i8* %513, i64 8            ; <i8*> [#uses=1]
  %518 = bitcast i8* %517 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %518
  %519 = getelementptr i8* %513, i64 16           ; <i8*> [#uses=1]
  %520 = bitcast i8* %519 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_eq, i32** %520
  %521 = getelementptr i8* %513, i64 24           ; <i8*> [#uses=1]
  %522 = bitcast i8* %521 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %522
  %523 = bitcast i8* %513 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %523
  %524 = getelementptr %struct.slot_node* %last_node.0.i92, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %516, %struct.slot_node** %524
  br label %object_set_slot.exit94

object_set_slot.exit94:                           ; preds = %mem_alloc.exit.i93, %507, %505, %object_set_delegate.exit.i90
  %525 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %526 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %527 = icmp eq i8* %526, null                   ; <i1> [#uses=1]
  br i1 %527, label %528, label %529

; <label>:528                                     ; preds = %object_set_slot.exit94
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:529                                     ; preds = %object_set_slot.exit94
  %530 = getelementptr i8* %526, i64 12           ; <i8*> [#uses=1]
  %531 = bitcast i8* %530 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %531
  %532 = getelementptr i8* %526, i64 8            ; <i8*> [#uses=1]
  %533 = bitcast i8* %532 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %533
  %534 = getelementptr i8* %526, i64 24           ; <i8*> [#uses=1]
  %535 = bitcast i8* %534 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_neq to i8*), i8** %535
  %536 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %537 = load i32* %533                           ; <i32> [#uses=1]
  %538 = icmp eq i32 %537, 364969966              ; <i1> [#uses=1]
  br i1 %538, label %closure_object.exit65, label %.thread79

.thread79:                                        ; preds = %529
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit65:                            ; preds = %529
  %539 = getelementptr i8* %526, i64 16           ; <i8*> [#uses=1]
  %540 = bitcast i8* %539 to i8**                 ; <i8**> [#uses=1]
  store i8* %536, i8** %540
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_neq to i64)), i64 4), label %541, label %550

; <label>:541                                     ; preds = %closure_object.exit65
  %542 = icmp eq i8* %525, null                   ; <i1> [#uses=1]
  br i1 %542, label %.thread.i77, label %543

; <label>:543                                     ; preds = %541
  %544 = getelementptr i8* %525, i64 8            ; <i8*> [#uses=1]
  %545 = bitcast i8* %544 to i32*                 ; <i32*> [#uses=1]
  %546 = load i32* %545                           ; <i32> [#uses=1]
  %547 = icmp eq i32 %546, 364969966              ; <i1> [#uses=1]
  br i1 %547, label %object_set_delegate.exit.i78, label %.thread.i77

.thread.i77:                                      ; preds = %543, %541
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i78:                     ; preds = %543
  %548 = getelementptr i8* %525, i64 16           ; <i8*> [#uses=1]
  %549 = bitcast i8* %548 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %549
  br label %object_set_slot.exit82

; <label>:550                                     ; preds = %closure_object.exit65
  %551 = bitcast i8* %525 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %552 = load %struct.slot_node** %551            ; <%struct.slot_node*> [#uses=2]
  %553 = bitcast i8* %525 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %554

; <label>:554                                     ; preds = %572, %550
  %node.0.i79 = phi %struct.slot_node* [ %552, %550 ], [ %574, %572 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i80 = phi %struct.slot_node* [ %553, %550 ], [ %node.0.i79, %572 ] ; <%struct.slot_node*> [#uses=1]
  %555 = phi %struct.slot_node* [ %574, %572 ], [ %552, %550 ] ; <%struct.slot_node*> [#uses=1]
  %556 = icmp eq %struct.slot_node* %555, null    ; <i1> [#uses=1]
  br i1 %556, label %575, label %557

; <label>:557                                     ; preds = %554
  %558 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 6 ; <i32**> [#uses=1]
  %559 = load i32** %558                          ; <i32*> [#uses=1]
  %560 = ptrtoint i32* %559 to i64                ; <i64> [#uses=1]
  %561 = sub i64 ptrtoint (i32* @__sym_neq to i64), %560 ; <i64> [#uses=1]
  %562 = icmp ult i64 %561, 4                     ; <i1> [#uses=1]
  br i1 %562, label %563, label %572

; <label>:563                                     ; preds = %557
  %564 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 1 ; <i32*> [#uses=1]
  %565 = load i32* %564                           ; <i32> [#uses=1]
  %566 = and i32 %565, 2                          ; <i32> [#uses=1]
  %567 = icmp eq i32 %566, 0                      ; <i1> [#uses=1]
  br i1 %567, label %570, label %568

; <label>:568                                     ; preds = %563
  %569 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %526, i8** %569
  br label %object_set_slot.exit82

; <label>:570                                     ; preds = %563
  %571 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_neq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit82

; <label>:572                                     ; preds = %557
  %573 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %574 = load %struct.slot_node** %573            ; <%struct.slot_node*> [#uses=2]
  br label %554

; <label>:575                                     ; preds = %554
  %576 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %577 = icmp eq i8* %576, null                   ; <i1> [#uses=1]
  br i1 %577, label %578, label %mem_alloc.exit.i81

; <label>:578                                     ; preds = %575
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i81:                               ; preds = %575
  %579 = bitcast i8* %576 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %580 = getelementptr i8* %576, i64 8            ; <i8*> [#uses=1]
  %581 = bitcast i8* %580 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %581
  %582 = getelementptr i8* %576, i64 16           ; <i8*> [#uses=1]
  %583 = bitcast i8* %582 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_neq, i32** %583
  %584 = getelementptr i8* %576, i64 24           ; <i8*> [#uses=1]
  %585 = bitcast i8* %584 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %585
  %586 = bitcast i8* %576 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %586
  %587 = getelementptr %struct.slot_node* %last_node.0.i80, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %579, %struct.slot_node** %587
  br label %object_set_slot.exit82

object_set_slot.exit82:                           ; preds = %mem_alloc.exit.i81, %570, %568, %object_set_delegate.exit.i78
  %588 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %589 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %590 = icmp eq i8* %589, null                   ; <i1> [#uses=1]
  br i1 %590, label %591, label %592

; <label>:591                                     ; preds = %object_set_slot.exit82
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:592                                     ; preds = %object_set_slot.exit82
  %593 = getelementptr i8* %589, i64 12           ; <i8*> [#uses=1]
  %594 = bitcast i8* %593 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %594
  %595 = getelementptr i8* %589, i64 8            ; <i8*> [#uses=1]
  %596 = bitcast i8* %595 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %596
  %597 = getelementptr i8* %589, i64 24           ; <i8*> [#uses=1]
  %598 = bitcast i8* %597 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_add to i8*), i8** %598
  %599 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %600 = load i32* %596                           ; <i32> [#uses=1]
  %601 = icmp eq i32 %600, 364969966              ; <i1> [#uses=1]
  br i1 %601, label %closure_object.exit55, label %.thread80

.thread80:                                        ; preds = %592
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit55:                            ; preds = %592
  %602 = getelementptr i8* %589, i64 16           ; <i8*> [#uses=1]
  %603 = bitcast i8* %602 to i8**                 ; <i8**> [#uses=1]
  store i8* %599, i8** %603
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_add to i64)), i64 4), label %604, label %613

; <label>:604                                     ; preds = %closure_object.exit55
  %605 = icmp eq i8* %588, null                   ; <i1> [#uses=1]
  br i1 %605, label %.thread.i62, label %606

; <label>:606                                     ; preds = %604
  %607 = getelementptr i8* %588, i64 8            ; <i8*> [#uses=1]
  %608 = bitcast i8* %607 to i32*                 ; <i32*> [#uses=1]
  %609 = load i32* %608                           ; <i32> [#uses=1]
  %610 = icmp eq i32 %609, 364969966              ; <i1> [#uses=1]
  br i1 %610, label %object_set_delegate.exit.i63, label %.thread.i62

.thread.i62:                                      ; preds = %606, %604
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i63:                     ; preds = %606
  %611 = getelementptr i8* %588, i64 16           ; <i8*> [#uses=1]
  %612 = bitcast i8* %611 to i8**                 ; <i8**> [#uses=1]
  store i8* %589, i8** %612
  br label %object_set_slot.exit67

; <label>:613                                     ; preds = %closure_object.exit55
  %614 = bitcast i8* %588 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %615 = load %struct.slot_node** %614            ; <%struct.slot_node*> [#uses=2]
  %616 = bitcast i8* %588 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %617

; <label>:617                                     ; preds = %635, %613
  %node.0.i64 = phi %struct.slot_node* [ %615, %613 ], [ %637, %635 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i65 = phi %struct.slot_node* [ %616, %613 ], [ %node.0.i64, %635 ] ; <%struct.slot_node*> [#uses=1]
  %618 = phi %struct.slot_node* [ %637, %635 ], [ %615, %613 ] ; <%struct.slot_node*> [#uses=1]
  %619 = icmp eq %struct.slot_node* %618, null    ; <i1> [#uses=1]
  br i1 %619, label %638, label %620

; <label>:620                                     ; preds = %617
  %621 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 6 ; <i32**> [#uses=1]
  %622 = load i32** %621                          ; <i32*> [#uses=1]
  %623 = ptrtoint i32* %622 to i64                ; <i64> [#uses=1]
  %624 = sub i64 ptrtoint (i32* @__sym_add to i64), %623 ; <i64> [#uses=1]
  %625 = icmp ult i64 %624, 4                     ; <i1> [#uses=1]
  br i1 %625, label %626, label %635

; <label>:626                                     ; preds = %620
  %627 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 1 ; <i32*> [#uses=1]
  %628 = load i32* %627                           ; <i32> [#uses=1]
  %629 = and i32 %628, 2                          ; <i32> [#uses=1]
  %630 = icmp eq i32 %629, 0                      ; <i1> [#uses=1]
  br i1 %630, label %633, label %631

; <label>:631                                     ; preds = %626
  %632 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %589, i8** %632
  br label %object_set_slot.exit67

; <label>:633                                     ; preds = %626
  %634 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_add) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit67

; <label>:635                                     ; preds = %620
  %636 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %637 = load %struct.slot_node** %636            ; <%struct.slot_node*> [#uses=2]
  br label %617

; <label>:638                                     ; preds = %617
  %639 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %640 = icmp eq i8* %639, null                   ; <i1> [#uses=1]
  br i1 %640, label %641, label %mem_alloc.exit.i66

; <label>:641                                     ; preds = %638
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i66:                               ; preds = %638
  %642 = bitcast i8* %639 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %643 = getelementptr i8* %639, i64 8            ; <i8*> [#uses=1]
  %644 = bitcast i8* %643 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %644
  %645 = getelementptr i8* %639, i64 16           ; <i8*> [#uses=1]
  %646 = bitcast i8* %645 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_add, i32** %646
  %647 = getelementptr i8* %639, i64 24           ; <i8*> [#uses=1]
  %648 = bitcast i8* %647 to i8**                 ; <i8**> [#uses=1]
  store i8* %589, i8** %648
  %649 = bitcast i8* %639 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %649
  %650 = getelementptr %struct.slot_node* %last_node.0.i65, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %642, %struct.slot_node** %650
  br label %object_set_slot.exit67

object_set_slot.exit67:                           ; preds = %mem_alloc.exit.i66, %633, %631, %object_set_delegate.exit.i63
  %651 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %652 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %653 = icmp eq i8* %652, null                   ; <i1> [#uses=1]
  br i1 %653, label %654, label %655

; <label>:654                                     ; preds = %object_set_slot.exit67
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:655                                     ; preds = %object_set_slot.exit67
  %656 = getelementptr i8* %652, i64 12           ; <i8*> [#uses=1]
  %657 = bitcast i8* %656 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %657
  %658 = getelementptr i8* %652, i64 8            ; <i8*> [#uses=1]
  %659 = bitcast i8* %658 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %659
  %660 = getelementptr i8* %652, i64 24           ; <i8*> [#uses=1]
  %661 = bitcast i8* %660 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_sub to i8*), i8** %661
  %662 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %663 = load i32* %659                           ; <i32> [#uses=1]
  %664 = icmp eq i32 %663, 364969966              ; <i1> [#uses=1]
  br i1 %664, label %closure_object.exit45, label %.thread81

.thread81:                                        ; preds = %655
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit45:                            ; preds = %655
  %665 = getelementptr i8* %652, i64 16           ; <i8*> [#uses=1]
  %666 = bitcast i8* %665 to i8**                 ; <i8**> [#uses=1]
  store i8* %662, i8** %666
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_sub to i64)), i64 4), label %667, label %676

; <label>:667                                     ; preds = %closure_object.exit45
  %668 = icmp eq i8* %651, null                   ; <i1> [#uses=1]
  br i1 %668, label %.thread.i50, label %669

; <label>:669                                     ; preds = %667
  %670 = getelementptr i8* %651, i64 8            ; <i8*> [#uses=1]
  %671 = bitcast i8* %670 to i32*                 ; <i32*> [#uses=1]
  %672 = load i32* %671                           ; <i32> [#uses=1]
  %673 = icmp eq i32 %672, 364969966              ; <i1> [#uses=1]
  br i1 %673, label %object_set_delegate.exit.i51, label %.thread.i50

.thread.i50:                                      ; preds = %669, %667
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i51:                     ; preds = %669
  %674 = getelementptr i8* %651, i64 16           ; <i8*> [#uses=1]
  %675 = bitcast i8* %674 to i8**                 ; <i8**> [#uses=1]
  store i8* %652, i8** %675
  br label %object_set_slot.exit55

; <label>:676                                     ; preds = %closure_object.exit45
  %677 = bitcast i8* %651 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %678 = load %struct.slot_node** %677            ; <%struct.slot_node*> [#uses=2]
  %679 = bitcast i8* %651 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %680

; <label>:680                                     ; preds = %698, %676
  %node.0.i52 = phi %struct.slot_node* [ %678, %676 ], [ %700, %698 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i53 = phi %struct.slot_node* [ %679, %676 ], [ %node.0.i52, %698 ] ; <%struct.slot_node*> [#uses=1]
  %681 = phi %struct.slot_node* [ %700, %698 ], [ %678, %676 ] ; <%struct.slot_node*> [#uses=1]
  %682 = icmp eq %struct.slot_node* %681, null    ; <i1> [#uses=1]
  br i1 %682, label %701, label %683

; <label>:683                                     ; preds = %680
  %684 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 6 ; <i32**> [#uses=1]
  %685 = load i32** %684                          ; <i32*> [#uses=1]
  %686 = ptrtoint i32* %685 to i64                ; <i64> [#uses=1]
  %687 = sub i64 ptrtoint (i32* @__sym_sub to i64), %686 ; <i64> [#uses=1]
  %688 = icmp ult i64 %687, 4                     ; <i1> [#uses=1]
  br i1 %688, label %689, label %698

; <label>:689                                     ; preds = %683
  %690 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 1 ; <i32*> [#uses=1]
  %691 = load i32* %690                           ; <i32> [#uses=1]
  %692 = and i32 %691, 2                          ; <i32> [#uses=1]
  %693 = icmp eq i32 %692, 0                      ; <i1> [#uses=1]
  br i1 %693, label %696, label %694

; <label>:694                                     ; preds = %689
  %695 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %652, i8** %695
  br label %object_set_slot.exit55

; <label>:696                                     ; preds = %689
  %697 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_sub) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit55

; <label>:698                                     ; preds = %683
  %699 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %700 = load %struct.slot_node** %699            ; <%struct.slot_node*> [#uses=2]
  br label %680

; <label>:701                                     ; preds = %680
  %702 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %703 = icmp eq i8* %702, null                   ; <i1> [#uses=1]
  br i1 %703, label %704, label %mem_alloc.exit.i54

; <label>:704                                     ; preds = %701
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i54:                               ; preds = %701
  %705 = bitcast i8* %702 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %706 = getelementptr i8* %702, i64 8            ; <i8*> [#uses=1]
  %707 = bitcast i8* %706 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %707
  %708 = getelementptr i8* %702, i64 16           ; <i8*> [#uses=1]
  %709 = bitcast i8* %708 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_sub, i32** %709
  %710 = getelementptr i8* %702, i64 24           ; <i8*> [#uses=1]
  %711 = bitcast i8* %710 to i8**                 ; <i8**> [#uses=1]
  store i8* %652, i8** %711
  %712 = bitcast i8* %702 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %712
  %713 = getelementptr %struct.slot_node* %last_node.0.i53, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %705, %struct.slot_node** %713
  br label %object_set_slot.exit55

object_set_slot.exit55:                           ; preds = %mem_alloc.exit.i54, %696, %694, %object_set_delegate.exit.i51
  %714 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %715 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %716 = icmp eq i8* %715, null                   ; <i1> [#uses=1]
  br i1 %716, label %717, label %718

; <label>:717                                     ; preds = %object_set_slot.exit55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:718                                     ; preds = %object_set_slot.exit55
  %719 = getelementptr i8* %715, i64 12           ; <i8*> [#uses=1]
  %720 = bitcast i8* %719 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %720
  %721 = getelementptr i8* %715, i64 8            ; <i8*> [#uses=1]
  %722 = bitcast i8* %721 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %722
  %723 = getelementptr i8* %715, i64 24           ; <i8*> [#uses=1]
  %724 = bitcast i8* %723 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_mul to i8*), i8** %724
  %725 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %726 = load i32* %722                           ; <i32> [#uses=1]
  %727 = icmp eq i32 %726, 364969966              ; <i1> [#uses=1]
  br i1 %727, label %closure_object.exit35, label %.thread82

.thread82:                                        ; preds = %718
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit35:                            ; preds = %718
  %728 = getelementptr i8* %715, i64 16           ; <i8*> [#uses=1]
  %729 = bitcast i8* %728 to i8**                 ; <i8**> [#uses=1]
  store i8* %725, i8** %729
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_mul to i64)), i64 4), label %730, label %739

; <label>:730                                     ; preds = %closure_object.exit35
  %731 = icmp eq i8* %714, null                   ; <i1> [#uses=1]
  br i1 %731, label %.thread.i35, label %732

; <label>:732                                     ; preds = %730
  %733 = getelementptr i8* %714, i64 8            ; <i8*> [#uses=1]
  %734 = bitcast i8* %733 to i32*                 ; <i32*> [#uses=1]
  %735 = load i32* %734                           ; <i32> [#uses=1]
  %736 = icmp eq i32 %735, 364969966              ; <i1> [#uses=1]
  br i1 %736, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %732, %730
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %732
  %737 = getelementptr i8* %714, i64 16           ; <i8*> [#uses=1]
  %738 = bitcast i8* %737 to i8**                 ; <i8**> [#uses=1]
  store i8* %715, i8** %738
  br label %object_set_slot.exit40

; <label>:739                                     ; preds = %closure_object.exit35
  %740 = bitcast i8* %714 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %741 = load %struct.slot_node** %740            ; <%struct.slot_node*> [#uses=2]
  %742 = bitcast i8* %714 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %743

; <label>:743                                     ; preds = %761, %739
  %node.0.i37 = phi %struct.slot_node* [ %741, %739 ], [ %763, %761 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %742, %739 ], [ %node.0.i37, %761 ] ; <%struct.slot_node*> [#uses=1]
  %744 = phi %struct.slot_node* [ %763, %761 ], [ %741, %739 ] ; <%struct.slot_node*> [#uses=1]
  %745 = icmp eq %struct.slot_node* %744, null    ; <i1> [#uses=1]
  br i1 %745, label %764, label %746

; <label>:746                                     ; preds = %743
  %747 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %748 = load i32** %747                          ; <i32*> [#uses=1]
  %749 = ptrtoint i32* %748 to i64                ; <i64> [#uses=1]
  %750 = sub i64 ptrtoint (i32* @__sym_mul to i64), %749 ; <i64> [#uses=1]
  %751 = icmp ult i64 %750, 4                     ; <i1> [#uses=1]
  br i1 %751, label %752, label %761

; <label>:752                                     ; preds = %746
  %753 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %754 = load i32* %753                           ; <i32> [#uses=1]
  %755 = and i32 %754, 2                          ; <i32> [#uses=1]
  %756 = icmp eq i32 %755, 0                      ; <i1> [#uses=1]
  br i1 %756, label %759, label %757

; <label>:757                                     ; preds = %752
  %758 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %715, i8** %758
  br label %object_set_slot.exit40

; <label>:759                                     ; preds = %752
  %760 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_mul) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:761                                     ; preds = %746
  %762 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %763 = load %struct.slot_node** %762            ; <%struct.slot_node*> [#uses=2]
  br label %743

; <label>:764                                     ; preds = %743
  %765 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %766 = icmp eq i8* %765, null                   ; <i1> [#uses=1]
  br i1 %766, label %767, label %mem_alloc.exit.i39

; <label>:767                                     ; preds = %764
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %764
  %768 = bitcast i8* %765 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %769 = getelementptr i8* %765, i64 8            ; <i8*> [#uses=1]
  %770 = bitcast i8* %769 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %770
  %771 = getelementptr i8* %765, i64 16           ; <i8*> [#uses=1]
  %772 = bitcast i8* %771 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_mul, i32** %772
  %773 = getelementptr i8* %765, i64 24           ; <i8*> [#uses=1]
  %774 = bitcast i8* %773 to i8**                 ; <i8**> [#uses=1]
  store i8* %715, i8** %774
  %775 = bitcast i8* %765 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %775
  %776 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %768, %struct.slot_node** %776
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %759, %757, %object_set_delegate.exit.i36
  %777 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %778 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %779 = icmp eq i8* %778, null                   ; <i1> [#uses=1]
  br i1 %779, label %780, label %781

; <label>:780                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:781                                     ; preds = %object_set_slot.exit40
  %782 = getelementptr i8* %778, i64 12           ; <i8*> [#uses=1]
  %783 = bitcast i8* %782 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %783
  %784 = getelementptr i8* %778, i64 8            ; <i8*> [#uses=1]
  %785 = bitcast i8* %784 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %785
  %786 = getelementptr i8* %778, i64 24           ; <i8*> [#uses=1]
  %787 = bitcast i8* %786 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_div to i8*), i8** %787
  %788 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %789 = load i32* %785                           ; <i32> [#uses=1]
  %790 = icmp eq i32 %789, 364969966              ; <i1> [#uses=1]
  br i1 %790, label %closure_object.exit25, label %.thread83

.thread83:                                        ; preds = %781
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit25:                            ; preds = %781
  %791 = getelementptr i8* %778, i64 16           ; <i8*> [#uses=1]
  %792 = bitcast i8* %791 to i8**                 ; <i8**> [#uses=1]
  store i8* %788, i8** %792
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_div to i64)), i64 4), label %793, label %802

; <label>:793                                     ; preds = %closure_object.exit25
  %794 = icmp eq i8* %777, null                   ; <i1> [#uses=1]
  br i1 %794, label %.thread.i23, label %795

; <label>:795                                     ; preds = %793
  %796 = getelementptr i8* %777, i64 8            ; <i8*> [#uses=1]
  %797 = bitcast i8* %796 to i32*                 ; <i32*> [#uses=1]
  %798 = load i32* %797                           ; <i32> [#uses=1]
  %799 = icmp eq i32 %798, 364969966              ; <i1> [#uses=1]
  br i1 %799, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %795, %793
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %795
  %800 = getelementptr i8* %777, i64 16           ; <i8*> [#uses=1]
  %801 = bitcast i8* %800 to i8**                 ; <i8**> [#uses=1]
  store i8* %778, i8** %801
  br label %object_set_slot.exit28

; <label>:802                                     ; preds = %closure_object.exit25
  %803 = bitcast i8* %777 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %804 = load %struct.slot_node** %803            ; <%struct.slot_node*> [#uses=2]
  %805 = bitcast i8* %777 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %806

; <label>:806                                     ; preds = %824, %802
  %node.0.i25 = phi %struct.slot_node* [ %804, %802 ], [ %826, %824 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %805, %802 ], [ %node.0.i25, %824 ] ; <%struct.slot_node*> [#uses=1]
  %807 = phi %struct.slot_node* [ %826, %824 ], [ %804, %802 ] ; <%struct.slot_node*> [#uses=1]
  %808 = icmp eq %struct.slot_node* %807, null    ; <i1> [#uses=1]
  br i1 %808, label %827, label %809

; <label>:809                                     ; preds = %806
  %810 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %811 = load i32** %810                          ; <i32*> [#uses=1]
  %812 = ptrtoint i32* %811 to i64                ; <i64> [#uses=1]
  %813 = sub i64 ptrtoint (i32* @__sym_div to i64), %812 ; <i64> [#uses=1]
  %814 = icmp ult i64 %813, 4                     ; <i1> [#uses=1]
  br i1 %814, label %815, label %824

; <label>:815                                     ; preds = %809
  %816 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %817 = load i32* %816                           ; <i32> [#uses=1]
  %818 = and i32 %817, 2                          ; <i32> [#uses=1]
  %819 = icmp eq i32 %818, 0                      ; <i1> [#uses=1]
  br i1 %819, label %822, label %820

; <label>:820                                     ; preds = %815
  %821 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %778, i8** %821
  br label %object_set_slot.exit28

; <label>:822                                     ; preds = %815
  %823 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_div) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:824                                     ; preds = %809
  %825 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %826 = load %struct.slot_node** %825            ; <%struct.slot_node*> [#uses=2]
  br label %806

; <label>:827                                     ; preds = %806
  %828 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %829 = icmp eq i8* %828, null                   ; <i1> [#uses=1]
  br i1 %829, label %830, label %mem_alloc.exit.i27

; <label>:830                                     ; preds = %827
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %827
  %831 = bitcast i8* %828 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %832 = getelementptr i8* %828, i64 8            ; <i8*> [#uses=1]
  %833 = bitcast i8* %832 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %833
  %834 = getelementptr i8* %828, i64 16           ; <i8*> [#uses=1]
  %835 = bitcast i8* %834 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_div, i32** %835
  %836 = getelementptr i8* %828, i64 24           ; <i8*> [#uses=1]
  %837 = bitcast i8* %836 to i8**                 ; <i8**> [#uses=1]
  store i8* %778, i8** %837
  %838 = bitcast i8* %828 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %838
  %839 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %831, %struct.slot_node** %839
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %822, %820, %object_set_delegate.exit.i24
  %840 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %841 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %842 = icmp eq i8* %841, null                   ; <i1> [#uses=1]
  br i1 %842, label %843, label %844

; <label>:843                                     ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:844                                     ; preds = %object_set_slot.exit28
  %845 = getelementptr i8* %841, i64 12           ; <i8*> [#uses=1]
  %846 = bitcast i8* %845 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %846
  %847 = getelementptr i8* %841, i64 8            ; <i8*> [#uses=1]
  %848 = bitcast i8* %847 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %848
  %849 = getelementptr i8* %841, i64 24           ; <i8*> [#uses=1]
  %850 = bitcast i8* %849 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_rem to i8*), i8** %850
  %851 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %852 = load i32* %848                           ; <i32> [#uses=1]
  %853 = icmp eq i32 %852, 364969966              ; <i1> [#uses=1]
  br i1 %853, label %closure_object.exit15, label %.thread84

.thread84:                                        ; preds = %844
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %844
  %854 = getelementptr i8* %841, i64 16           ; <i8*> [#uses=1]
  %855 = bitcast i8* %854 to i8**                 ; <i8**> [#uses=1]
  store i8* %851, i8** %855
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_rem to i64)), i64 4), label %856, label %865

; <label>:856                                     ; preds = %closure_object.exit15
  %857 = icmp eq i8* %840, null                   ; <i1> [#uses=1]
  br i1 %857, label %.thread.i8, label %858

; <label>:858                                     ; preds = %856
  %859 = getelementptr i8* %840, i64 8            ; <i8*> [#uses=1]
  %860 = bitcast i8* %859 to i32*                 ; <i32*> [#uses=1]
  %861 = load i32* %860                           ; <i32> [#uses=1]
  %862 = icmp eq i32 %861, 364969966              ; <i1> [#uses=1]
  br i1 %862, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %858, %856
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %858
  %863 = getelementptr i8* %840, i64 16           ; <i8*> [#uses=1]
  %864 = bitcast i8* %863 to i8**                 ; <i8**> [#uses=1]
  store i8* %841, i8** %864
  br label %object_set_slot.exit13

; <label>:865                                     ; preds = %closure_object.exit15
  %866 = bitcast i8* %840 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %867 = load %struct.slot_node** %866            ; <%struct.slot_node*> [#uses=2]
  %868 = bitcast i8* %840 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %869

; <label>:869                                     ; preds = %887, %865
  %node.0.i10 = phi %struct.slot_node* [ %867, %865 ], [ %889, %887 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %868, %865 ], [ %node.0.i10, %887 ] ; <%struct.slot_node*> [#uses=1]
  %870 = phi %struct.slot_node* [ %889, %887 ], [ %867, %865 ] ; <%struct.slot_node*> [#uses=1]
  %871 = icmp eq %struct.slot_node* %870, null    ; <i1> [#uses=1]
  br i1 %871, label %890, label %872

; <label>:872                                     ; preds = %869
  %873 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %874 = load i32** %873                          ; <i32*> [#uses=1]
  %875 = ptrtoint i32* %874 to i64                ; <i64> [#uses=1]
  %876 = sub i64 ptrtoint (i32* @__sym_rem to i64), %875 ; <i64> [#uses=1]
  %877 = icmp ult i64 %876, 4                     ; <i1> [#uses=1]
  br i1 %877, label %878, label %887

; <label>:878                                     ; preds = %872
  %879 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %880 = load i32* %879                           ; <i32> [#uses=1]
  %881 = and i32 %880, 2                          ; <i32> [#uses=1]
  %882 = icmp eq i32 %881, 0                      ; <i1> [#uses=1]
  br i1 %882, label %885, label %883

; <label>:883                                     ; preds = %878
  %884 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %841, i8** %884
  br label %object_set_slot.exit13

; <label>:885                                     ; preds = %878
  %886 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_rem) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:887                                     ; preds = %872
  %888 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %889 = load %struct.slot_node** %888            ; <%struct.slot_node*> [#uses=2]
  br label %869

; <label>:890                                     ; preds = %869
  %891 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %892 = icmp eq i8* %891, null                   ; <i1> [#uses=1]
  br i1 %892, label %893, label %mem_alloc.exit.i12

; <label>:893                                     ; preds = %890
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %890
  %894 = bitcast i8* %891 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %895 = getelementptr i8* %891, i64 8            ; <i8*> [#uses=1]
  %896 = bitcast i8* %895 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %896
  %897 = getelementptr i8* %891, i64 16           ; <i8*> [#uses=1]
  %898 = bitcast i8* %897 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_rem, i32** %898
  %899 = getelementptr i8* %891, i64 24           ; <i8*> [#uses=1]
  %900 = bitcast i8* %899 to i8**                 ; <i8**> [#uses=1]
  store i8* %841, i8** %900
  %901 = bitcast i8* %891 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %901
  %902 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %894, %struct.slot_node** %902
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %885, %883, %object_set_delegate.exit.i9
  %903 = load i8** @int_prototype.prototype       ; <i8*> [#uses=5]
  %904 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %905 = icmp eq i8* %904, null                   ; <i1> [#uses=1]
  br i1 %905, label %906, label %907

; <label>:906                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:907                                     ; preds = %object_set_slot.exit13
  %908 = getelementptr i8* %904, i64 12           ; <i8*> [#uses=1]
  %909 = bitcast i8* %908 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %909
  %910 = getelementptr i8* %904, i64 8            ; <i8*> [#uses=1]
  %911 = bitcast i8* %910 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %911
  %912 = getelementptr i8* %904, i64 24           ; <i8*> [#uses=1]
  %913 = bitcast i8* %912 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @int_succ to i8*), i8** %913
  %914 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %915 = load i32* %911                           ; <i32> [#uses=1]
  %916 = icmp eq i32 %915, 364969966              ; <i1> [#uses=1]
  br i1 %916, label %closure_object.exit5, label %.thread85

.thread85:                                        ; preds = %907
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %907
  %917 = getelementptr i8* %904, i64 16           ; <i8*> [#uses=1]
  %918 = bitcast i8* %917 to i8**                 ; <i8**> [#uses=1]
  store i8* %914, i8** %918
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_succ to i64)), i64 4), label %919, label %928

; <label>:919                                     ; preds = %closure_object.exit5
  %920 = icmp eq i8* %903, null                   ; <i1> [#uses=1]
  br i1 %920, label %.thread.i, label %921

; <label>:921                                     ; preds = %919
  %922 = getelementptr i8* %903, i64 8            ; <i8*> [#uses=1]
  %923 = bitcast i8* %922 to i32*                 ; <i32*> [#uses=1]
  %924 = load i32* %923                           ; <i32> [#uses=1]
  %925 = icmp eq i32 %924, 364969966              ; <i1> [#uses=1]
  br i1 %925, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %921, %919
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %921
  %926 = getelementptr i8* %903, i64 16           ; <i8*> [#uses=1]
  %927 = bitcast i8* %926 to i8**                 ; <i8**> [#uses=1]
  store i8* %904, i8** %927
  br label %object_set_slot.exit

; <label>:928                                     ; preds = %closure_object.exit5
  %929 = bitcast i8* %903 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %930 = load %struct.slot_node** %929            ; <%struct.slot_node*> [#uses=2]
  %931 = bitcast i8* %903 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %932

; <label>:932                                     ; preds = %950, %928
  %node.0.i = phi %struct.slot_node* [ %930, %928 ], [ %952, %950 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %931, %928 ], [ %node.0.i, %950 ] ; <%struct.slot_node*> [#uses=1]
  %933 = phi %struct.slot_node* [ %952, %950 ], [ %930, %928 ] ; <%struct.slot_node*> [#uses=1]
  %934 = icmp eq %struct.slot_node* %933, null    ; <i1> [#uses=1]
  br i1 %934, label %953, label %935

; <label>:935                                     ; preds = %932
  %936 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %937 = load i32** %936                          ; <i32*> [#uses=1]
  %938 = ptrtoint i32* %937 to i64                ; <i64> [#uses=1]
  %939 = sub i64 ptrtoint (i32* @__sym_succ to i64), %938 ; <i64> [#uses=1]
  %940 = icmp ult i64 %939, 4                     ; <i1> [#uses=1]
  br i1 %940, label %941, label %950

; <label>:941                                     ; preds = %935
  %942 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %943 = load i32* %942                           ; <i32> [#uses=1]
  %944 = and i32 %943, 2                          ; <i32> [#uses=1]
  %945 = icmp eq i32 %944, 0                      ; <i1> [#uses=1]
  br i1 %945, label %948, label %946

; <label>:946                                     ; preds = %941
  %947 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %904, i8** %947
  br label %object_set_slot.exit

; <label>:948                                     ; preds = %941
  %949 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_succ) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:950                                     ; preds = %935
  %951 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %952 = load %struct.slot_node** %951            ; <%struct.slot_node*> [#uses=2]
  br label %932

; <label>:953                                     ; preds = %932
  %954 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %955 = icmp eq i8* %954, null                   ; <i1> [#uses=1]
  br i1 %955, label %956, label %mem_alloc.exit.i1

; <label>:956                                     ; preds = %953
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i1:                                ; preds = %953
  %957 = bitcast i8* %954 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %958 = getelementptr i8* %954, i64 8            ; <i8*> [#uses=1]
  %959 = bitcast i8* %958 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %959
  %960 = getelementptr i8* %954, i64 16           ; <i8*> [#uses=1]
  %961 = bitcast i8* %960 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_succ, i32** %961
  %962 = getelementptr i8* %954, i64 24           ; <i8*> [#uses=1]
  %963 = bitcast i8* %962 to i8**                 ; <i8**> [#uses=1]
  store i8* %904, i8** %963
  %964 = bitcast i8* %954 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %964
  %965 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %957, %struct.slot_node** %965
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i1, %948, %946, %object_set_delegate.exit.i, %3
  %966 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @int_cache_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @int_prototype.prototype      ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:967                                     ; preds = %0
  ret i8* %1
}

define internal i8* @int_to_s(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %buffer = alloca [32 x i8], align 1             ; <[32 x i8]*> [#uses=1]
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 2                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([9 x i8]* @__func__.int_to_s, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8]* @"\01LC137", i64 0, i64 0), i32 97, i8* getelementptr inbounds ([30 x i8]* @"\01LC238", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %10 to i64                  ; <i64> [#uses=1]
  %11 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %12 = getelementptr [32 x i8]* %buffer, i64 0, i64 0 ; <i8*> [#uses=2]
  %13 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %12, i32 0, i64 -1, i8* getelementptr inbounds ([3 x i8]* @"\01LC339", i64 0, i64 0), i32 %11) nounwind ; <i32> [#uses=0]
  %14 = call fastcc i8* @string_object(i8* %12)   ; <i8*> [#uses=1]
  ret i8* %14
}

define internal i8* @int_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([4 x i8]* @"\01LC36", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @int_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @int_lt(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp slt i32 %19, %23                     ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal i8* @int_le(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp sle i32 %19, %23                     ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal i8* @int_gt(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp sgt i32 %19, %23                     ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal i8* @int_ge(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp sge i32 %19, %23                     ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal i8* @int_eq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=2]
  %16 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 2                        ; <i1> [#uses=1]
  br i1 %20, label %21, label %array_get_elementC.exit._crit_edge

; <label>:21                                      ; preds = %array_get_elementC.exit
  %22 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  %24 = load i8** %23                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %24 to i64                 ; <i64> [#uses=1]
  %25 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %26 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i8**                   ; <i8**> [#uses=1]
  %28 = load i8** %27                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %28 to i64                  ; <i64> [#uses=1]
  %29 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %30 = icmp eq i32 %25, %29                      ; <i1> [#uses=1]
  %phitmp = zext i1 %30 to i32                    ; <i32> [#uses=1]
  br label %array_get_elementC.exit._crit_edge

array_get_elementC.exit._crit_edge:               ; preds = %21, %array_get_elementC.exit
  %31 = phi i32 [ %phitmp, %21 ], [ 0, %array_get_elementC.exit ] ; <i32> [#uses=1]
  %32 = tail call fastcc i8* @bool_object(i32 %31) ; <i8*> [#uses=1]
  ret i8* %32
}

define internal i8* @int_neq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=2]
  %16 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 2                        ; <i1> [#uses=1]
  br i1 %20, label %21, label %array_get_elementC.exit._crit_edge

; <label>:21                                      ; preds = %array_get_elementC.exit
  %22 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  %24 = load i8** %23                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %24 to i64                 ; <i64> [#uses=1]
  %25 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %26 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i8**                   ; <i8**> [#uses=1]
  %28 = load i8** %27                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %28 to i64                  ; <i64> [#uses=1]
  %29 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %30 = icmp ne i32 %25, %29                      ; <i1> [#uses=1]
  %phitmp = zext i1 %30 to i32                    ; <i32> [#uses=1]
  br label %array_get_elementC.exit._crit_edge

array_get_elementC.exit._crit_edge:               ; preds = %21, %array_get_elementC.exit
  %31 = phi i32 [ %phitmp, %21 ], [ 0, %array_get_elementC.exit ] ; <i32> [#uses=1]
  %32 = tail call fastcc i8* @bool_object(i32 %31) ; <i8*> [#uses=1]
  ret i8* %32
}

define internal i8* @int_add(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %19 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  %21 = load i8** %20                             ; <i8*> [#uses=1]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %26 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %tmp = ptrtoint i8* %21 to i64                  ; <i64> [#uses=1]
  %27 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %28 = add i32 %27, %26                          ; <i32> [#uses=1]
  %29 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %30
  %31 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %32
  %33 = sext i32 %28 to i64                       ; <i64> [#uses=1]
  %34 = inttoptr i64 %33 to i8*                   ; <i8*> [#uses=1]
  %35 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %34, i8** %36
  %37 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %38 = load i32* %32                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %int_object.exit, label %.thread

.thread:                                          ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %25
  %40 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %37, i8** %41
  ret i8* %22
}

define internal i8* @int_sub(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %19 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  %21 = load i8** %20                             ; <i8*> [#uses=1]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %26 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %tmp = ptrtoint i8* %21 to i64                  ; <i64> [#uses=1]
  %27 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %28 = sub i32 %26, %27                          ; <i32> [#uses=1]
  %29 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %30
  %31 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %32
  %33 = sext i32 %28 to i64                       ; <i64> [#uses=1]
  %34 = inttoptr i64 %33 to i8*                   ; <i8*> [#uses=1]
  %35 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %34, i8** %36
  %37 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %38 = load i32* %32                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %int_object.exit, label %.thread

.thread:                                          ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %25
  %40 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %37, i8** %41
  ret i8* %22
}

define internal i8* @int_mul(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %19 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  %21 = load i8** %20                             ; <i8*> [#uses=1]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %26 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %tmp = ptrtoint i8* %21 to i64                  ; <i64> [#uses=1]
  %27 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %28 = mul i32 %27, %26                          ; <i32> [#uses=1]
  %29 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %30
  %31 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %32
  %33 = sext i32 %28 to i64                       ; <i64> [#uses=1]
  %34 = inttoptr i64 %33 to i8*                   ; <i8*> [#uses=1]
  %35 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %34, i8** %36
  %37 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %38 = load i32* %32                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %int_object.exit, label %.thread

.thread:                                          ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %25
  %40 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %37, i8** %41
  ret i8* %22
}

define internal i8* @int_div(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %19 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  %21 = load i8** %20                             ; <i8*> [#uses=1]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %26 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %tmp = ptrtoint i8* %21 to i64                  ; <i64> [#uses=1]
  %27 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %28 = sdiv i32 %26, %27                         ; <i32> [#uses=1]
  %29 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %30
  %31 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %32
  %33 = sext i32 %28 to i64                       ; <i64> [#uses=1]
  %34 = inttoptr i64 %33 to i8*                   ; <i8*> [#uses=1]
  %35 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %34, i8** %36
  %37 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %38 = load i32* %32                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %int_object.exit, label %.thread

.thread:                                          ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %25
  %40 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %37, i8** %41
  ret i8* %22
}

define internal i8* @int_rem(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %19 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  %21 = load i8** %20                             ; <i8*> [#uses=1]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %26 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %tmp = ptrtoint i8* %21 to i64                  ; <i64> [#uses=1]
  %27 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %28 = srem i32 %26, %27                         ; <i32> [#uses=1]
  %29 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %30 = bitcast i8* %29 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %30
  %31 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %32
  %33 = sext i32 %28 to i64                       ; <i64> [#uses=1]
  %34 = inttoptr i64 %33 to i8*                   ; <i8*> [#uses=1]
  %35 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %34, i8** %36
  %37 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %38 = load i32* %32                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %int_object.exit, label %.thread

.thread:                                          ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %25
  %40 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %37, i8** %41
  ret i8* %22
}

define internal i8* @int_succ(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=1]
  %4 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %5 = icmp eq i8* %4, null                       ; <i1> [#uses=1]
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %tmp = ptrtoint i8* %3 to i64                   ; <i64> [#uses=1]
  %8 = trunc i64 %tmp to i32                      ; <i32> [#uses=1]
  %9 = add i32 %8, 1                              ; <i32> [#uses=1]
  %10 = getelementptr i8* %4, i64 12              ; <i8*> [#uses=1]
  %11 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %11
  %12 = getelementptr i8* %4, i64 8               ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %13
  %14 = sext i32 %9 to i64                        ; <i64> [#uses=1]
  %15 = inttoptr i64 %14 to i8*                   ; <i8*> [#uses=1]
  %16 = getelementptr i8* %4, i64 24              ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  store i8* %15, i8** %17
  %18 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %19 = load i32* %13                             ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 364969966                ; <i1> [#uses=1]
  br i1 %20, label %int_object.exit, label %.thread

.thread:                                          ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %7
  %21 = getelementptr i8* %4, i64 16              ; <i8*> [#uses=1]
  %22 = bitcast i8* %21 to i8**                   ; <i8**> [#uses=1]
  store i8* %18, i8** %22
  ret i8* %4
}

define internal fastcc i8* @bool_prototype() nounwind {
  %1 = load i8** @bool_prototype.prototype        ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %521

; <label>:3                                       ; preds = %0
  %4 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %5 = icmp eq i8* %4, null                       ; <i1> [#uses=1]
  br i1 %5, label %6, label %7

; <label>:6                                       ; preds = %3
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %3
  %8 = getelementptr i8* %4, i64 12               ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i32*                     ; <i32*> [#uses=1]
  store i32 512, i32* %9
  %10 = getelementptr i8* %4, i64 8               ; <i8*> [#uses=1]
  %11 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %11
  store i8* %4, i8** @bool_prototype.prototype
  %12 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %13 = load i32* %11                             ; <i32> [#uses=1]
  %14 = icmp eq i32 %13, 364969966                ; <i1> [#uses=1]
  br i1 %14, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %7
  %15 = getelementptr i8* %4, i64 16              ; <i8*> [#uses=1]
  %16 = bitcast i8* %15 to i8**                   ; <i8**> [#uses=1]
  store i8* %12, i8** %16
  %17 = load i8** @bool_prototype.prototype       ; <i8*> [#uses=5]
  %18 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %19 = icmp eq i8* %18, null                     ; <i1> [#uses=1]
  br i1 %19, label %20, label %21

; <label>:20                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:21                                      ; preds = %object_set_delegate.exit
  %22 = getelementptr i8* %18, i64 12             ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %23
  %24 = getelementptr i8* %18, i64 8              ; <i8*> [#uses=1]
  %25 = bitcast i8* %24 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %25
  %26 = getelementptr i8* %18, i64 24             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_to_s to i8*), i8** %27
  %28 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %29 = load i32* %25                             ; <i32> [#uses=1]
  %30 = icmp eq i32 %29, 364969966                ; <i1> [#uses=1]
  br i1 %30, label %closure_object.exit, label %.thread36

.thread36:                                        ; preds = %21
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %21
  %31 = getelementptr i8* %18, i64 16             ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  store i8* %28, i8** %32
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %33, label %42

; <label>:33                                      ; preds = %closure_object.exit
  %34 = icmp eq i8* %17, null                     ; <i1> [#uses=1]
  br i1 %34, label %.thread.i14, label %35

; <label>:35                                      ; preds = %33
  %36 = getelementptr i8* %17, i64 8              ; <i8*> [#uses=1]
  %37 = bitcast i8* %36 to i32*                   ; <i32*> [#uses=1]
  %38 = load i32* %37                             ; <i32> [#uses=1]
  %39 = icmp eq i32 %38, 364969966                ; <i1> [#uses=1]
  br i1 %39, label %object_set_delegate.exit.i15, label %.thread.i14

.thread.i14:                                      ; preds = %35, %33
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i15:                     ; preds = %35
  %40 = getelementptr i8* %17, i64 16             ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i8**                   ; <i8**> [#uses=1]
  store i8* %18, i8** %41
  br label %object_set_slot.exit19

; <label>:42                                      ; preds = %closure_object.exit
  %43 = bitcast i8* %17 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %44 = load %struct.slot_node** %43              ; <%struct.slot_node*> [#uses=2]
  %45 = bitcast i8* %17 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %46

; <label>:46                                      ; preds = %64, %42
  %node.0.i16 = phi %struct.slot_node* [ %44, %42 ], [ %66, %64 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i17 = phi %struct.slot_node* [ %45, %42 ], [ %node.0.i16, %64 ] ; <%struct.slot_node*> [#uses=1]
  %47 = phi %struct.slot_node* [ %66, %64 ], [ %44, %42 ] ; <%struct.slot_node*> [#uses=1]
  %48 = icmp eq %struct.slot_node* %47, null      ; <i1> [#uses=1]
  br i1 %48, label %67, label %49

; <label>:49                                      ; preds = %46
  %50 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 6 ; <i32**> [#uses=1]
  %51 = load i32** %50                            ; <i32*> [#uses=1]
  %52 = ptrtoint i32* %51 to i64                  ; <i64> [#uses=1]
  %53 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %52 ; <i64> [#uses=1]
  %54 = icmp ult i64 %53, 4                       ; <i1> [#uses=1]
  br i1 %54, label %55, label %64

; <label>:55                                      ; preds = %49
  %56 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 1 ; <i32*> [#uses=1]
  %57 = load i32* %56                             ; <i32> [#uses=1]
  %58 = and i32 %57, 2                            ; <i32> [#uses=1]
  %59 = icmp eq i32 %58, 0                        ; <i1> [#uses=1]
  br i1 %59, label %62, label %60

; <label>:60                                      ; preds = %55
  %61 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %18, i8** %61
  br label %object_set_slot.exit19

; <label>:62                                      ; preds = %55
  %63 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit19

; <label>:64                                      ; preds = %49
  %65 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %66 = load %struct.slot_node** %65              ; <%struct.slot_node*> [#uses=2]
  br label %46

; <label>:67                                      ; preds = %46
  %68 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %69 = icmp eq i8* %68, null                     ; <i1> [#uses=1]
  br i1 %69, label %70, label %mem_alloc.exit.i18

; <label>:70                                      ; preds = %67
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i18:                               ; preds = %67
  %71 = bitcast i8* %68 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %72 = getelementptr i8* %68, i64 8              ; <i8*> [#uses=1]
  %73 = bitcast i8* %72 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %73
  %74 = getelementptr i8* %68, i64 16             ; <i8*> [#uses=1]
  %75 = bitcast i8* %74 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %75
  %76 = getelementptr i8* %68, i64 24             ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i8**                   ; <i8**> [#uses=1]
  store i8* %18, i8** %77
  %78 = bitcast i8* %68 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %78
  %79 = getelementptr %struct.slot_node* %last_node.0.i17, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %71, %struct.slot_node** %79
  br label %object_set_slot.exit19

object_set_slot.exit19:                           ; preds = %mem_alloc.exit.i18, %62, %60, %object_set_delegate.exit.i15
  %80 = load i8** @bool_prototype.prototype       ; <i8*> [#uses=5]
  %81 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %82 = icmp eq i8* %81, null                     ; <i1> [#uses=1]
  br i1 %82, label %83, label %84

; <label>:83                                      ; preds = %object_set_slot.exit19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:84                                      ; preds = %object_set_slot.exit19
  %85 = getelementptr i8* %81, i64 12             ; <i8*> [#uses=1]
  %86 = bitcast i8* %85 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %86
  %87 = getelementptr i8* %81, i64 8              ; <i8*> [#uses=1]
  %88 = bitcast i8* %87 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %88
  %89 = getelementptr i8* %81, i64 24             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_class to i8*), i8** %90
  %91 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %92 = load i32* %88                             ; <i32> [#uses=1]
  %93 = icmp eq i32 %92, 364969966                ; <i1> [#uses=1]
  br i1 %93, label %closure_object.exit10, label %.thread37

.thread37:                                        ; preds = %84
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %84
  %94 = getelementptr i8* %81, i64 16             ; <i8*> [#uses=1]
  %95 = bitcast i8* %94 to i8**                   ; <i8**> [#uses=1]
  store i8* %91, i8** %95
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %96, label %105

; <label>:96                                      ; preds = %closure_object.exit10
  %97 = icmp eq i8* %80, null                     ; <i1> [#uses=1]
  br i1 %97, label %.thread.i41, label %98

; <label>:98                                      ; preds = %96
  %99 = getelementptr i8* %80, i64 8              ; <i8*> [#uses=1]
  %100 = bitcast i8* %99 to i32*                  ; <i32*> [#uses=1]
  %101 = load i32* %100                           ; <i32> [#uses=1]
  %102 = icmp eq i32 %101, 364969966              ; <i1> [#uses=1]
  br i1 %102, label %object_set_delegate.exit.i42, label %.thread.i41

.thread.i41:                                      ; preds = %98, %96
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i42:                     ; preds = %98
  %103 = getelementptr i8* %80, i64 16            ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i8**                 ; <i8**> [#uses=1]
  store i8* %81, i8** %104
  br label %object_set_slot.exit46

; <label>:105                                     ; preds = %closure_object.exit10
  %106 = bitcast i8* %80 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %107 = load %struct.slot_node** %106            ; <%struct.slot_node*> [#uses=2]
  %108 = bitcast i8* %80 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %109

; <label>:109                                     ; preds = %127, %105
  %node.0.i43 = phi %struct.slot_node* [ %107, %105 ], [ %129, %127 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i44 = phi %struct.slot_node* [ %108, %105 ], [ %node.0.i43, %127 ] ; <%struct.slot_node*> [#uses=1]
  %110 = phi %struct.slot_node* [ %129, %127 ], [ %107, %105 ] ; <%struct.slot_node*> [#uses=1]
  %111 = icmp eq %struct.slot_node* %110, null    ; <i1> [#uses=1]
  br i1 %111, label %130, label %112

; <label>:112                                     ; preds = %109
  %113 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 6 ; <i32**> [#uses=1]
  %114 = load i32** %113                          ; <i32*> [#uses=1]
  %115 = ptrtoint i32* %114 to i64                ; <i64> [#uses=1]
  %116 = sub i64 ptrtoint (i32* @__sym_class to i64), %115 ; <i64> [#uses=1]
  %117 = icmp ult i64 %116, 4                     ; <i1> [#uses=1]
  br i1 %117, label %118, label %127

; <label>:118                                     ; preds = %112
  %119 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 1 ; <i32*> [#uses=1]
  %120 = load i32* %119                           ; <i32> [#uses=1]
  %121 = and i32 %120, 2                          ; <i32> [#uses=1]
  %122 = icmp eq i32 %121, 0                      ; <i1> [#uses=1]
  br i1 %122, label %125, label %123

; <label>:123                                     ; preds = %118
  %124 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %81, i8** %124
  br label %object_set_slot.exit46

; <label>:125                                     ; preds = %118
  %126 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit46

; <label>:127                                     ; preds = %112
  %128 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %129 = load %struct.slot_node** %128            ; <%struct.slot_node*> [#uses=2]
  br label %109

; <label>:130                                     ; preds = %109
  %131 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %132 = icmp eq i8* %131, null                   ; <i1> [#uses=1]
  br i1 %132, label %133, label %mem_alloc.exit.i45

; <label>:133                                     ; preds = %130
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i45:                               ; preds = %130
  %134 = bitcast i8* %131 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %135 = getelementptr i8* %131, i64 8            ; <i8*> [#uses=1]
  %136 = bitcast i8* %135 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %136
  %137 = getelementptr i8* %131, i64 16           ; <i8*> [#uses=1]
  %138 = bitcast i8* %137 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %138
  %139 = getelementptr i8* %131, i64 24           ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i8**                 ; <i8**> [#uses=1]
  store i8* %81, i8** %140
  %141 = bitcast i8* %131 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %141
  %142 = getelementptr %struct.slot_node* %last_node.0.i44, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %134, %struct.slot_node** %142
  br label %object_set_slot.exit46

object_set_slot.exit46:                           ; preds = %mem_alloc.exit.i45, %125, %123, %object_set_delegate.exit.i42
  %143 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %144 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %145 = icmp eq i8* %144, null                   ; <i1> [#uses=1]
  br i1 %145, label %146, label %147

; <label>:146                                     ; preds = %object_set_slot.exit46
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:147                                     ; preds = %object_set_slot.exit46
  %148 = getelementptr i8* %144, i64 12           ; <i8*> [#uses=1]
  %149 = bitcast i8* %148 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %149
  %150 = getelementptr i8* %144, i64 8            ; <i8*> [#uses=1]
  %151 = bitcast i8* %150 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %151
  %152 = getelementptr i8* %144, i64 24           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_clone to i8*), i8** %153
  %154 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %155 = load i32* %151                           ; <i32> [#uses=1]
  %156 = icmp eq i32 %155, 364969966              ; <i1> [#uses=1]
  br i1 %156, label %closure_object.exit20, label %.thread38

.thread38:                                        ; preds = %147
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %147
  %157 = getelementptr i8* %144, i64 16           ; <i8*> [#uses=1]
  %158 = bitcast i8* %157 to i8**                 ; <i8**> [#uses=1]
  store i8* %154, i8** %158
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %159, label %168

; <label>:159                                     ; preds = %closure_object.exit20
  %160 = icmp eq i8* %143, null                   ; <i1> [#uses=1]
  br i1 %160, label %.thread.i62, label %161

; <label>:161                                     ; preds = %159
  %162 = getelementptr i8* %143, i64 8            ; <i8*> [#uses=1]
  %163 = bitcast i8* %162 to i32*                 ; <i32*> [#uses=1]
  %164 = load i32* %163                           ; <i32> [#uses=1]
  %165 = icmp eq i32 %164, 364969966              ; <i1> [#uses=1]
  br i1 %165, label %object_set_delegate.exit.i63, label %.thread.i62

.thread.i62:                                      ; preds = %161, %159
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i63:                     ; preds = %161
  %166 = getelementptr i8* %143, i64 16           ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i8**                 ; <i8**> [#uses=1]
  store i8* %144, i8** %167
  br label %object_set_slot.exit67

; <label>:168                                     ; preds = %closure_object.exit20
  %169 = bitcast i8* %143 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %170 = load %struct.slot_node** %169            ; <%struct.slot_node*> [#uses=2]
  %171 = bitcast i8* %143 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %172

; <label>:172                                     ; preds = %190, %168
  %node.0.i64 = phi %struct.slot_node* [ %170, %168 ], [ %192, %190 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i65 = phi %struct.slot_node* [ %171, %168 ], [ %node.0.i64, %190 ] ; <%struct.slot_node*> [#uses=1]
  %173 = phi %struct.slot_node* [ %192, %190 ], [ %170, %168 ] ; <%struct.slot_node*> [#uses=1]
  %174 = icmp eq %struct.slot_node* %173, null    ; <i1> [#uses=1]
  br i1 %174, label %193, label %175

; <label>:175                                     ; preds = %172
  %176 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 6 ; <i32**> [#uses=1]
  %177 = load i32** %176                          ; <i32*> [#uses=1]
  %178 = ptrtoint i32* %177 to i64                ; <i64> [#uses=1]
  %179 = sub i64 ptrtoint (i32* @__sym_clone to i64), %178 ; <i64> [#uses=1]
  %180 = icmp ult i64 %179, 4                     ; <i1> [#uses=1]
  br i1 %180, label %181, label %190

; <label>:181                                     ; preds = %175
  %182 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 1 ; <i32*> [#uses=1]
  %183 = load i32* %182                           ; <i32> [#uses=1]
  %184 = and i32 %183, 2                          ; <i32> [#uses=1]
  %185 = icmp eq i32 %184, 0                      ; <i1> [#uses=1]
  br i1 %185, label %188, label %186

; <label>:186                                     ; preds = %181
  %187 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %144, i8** %187
  br label %object_set_slot.exit67

; <label>:188                                     ; preds = %181
  %189 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit67

; <label>:190                                     ; preds = %175
  %191 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %192 = load %struct.slot_node** %191            ; <%struct.slot_node*> [#uses=2]
  br label %172

; <label>:193                                     ; preds = %172
  %194 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %195 = icmp eq i8* %194, null                   ; <i1> [#uses=1]
  br i1 %195, label %196, label %mem_alloc.exit.i66

; <label>:196                                     ; preds = %193
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i66:                               ; preds = %193
  %197 = bitcast i8* %194 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %198 = getelementptr i8* %194, i64 8            ; <i8*> [#uses=1]
  %199 = bitcast i8* %198 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %199
  %200 = getelementptr i8* %194, i64 16           ; <i8*> [#uses=1]
  %201 = bitcast i8* %200 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %201
  %202 = getelementptr i8* %194, i64 24           ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i8**                 ; <i8**> [#uses=1]
  store i8* %144, i8** %203
  %204 = bitcast i8* %194 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %204
  %205 = getelementptr %struct.slot_node* %last_node.0.i65, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %197, %struct.slot_node** %205
  br label %object_set_slot.exit67

object_set_slot.exit67:                           ; preds = %mem_alloc.exit.i66, %188, %186, %object_set_delegate.exit.i63
  %206 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %207 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %208 = icmp eq i8* %207, null                   ; <i1> [#uses=1]
  br i1 %208, label %209, label %210

; <label>:209                                     ; preds = %object_set_slot.exit67
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:210                                     ; preds = %object_set_slot.exit67
  %211 = getelementptr i8* %207, i64 12           ; <i8*> [#uses=1]
  %212 = bitcast i8* %211 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %212
  %213 = getelementptr i8* %207, i64 8            ; <i8*> [#uses=1]
  %214 = bitcast i8* %213 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %214
  %215 = getelementptr i8* %207, i64 24           ; <i8*> [#uses=1]
  %216 = bitcast i8* %215 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_andand to i8*), i8** %216
  %217 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %218 = load i32* %214                           ; <i32> [#uses=1]
  %219 = icmp eq i32 %218, 364969966              ; <i1> [#uses=1]
  br i1 %219, label %closure_object.exit30, label %.thread39

.thread39:                                        ; preds = %210
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit30:                            ; preds = %210
  %220 = getelementptr i8* %207, i64 16           ; <i8*> [#uses=1]
  %221 = bitcast i8* %220 to i8**                 ; <i8**> [#uses=1]
  store i8* %217, i8** %221
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_andand to i64)), i64 4), label %222, label %231

; <label>:222                                     ; preds = %closure_object.exit30
  %223 = icmp eq i8* %206, null                   ; <i1> [#uses=1]
  br i1 %223, label %.thread.i50, label %224

; <label>:224                                     ; preds = %222
  %225 = getelementptr i8* %206, i64 8            ; <i8*> [#uses=1]
  %226 = bitcast i8* %225 to i32*                 ; <i32*> [#uses=1]
  %227 = load i32* %226                           ; <i32> [#uses=1]
  %228 = icmp eq i32 %227, 364969966              ; <i1> [#uses=1]
  br i1 %228, label %object_set_delegate.exit.i51, label %.thread.i50

.thread.i50:                                      ; preds = %224, %222
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i51:                     ; preds = %224
  %229 = getelementptr i8* %206, i64 16           ; <i8*> [#uses=1]
  %230 = bitcast i8* %229 to i8**                 ; <i8**> [#uses=1]
  store i8* %207, i8** %230
  br label %object_set_slot.exit55

; <label>:231                                     ; preds = %closure_object.exit30
  %232 = bitcast i8* %206 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %233 = load %struct.slot_node** %232            ; <%struct.slot_node*> [#uses=2]
  %234 = bitcast i8* %206 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %235

; <label>:235                                     ; preds = %253, %231
  %node.0.i52 = phi %struct.slot_node* [ %233, %231 ], [ %255, %253 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i53 = phi %struct.slot_node* [ %234, %231 ], [ %node.0.i52, %253 ] ; <%struct.slot_node*> [#uses=1]
  %236 = phi %struct.slot_node* [ %255, %253 ], [ %233, %231 ] ; <%struct.slot_node*> [#uses=1]
  %237 = icmp eq %struct.slot_node* %236, null    ; <i1> [#uses=1]
  br i1 %237, label %256, label %238

; <label>:238                                     ; preds = %235
  %239 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 6 ; <i32**> [#uses=1]
  %240 = load i32** %239                          ; <i32*> [#uses=1]
  %241 = ptrtoint i32* %240 to i64                ; <i64> [#uses=1]
  %242 = sub i64 ptrtoint (i32* @__sym_andand to i64), %241 ; <i64> [#uses=1]
  %243 = icmp ult i64 %242, 4                     ; <i1> [#uses=1]
  br i1 %243, label %244, label %253

; <label>:244                                     ; preds = %238
  %245 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 1 ; <i32*> [#uses=1]
  %246 = load i32* %245                           ; <i32> [#uses=1]
  %247 = and i32 %246, 2                          ; <i32> [#uses=1]
  %248 = icmp eq i32 %247, 0                      ; <i1> [#uses=1]
  br i1 %248, label %251, label %249

; <label>:249                                     ; preds = %244
  %250 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %207, i8** %250
  br label %object_set_slot.exit55

; <label>:251                                     ; preds = %244
  %252 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_andand) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit55

; <label>:253                                     ; preds = %238
  %254 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %255 = load %struct.slot_node** %254            ; <%struct.slot_node*> [#uses=2]
  br label %235

; <label>:256                                     ; preds = %235
  %257 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %258 = icmp eq i8* %257, null                   ; <i1> [#uses=1]
  br i1 %258, label %259, label %mem_alloc.exit.i54

; <label>:259                                     ; preds = %256
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i54:                               ; preds = %256
  %260 = bitcast i8* %257 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %261 = getelementptr i8* %257, i64 8            ; <i8*> [#uses=1]
  %262 = bitcast i8* %261 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %262
  %263 = getelementptr i8* %257, i64 16           ; <i8*> [#uses=1]
  %264 = bitcast i8* %263 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_andand, i32** %264
  %265 = getelementptr i8* %257, i64 24           ; <i8*> [#uses=1]
  %266 = bitcast i8* %265 to i8**                 ; <i8**> [#uses=1]
  store i8* %207, i8** %266
  %267 = bitcast i8* %257 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %267
  %268 = getelementptr %struct.slot_node* %last_node.0.i53, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %260, %struct.slot_node** %268
  br label %object_set_slot.exit55

object_set_slot.exit55:                           ; preds = %mem_alloc.exit.i54, %251, %249, %object_set_delegate.exit.i51
  %269 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %270 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %271 = icmp eq i8* %270, null                   ; <i1> [#uses=1]
  br i1 %271, label %272, label %273

; <label>:272                                     ; preds = %object_set_slot.exit55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:273                                     ; preds = %object_set_slot.exit55
  %274 = getelementptr i8* %270, i64 12           ; <i8*> [#uses=1]
  %275 = bitcast i8* %274 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %275
  %276 = getelementptr i8* %270, i64 8            ; <i8*> [#uses=1]
  %277 = bitcast i8* %276 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %277
  %278 = getelementptr i8* %270, i64 24           ; <i8*> [#uses=1]
  %279 = bitcast i8* %278 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_oror to i8*), i8** %279
  %280 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %281 = load i32* %277                           ; <i32> [#uses=1]
  %282 = icmp eq i32 %281, 364969966              ; <i1> [#uses=1]
  br i1 %282, label %closure_object.exit35, label %.thread40

.thread40:                                        ; preds = %273
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit35:                            ; preds = %273
  %283 = getelementptr i8* %270, i64 16           ; <i8*> [#uses=1]
  %284 = bitcast i8* %283 to i8**                 ; <i8**> [#uses=1]
  store i8* %280, i8** %284
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_oror to i64)), i64 4), label %285, label %294

; <label>:285                                     ; preds = %closure_object.exit35
  %286 = icmp eq i8* %269, null                   ; <i1> [#uses=1]
  br i1 %286, label %.thread.i35, label %287

; <label>:287                                     ; preds = %285
  %288 = getelementptr i8* %269, i64 8            ; <i8*> [#uses=1]
  %289 = bitcast i8* %288 to i32*                 ; <i32*> [#uses=1]
  %290 = load i32* %289                           ; <i32> [#uses=1]
  %291 = icmp eq i32 %290, 364969966              ; <i1> [#uses=1]
  br i1 %291, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %287, %285
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %287
  %292 = getelementptr i8* %269, i64 16           ; <i8*> [#uses=1]
  %293 = bitcast i8* %292 to i8**                 ; <i8**> [#uses=1]
  store i8* %270, i8** %293
  br label %object_set_slot.exit40

; <label>:294                                     ; preds = %closure_object.exit35
  %295 = bitcast i8* %269 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %296 = load %struct.slot_node** %295            ; <%struct.slot_node*> [#uses=2]
  %297 = bitcast i8* %269 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %298

; <label>:298                                     ; preds = %316, %294
  %node.0.i37 = phi %struct.slot_node* [ %296, %294 ], [ %318, %316 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %297, %294 ], [ %node.0.i37, %316 ] ; <%struct.slot_node*> [#uses=1]
  %299 = phi %struct.slot_node* [ %318, %316 ], [ %296, %294 ] ; <%struct.slot_node*> [#uses=1]
  %300 = icmp eq %struct.slot_node* %299, null    ; <i1> [#uses=1]
  br i1 %300, label %319, label %301

; <label>:301                                     ; preds = %298
  %302 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %303 = load i32** %302                          ; <i32*> [#uses=1]
  %304 = ptrtoint i32* %303 to i64                ; <i64> [#uses=1]
  %305 = sub i64 ptrtoint (i32* @__sym_oror to i64), %304 ; <i64> [#uses=1]
  %306 = icmp ult i64 %305, 4                     ; <i1> [#uses=1]
  br i1 %306, label %307, label %316

; <label>:307                                     ; preds = %301
  %308 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %309 = load i32* %308                           ; <i32> [#uses=1]
  %310 = and i32 %309, 2                          ; <i32> [#uses=1]
  %311 = icmp eq i32 %310, 0                      ; <i1> [#uses=1]
  br i1 %311, label %314, label %312

; <label>:312                                     ; preds = %307
  %313 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %270, i8** %313
  br label %object_set_slot.exit40

; <label>:314                                     ; preds = %307
  %315 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_oror) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:316                                     ; preds = %301
  %317 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %318 = load %struct.slot_node** %317            ; <%struct.slot_node*> [#uses=2]
  br label %298

; <label>:319                                     ; preds = %298
  %320 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %321 = icmp eq i8* %320, null                   ; <i1> [#uses=1]
  br i1 %321, label %322, label %mem_alloc.exit.i39

; <label>:322                                     ; preds = %319
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %319
  %323 = bitcast i8* %320 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %324 = getelementptr i8* %320, i64 8            ; <i8*> [#uses=1]
  %325 = bitcast i8* %324 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %325
  %326 = getelementptr i8* %320, i64 16           ; <i8*> [#uses=1]
  %327 = bitcast i8* %326 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_oror, i32** %327
  %328 = getelementptr i8* %320, i64 24           ; <i8*> [#uses=1]
  %329 = bitcast i8* %328 to i8**                 ; <i8**> [#uses=1]
  store i8* %270, i8** %329
  %330 = bitcast i8* %320 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %330
  %331 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %323, %struct.slot_node** %331
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %314, %312, %object_set_delegate.exit.i36
  %332 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %333 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %334 = icmp eq i8* %333, null                   ; <i1> [#uses=1]
  br i1 %334, label %335, label %336

; <label>:335                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:336                                     ; preds = %object_set_slot.exit40
  %337 = getelementptr i8* %333, i64 12           ; <i8*> [#uses=1]
  %338 = bitcast i8* %337 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %338
  %339 = getelementptr i8* %333, i64 8            ; <i8*> [#uses=1]
  %340 = bitcast i8* %339 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %340
  %341 = getelementptr i8* %333, i64 24           ; <i8*> [#uses=1]
  %342 = bitcast i8* %341 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_not to i8*), i8** %342
  %343 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %344 = load i32* %340                           ; <i32> [#uses=1]
  %345 = icmp eq i32 %344, 364969966              ; <i1> [#uses=1]
  br i1 %345, label %closure_object.exit25, label %.thread41

.thread41:                                        ; preds = %336
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit25:                            ; preds = %336
  %346 = getelementptr i8* %333, i64 16           ; <i8*> [#uses=1]
  %347 = bitcast i8* %346 to i8**                 ; <i8**> [#uses=1]
  store i8* %343, i8** %347
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_not to i64)), i64 4), label %348, label %357

; <label>:348                                     ; preds = %closure_object.exit25
  %349 = icmp eq i8* %332, null                   ; <i1> [#uses=1]
  br i1 %349, label %.thread.i23, label %350

; <label>:350                                     ; preds = %348
  %351 = getelementptr i8* %332, i64 8            ; <i8*> [#uses=1]
  %352 = bitcast i8* %351 to i32*                 ; <i32*> [#uses=1]
  %353 = load i32* %352                           ; <i32> [#uses=1]
  %354 = icmp eq i32 %353, 364969966              ; <i1> [#uses=1]
  br i1 %354, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %350, %348
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %350
  %355 = getelementptr i8* %332, i64 16           ; <i8*> [#uses=1]
  %356 = bitcast i8* %355 to i8**                 ; <i8**> [#uses=1]
  store i8* %333, i8** %356
  br label %object_set_slot.exit28

; <label>:357                                     ; preds = %closure_object.exit25
  %358 = bitcast i8* %332 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %359 = load %struct.slot_node** %358            ; <%struct.slot_node*> [#uses=2]
  %360 = bitcast i8* %332 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %361

; <label>:361                                     ; preds = %379, %357
  %node.0.i25 = phi %struct.slot_node* [ %359, %357 ], [ %381, %379 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %360, %357 ], [ %node.0.i25, %379 ] ; <%struct.slot_node*> [#uses=1]
  %362 = phi %struct.slot_node* [ %381, %379 ], [ %359, %357 ] ; <%struct.slot_node*> [#uses=1]
  %363 = icmp eq %struct.slot_node* %362, null    ; <i1> [#uses=1]
  br i1 %363, label %382, label %364

; <label>:364                                     ; preds = %361
  %365 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %366 = load i32** %365                          ; <i32*> [#uses=1]
  %367 = ptrtoint i32* %366 to i64                ; <i64> [#uses=1]
  %368 = sub i64 ptrtoint (i32* @__sym_not to i64), %367 ; <i64> [#uses=1]
  %369 = icmp ult i64 %368, 4                     ; <i1> [#uses=1]
  br i1 %369, label %370, label %379

; <label>:370                                     ; preds = %364
  %371 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %372 = load i32* %371                           ; <i32> [#uses=1]
  %373 = and i32 %372, 2                          ; <i32> [#uses=1]
  %374 = icmp eq i32 %373, 0                      ; <i1> [#uses=1]
  br i1 %374, label %377, label %375

; <label>:375                                     ; preds = %370
  %376 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %333, i8** %376
  br label %object_set_slot.exit28

; <label>:377                                     ; preds = %370
  %378 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_not) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:379                                     ; preds = %364
  %380 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %381 = load %struct.slot_node** %380            ; <%struct.slot_node*> [#uses=2]
  br label %361

; <label>:382                                     ; preds = %361
  %383 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %384 = icmp eq i8* %383, null                   ; <i1> [#uses=1]
  br i1 %384, label %385, label %mem_alloc.exit.i27

; <label>:385                                     ; preds = %382
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %382
  %386 = bitcast i8* %383 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %387 = getelementptr i8* %383, i64 8            ; <i8*> [#uses=1]
  %388 = bitcast i8* %387 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %388
  %389 = getelementptr i8* %383, i64 16           ; <i8*> [#uses=1]
  %390 = bitcast i8* %389 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_not, i32** %390
  %391 = getelementptr i8* %383, i64 24           ; <i8*> [#uses=1]
  %392 = bitcast i8* %391 to i8**                 ; <i8**> [#uses=1]
  store i8* %333, i8** %392
  %393 = bitcast i8* %383 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %393
  %394 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %386, %struct.slot_node** %394
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %377, %375, %object_set_delegate.exit.i24
  %395 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %396 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %397 = icmp eq i8* %396, null                   ; <i1> [#uses=1]
  br i1 %397, label %398, label %399

; <label>:398                                     ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:399                                     ; preds = %object_set_slot.exit28
  %400 = getelementptr i8* %396, i64 12           ; <i8*> [#uses=1]
  %401 = bitcast i8* %400 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %401
  %402 = getelementptr i8* %396, i64 8            ; <i8*> [#uses=1]
  %403 = bitcast i8* %402 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %403
  %404 = getelementptr i8* %396, i64 24           ; <i8*> [#uses=1]
  %405 = bitcast i8* %404 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_eq to i8*), i8** %405
  %406 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %407 = load i32* %403                           ; <i32> [#uses=1]
  %408 = icmp eq i32 %407, 364969966              ; <i1> [#uses=1]
  br i1 %408, label %closure_object.exit15, label %.thread42

.thread42:                                        ; preds = %399
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %399
  %409 = getelementptr i8* %396, i64 16           ; <i8*> [#uses=1]
  %410 = bitcast i8* %409 to i8**                 ; <i8**> [#uses=1]
  store i8* %406, i8** %410
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_eq to i64)), i64 4), label %411, label %420

; <label>:411                                     ; preds = %closure_object.exit15
  %412 = icmp eq i8* %395, null                   ; <i1> [#uses=1]
  br i1 %412, label %.thread.i8, label %413

; <label>:413                                     ; preds = %411
  %414 = getelementptr i8* %395, i64 8            ; <i8*> [#uses=1]
  %415 = bitcast i8* %414 to i32*                 ; <i32*> [#uses=1]
  %416 = load i32* %415                           ; <i32> [#uses=1]
  %417 = icmp eq i32 %416, 364969966              ; <i1> [#uses=1]
  br i1 %417, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %413, %411
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %413
  %418 = getelementptr i8* %395, i64 16           ; <i8*> [#uses=1]
  %419 = bitcast i8* %418 to i8**                 ; <i8**> [#uses=1]
  store i8* %396, i8** %419
  br label %object_set_slot.exit13

; <label>:420                                     ; preds = %closure_object.exit15
  %421 = bitcast i8* %395 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %422 = load %struct.slot_node** %421            ; <%struct.slot_node*> [#uses=2]
  %423 = bitcast i8* %395 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %424

; <label>:424                                     ; preds = %442, %420
  %node.0.i10 = phi %struct.slot_node* [ %422, %420 ], [ %444, %442 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %423, %420 ], [ %node.0.i10, %442 ] ; <%struct.slot_node*> [#uses=1]
  %425 = phi %struct.slot_node* [ %444, %442 ], [ %422, %420 ] ; <%struct.slot_node*> [#uses=1]
  %426 = icmp eq %struct.slot_node* %425, null    ; <i1> [#uses=1]
  br i1 %426, label %445, label %427

; <label>:427                                     ; preds = %424
  %428 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %429 = load i32** %428                          ; <i32*> [#uses=1]
  %430 = ptrtoint i32* %429 to i64                ; <i64> [#uses=1]
  %431 = sub i64 ptrtoint (i32* @__sym_eq to i64), %430 ; <i64> [#uses=1]
  %432 = icmp ult i64 %431, 4                     ; <i1> [#uses=1]
  br i1 %432, label %433, label %442

; <label>:433                                     ; preds = %427
  %434 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %435 = load i32* %434                           ; <i32> [#uses=1]
  %436 = and i32 %435, 2                          ; <i32> [#uses=1]
  %437 = icmp eq i32 %436, 0                      ; <i1> [#uses=1]
  br i1 %437, label %440, label %438

; <label>:438                                     ; preds = %433
  %439 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %396, i8** %439
  br label %object_set_slot.exit13

; <label>:440                                     ; preds = %433
  %441 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_eq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:442                                     ; preds = %427
  %443 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %444 = load %struct.slot_node** %443            ; <%struct.slot_node*> [#uses=2]
  br label %424

; <label>:445                                     ; preds = %424
  %446 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %447 = icmp eq i8* %446, null                   ; <i1> [#uses=1]
  br i1 %447, label %448, label %mem_alloc.exit.i12

; <label>:448                                     ; preds = %445
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %445
  %449 = bitcast i8* %446 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %450 = getelementptr i8* %446, i64 8            ; <i8*> [#uses=1]
  %451 = bitcast i8* %450 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %451
  %452 = getelementptr i8* %446, i64 16           ; <i8*> [#uses=1]
  %453 = bitcast i8* %452 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_eq, i32** %453
  %454 = getelementptr i8* %446, i64 24           ; <i8*> [#uses=1]
  %455 = bitcast i8* %454 to i8**                 ; <i8**> [#uses=1]
  store i8* %396, i8** %455
  %456 = bitcast i8* %446 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %456
  %457 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %449, %struct.slot_node** %457
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %440, %438, %object_set_delegate.exit.i9
  %458 = load i8** @bool_prototype.prototype      ; <i8*> [#uses=5]
  %459 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %460 = icmp eq i8* %459, null                   ; <i1> [#uses=1]
  br i1 %460, label %461, label %462

; <label>:461                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:462                                     ; preds = %object_set_slot.exit13
  %463 = getelementptr i8* %459, i64 12           ; <i8*> [#uses=1]
  %464 = bitcast i8* %463 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %464
  %465 = getelementptr i8* %459, i64 8            ; <i8*> [#uses=1]
  %466 = bitcast i8* %465 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %466
  %467 = getelementptr i8* %459, i64 24           ; <i8*> [#uses=1]
  %468 = bitcast i8* %467 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @bool_neq to i8*), i8** %468
  %469 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %470 = load i32* %466                           ; <i32> [#uses=1]
  %471 = icmp eq i32 %470, 364969966              ; <i1> [#uses=1]
  br i1 %471, label %closure_object.exit5, label %.thread43

.thread43:                                        ; preds = %462
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %462
  %472 = getelementptr i8* %459, i64 16           ; <i8*> [#uses=1]
  %473 = bitcast i8* %472 to i8**                 ; <i8**> [#uses=1]
  store i8* %469, i8** %473
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_neq to i64)), i64 4), label %474, label %483

; <label>:474                                     ; preds = %closure_object.exit5
  %475 = icmp eq i8* %458, null                   ; <i1> [#uses=1]
  br i1 %475, label %.thread.i, label %476

; <label>:476                                     ; preds = %474
  %477 = getelementptr i8* %458, i64 8            ; <i8*> [#uses=1]
  %478 = bitcast i8* %477 to i32*                 ; <i32*> [#uses=1]
  %479 = load i32* %478                           ; <i32> [#uses=1]
  %480 = icmp eq i32 %479, 364969966              ; <i1> [#uses=1]
  br i1 %480, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %476, %474
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %476
  %481 = getelementptr i8* %458, i64 16           ; <i8*> [#uses=1]
  %482 = bitcast i8* %481 to i8**                 ; <i8**> [#uses=1]
  store i8* %459, i8** %482
  br label %object_set_slot.exit

; <label>:483                                     ; preds = %closure_object.exit5
  %484 = bitcast i8* %458 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %485 = load %struct.slot_node** %484            ; <%struct.slot_node*> [#uses=2]
  %486 = bitcast i8* %458 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %487

; <label>:487                                     ; preds = %505, %483
  %node.0.i = phi %struct.slot_node* [ %485, %483 ], [ %507, %505 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %486, %483 ], [ %node.0.i, %505 ] ; <%struct.slot_node*> [#uses=1]
  %488 = phi %struct.slot_node* [ %507, %505 ], [ %485, %483 ] ; <%struct.slot_node*> [#uses=1]
  %489 = icmp eq %struct.slot_node* %488, null    ; <i1> [#uses=1]
  br i1 %489, label %508, label %490

; <label>:490                                     ; preds = %487
  %491 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %492 = load i32** %491                          ; <i32*> [#uses=1]
  %493 = ptrtoint i32* %492 to i64                ; <i64> [#uses=1]
  %494 = sub i64 ptrtoint (i32* @__sym_neq to i64), %493 ; <i64> [#uses=1]
  %495 = icmp ult i64 %494, 4                     ; <i1> [#uses=1]
  br i1 %495, label %496, label %505

; <label>:496                                     ; preds = %490
  %497 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %498 = load i32* %497                           ; <i32> [#uses=1]
  %499 = and i32 %498, 2                          ; <i32> [#uses=1]
  %500 = icmp eq i32 %499, 0                      ; <i1> [#uses=1]
  br i1 %500, label %503, label %501

; <label>:501                                     ; preds = %496
  %502 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %459, i8** %502
  br label %object_set_slot.exit

; <label>:503                                     ; preds = %496
  %504 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_neq) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:505                                     ; preds = %490
  %506 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %507 = load %struct.slot_node** %506            ; <%struct.slot_node*> [#uses=2]
  br label %487

; <label>:508                                     ; preds = %487
  %509 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %510 = icmp eq i8* %509, null                   ; <i1> [#uses=1]
  br i1 %510, label %511, label %mem_alloc.exit.i1

; <label>:511                                     ; preds = %508
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i1:                                ; preds = %508
  %512 = bitcast i8* %509 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %513 = getelementptr i8* %509, i64 8            ; <i8*> [#uses=1]
  %514 = bitcast i8* %513 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %514
  %515 = getelementptr i8* %509, i64 16           ; <i8*> [#uses=1]
  %516 = bitcast i8* %515 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_neq, i32** %516
  %517 = getelementptr i8* %509, i64 24           ; <i8*> [#uses=1]
  %518 = bitcast i8* %517 to i8**                 ; <i8**> [#uses=1]
  store i8* %459, i8** %518
  %519 = bitcast i8* %509 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %519
  %520 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %512, %struct.slot_node** %520
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i1, %503, %501, %object_set_delegate.exit.i
  %.pre = load i8** @bool_prototype.prototype     ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:521                                     ; preds = %0
  ret i8* %1
}

define internal i8* @bool_to_s(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 6                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.bool_to_s, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8]* @"\01LC142", i64 0, i64 0), i32 106, i8* getelementptr inbounds ([27 x i8]* @"\01LC243", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %10 to i64                  ; <i64> [#uses=1]
  %11 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %12 = icmp eq i32 %11, 0                        ; <i1> [#uses=1]
  br i1 %12, label %15, label %13

; <label>:13                                      ; preds = %7
  %14 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([5 x i8]* @"\01LC344", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %14

; <label>:15                                      ; preds = %7
  %16 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([6 x i8]* @"\01LC445", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %16
}

define internal i8* @bool_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([5 x i8]* @"\01LC41", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @bool_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @bool_andand(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=2]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %18 to i64                  ; <i64> [#uses=1]
  %19 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 0                        ; <i1> [#uses=1]
  br i1 %20, label %bool_get_value.exit, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  %22 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=1]
  %24 = load i32* %23                             ; <i32> [#uses=1]
  %25 = and i32 %24, 255                          ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 1                        ; <i1> [#uses=1]
  br i1 %26, label %bool_get_value.exit, label %27

; <label>:27                                      ; preds = %21
  %28 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i8**                   ; <i8**> [#uses=1]
  %30 = load i8** %29                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %30 to i64                ; <i64> [#uses=1]
  %31 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=1]
  %32 = icmp ne i32 %31, 0                        ; <i1> [#uses=1]
  %33 = zext i1 %32 to i32                        ; <i32> [#uses=1]
  br label %bool_get_value.exit

bool_get_value.exit:                              ; preds = %27, %21, %array_get_elementC.exit
  %34 = phi i32 [ %33, %27 ], [ 0, %array_get_elementC.exit ], [ 0, %21 ] ; <i32> [#uses=1]
  %35 = tail call fastcc i8* @bool_object(i32 %34) ; <i8*> [#uses=1]
  ret i8* %35
}

define internal i8* @bool_oror(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=2]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %18 to i64                  ; <i64> [#uses=1]
  %19 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 0                        ; <i1> [#uses=1]
  br i1 %20, label %21, label %bool_get_value.exit

; <label>:21                                      ; preds = %array_get_elementC.exit
  %22 = getelementptr i8* %storemerge.i, i64 12   ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=1]
  %24 = load i32* %23                             ; <i32> [#uses=1]
  %25 = and i32 %24, 255                          ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 1                        ; <i1> [#uses=1]
  br i1 %26, label %bool_get_value.exit, label %27

; <label>:27                                      ; preds = %21
  %28 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i8**                   ; <i8**> [#uses=1]
  %30 = load i8** %29                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %30 to i64                ; <i64> [#uses=1]
  %31 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=1]
  %32 = icmp ne i32 %31, 0                        ; <i1> [#uses=1]
  %33 = zext i1 %32 to i32                        ; <i32> [#uses=1]
  br label %bool_get_value.exit

bool_get_value.exit:                              ; preds = %27, %21, %array_get_elementC.exit
  %34 = phi i32 [ %33, %27 ], [ 1, %array_get_elementC.exit ], [ 0, %21 ] ; <i32> [#uses=1]
  %35 = tail call fastcc i8* @bool_object(i32 %34) ; <i8*> [#uses=1]
  ret i8* %35
}

define internal i8* @bool_not(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %3 to i64                   ; <i64> [#uses=1]
  %4 = trunc i64 %tmp to i32                      ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 0                          ; <i1> [#uses=1]
  %6 = zext i1 %5 to i32                          ; <i32> [#uses=1]
  %7 = tail call fastcc i8* @bool_object(i32 %6)  ; <i8*> [#uses=1]
  ret i8* %7
}

define internal i8* @bool_eq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp eq i32 %19, %23                      ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal i8* @bool_neq(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp1 = ptrtoint i8* %18 to i64                 ; <i64> [#uses=1]
  %19 = trunc i64 %tmp1 to i32                    ; <i32> [#uses=1]
  %20 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %22 to i64                  ; <i64> [#uses=1]
  %23 = trunc i64 %tmp to i32                     ; <i32> [#uses=1]
  %24 = icmp ne i32 %19, %23                      ; <i1> [#uses=1]
  %25 = zext i1 %24 to i32                        ; <i32> [#uses=1]
  %26 = tail call fastcc i8* @bool_object(i32 %25) ; <i8*> [#uses=1]
  ret i8* %26
}

define internal fastcc i8* @bool_object(i32 %value) nounwind {
  %1 = icmp eq i32 %value, 0                      ; <i1> [#uses=1]
  br i1 %1, label %30, label %2

; <label>:2                                       ; preds = %0
  %3 = load i8** @bool_true.cached_true           ; <i8*> [#uses=1]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %bool_true.exit

; <label>:5                                       ; preds = %2
  %6 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @bool_cache_m) nounwind ; <i32> [#uses=0]
  %7 = load i8** @bool_true.cached_true           ; <i8*> [#uses=1]
  %8 = icmp eq i8* %7, null                       ; <i1> [#uses=1]
  br i1 %8, label %9, label %._crit_edge

; <label>:9                                       ; preds = %5
  %10 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=5]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %object_alloc.exit

; <label>:12                                      ; preds = %9
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

object_alloc.exit:                                ; preds = %9
  %13 = getelementptr i8* %10, i64 12             ; <i8*> [#uses=1]
  %14 = bitcast i8* %13 to i32*                   ; <i32*> [#uses=1]
  store i32 262, i32* %14
  %15 = getelementptr i8* %10, i64 8              ; <i8*> [#uses=1]
  %16 = bitcast i8* %15 to i32*                   ; <i32*> [#uses=1]
  store i32 364969966, i32* %16
  store i8* %10, i8** @bool_true.cached_true
  %17 = getelementptr i8* %10, i64 24             ; <i8*> [#uses=1]
  %18 = bitcast i8* %17 to i8**                   ; <i8**> [#uses=1]
  store i8* inttoptr (i64 1 to i8*), i8** %18
  %19 = load i8** @bool_true.cached_true          ; <i8*> [#uses=3]
  %20 = tail call fastcc i8* @bool_prototype() nounwind ; <i8*> [#uses=1]
  %21 = icmp eq i8* %19, null                     ; <i1> [#uses=1]
  br i1 %21, label %.thread, label %22

; <label>:22                                      ; preds = %object_alloc.exit
  %23 = getelementptr i8* %19, i64 8              ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i32*                   ; <i32*> [#uses=1]
  %25 = load i32* %24                             ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 364969966                ; <i1> [#uses=1]
  br i1 %26, label %object_set_delegate.exit.i, label %.thread

.thread:                                          ; preds = %22, %object_alloc.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %22
  %27 = getelementptr i8* %19, i64 16             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* %20, i8** %28
  br label %._crit_edge

._crit_edge:                                      ; preds = %object_set_delegate.exit.i, %5
  %29 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @bool_cache_m) nounwind ; <i32> [#uses=0]
  br label %bool_true.exit

; <label>:30                                      ; preds = %0
  %31 = load i8** @bool_false.cached_false        ; <i8*> [#uses=1]
  %32 = icmp eq i8* %31, null                     ; <i1> [#uses=1]
  br i1 %32, label %33, label %bool_true.exit

; <label>:33                                      ; preds = %30
  %34 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @bool_cache_m) nounwind ; <i32> [#uses=0]
  %35 = load i8** @bool_false.cached_false        ; <i8*> [#uses=1]
  %36 = icmp eq i8* %35, null                     ; <i1> [#uses=1]
  br i1 %36, label %37, label %._crit_edge5

; <label>:37                                      ; preds = %33
  %38 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=5]
  %39 = icmp eq i8* %38, null                     ; <i1> [#uses=1]
  br i1 %39, label %40, label %object_alloc.exit3

; <label>:40                                      ; preds = %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

object_alloc.exit3:                               ; preds = %37
  %41 = getelementptr i8* %38, i64 12             ; <i8*> [#uses=1]
  %42 = bitcast i8* %41 to i32*                   ; <i32*> [#uses=1]
  store i32 262, i32* %42
  %43 = getelementptr i8* %38, i64 8              ; <i8*> [#uses=1]
  %44 = bitcast i8* %43 to i32*                   ; <i32*> [#uses=1]
  store i32 364969966, i32* %44
  store i8* %38, i8** @bool_false.cached_false
  %45 = getelementptr i8* %38, i64 24             ; <i8*> [#uses=1]
  %46 = bitcast i8* %45 to i8**                   ; <i8**> [#uses=1]
  store i8* null, i8** %46
  %47 = load i8** @bool_false.cached_false        ; <i8*> [#uses=3]
  %48 = tail call fastcc i8* @bool_prototype() nounwind ; <i8*> [#uses=1]
  %49 = icmp eq i8* %47, null                     ; <i1> [#uses=1]
  br i1 %49, label %.thread4, label %50

; <label>:50                                      ; preds = %object_alloc.exit3
  %51 = getelementptr i8* %47, i64 8              ; <i8*> [#uses=1]
  %52 = bitcast i8* %51 to i32*                   ; <i32*> [#uses=1]
  %53 = load i32* %52                             ; <i32> [#uses=1]
  %54 = icmp eq i32 %53, 364969966                ; <i1> [#uses=1]
  br i1 %54, label %object_set_delegate.exit.i3, label %.thread4

.thread4:                                         ; preds = %50, %object_alloc.exit3
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i3:                      ; preds = %50
  %55 = getelementptr i8* %47, i64 16             ; <i8*> [#uses=1]
  %56 = bitcast i8* %55 to i8**                   ; <i8**> [#uses=1]
  store i8* %48, i8** %56
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %object_set_delegate.exit.i3, %33
  %57 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @bool_cache_m) nounwind ; <i32> [#uses=0]
  br label %bool_true.exit

bool_true.exit:                                   ; preds = %._crit_edge5, %30, %._crit_edge, %2
  %.in = phi i8** [ @bool_true.cached_true, %._crit_edge ], [ @bool_false.cached_false, %._crit_edge5 ], [ @bool_true.cached_true, %2 ], [ @bool_false.cached_false, %30 ] ; <i8**> [#uses=1]
  %58 = load i8** %.in                            ; <i8*> [#uses=1]
  ret i8* %58
}

define internal fastcc i8* @array_object(i32 %size) nounwind {
  %1 = icmp eq i32 %size, 0                       ; <i1> [#uses=1]
  br i1 %1, label %2, label %30

; <label>:2                                       ; preds = %0
  %3 = load i8** @empty_c                         ; <i8*> [#uses=2]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %empty_array.exit

; <label>:5                                       ; preds = %2
  %6 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @array_cache_m) nounwind ; <i32> [#uses=0]
  %7 = load i8** @empty_c                         ; <i8*> [#uses=1]
  %8 = icmp eq i8* %7, null                       ; <i1> [#uses=1]
  br i1 %8, label %9, label %._crit_edge

; <label>:9                                       ; preds = %5
  %10 = tail call i8* @GC_debug_malloc(i64 8, i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 109) nounwind ; <i8*> [#uses=3]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %mem_alloc.exit.i

; <label>:12                                      ; preds = %9
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i:                                 ; preds = %9
  %13 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %13
  %14 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %15 = icmp eq i8* %14, null                     ; <i1> [#uses=1]
  br i1 %15, label %16, label %17

; <label>:16                                      ; preds = %mem_alloc.exit.i
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:17                                      ; preds = %mem_alloc.exit.i
  %18 = getelementptr i8* %14, i64 12             ; <i8*> [#uses=1]
  %19 = bitcast i8* %18 to i32*                   ; <i32*> [#uses=1]
  store i32 263, i32* %19
  %20 = getelementptr i8* %14, i64 8              ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %21
  store i8* %14, i8** @empty_c
  %22 = getelementptr i8* %14, i64 24             ; <i8*> [#uses=1]
  %23 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  store i8* %10, i8** %23
  %24 = tail call fastcc i8* @array_prototype() nounwind ; <i8*> [#uses=1]
  %25 = load i32* %21                             ; <i32> [#uses=1]
  %26 = icmp eq i32 %25, 364969966                ; <i1> [#uses=1]
  br i1 %26, label %object_set_delegate.exit.i, label %.thread

.thread:                                          ; preds = %17
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %17
  %27 = getelementptr i8* %14, i64 16             ; <i8*> [#uses=1]
  %28 = bitcast i8* %27 to i8**                   ; <i8**> [#uses=1]
  store i8* %24, i8** %28
  br label %._crit_edge

._crit_edge:                                      ; preds = %object_set_delegate.exit.i, %5
  %29 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @array_cache_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @empty_c                      ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:30                                      ; preds = %0
  %31 = add i32 %size, 1                          ; <i32> [#uses=1]
  %32 = sext i32 %31 to i64                       ; <i64> [#uses=1]
  %33 = shl i64 %32, 3                            ; <i64> [#uses=1]
  %34 = tail call i8* @GC_debug_malloc(i64 %33, i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 92) nounwind ; <i8*> [#uses=3]
  %35 = icmp eq i8* %34, null                     ; <i1> [#uses=1]
  br i1 %35, label %36, label %mem_alloc.exit

; <label>:36                                      ; preds = %30
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit:                                   ; preds = %30
  %37 = bitcast i8* %34 to i32*                   ; <i32*> [#uses=1]
  store i32 %size, i32* %37
  %38 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %39 = icmp eq i8* %38, null                     ; <i1> [#uses=1]
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %mem_alloc.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:41                                      ; preds = %mem_alloc.exit
  %42 = getelementptr i8* %38, i64 12             ; <i8*> [#uses=1]
  %43 = bitcast i8* %42 to i32*                   ; <i32*> [#uses=1]
  store i32 263, i32* %43
  %44 = getelementptr i8* %38, i64 8              ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %45
  %46 = getelementptr i8* %38, i64 24             ; <i8*> [#uses=1]
  %47 = bitcast i8* %46 to i8**                   ; <i8**> [#uses=2]
  store i8* %34, i8** %47
  %48 = tail call fastcc i8* @array_prototype()   ; <i8*> [#uses=1]
  %49 = load i32* %45                             ; <i32> [#uses=1]
  %50 = icmp eq i32 %49, 364969966                ; <i1> [#uses=1]
  br i1 %50, label %object_set_delegate.exit, label %.thread3

.thread3:                                         ; preds = %41
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %41
  %51 = getelementptr i8* %38, i64 16             ; <i8*> [#uses=1]
  %52 = bitcast i8* %51 to i8**                   ; <i8**> [#uses=1]
  store i8* %48, i8** %52
  br label %53

; <label>:53                                      ; preds = %67, %object_set_delegate.exit
  %54 = phi i32 [ %tmp, %67 ], [ 0, %object_set_delegate.exit ] ; <i32> [#uses=4]
  %tmp = add i32 %54, 1                           ; <i32> [#uses=2]
  %55 = icmp ult i32 %54, %size                   ; <i1> [#uses=1]
  br i1 %55, label %56, label %empty_array.exit

; <label>:56                                      ; preds = %53
  %57 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  %58 = load i8** %47                             ; <i8*> [#uses=3]
  %59 = icmp eq i8* %58, null                     ; <i1> [#uses=1]
  br i1 %59, label %60, label %61

; <label>:60                                      ; preds = %56
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:61                                      ; preds = %56
  %62 = icmp slt i32 %54, 0                       ; <i1> [#uses=1]
  br i1 %62, label %._crit_edge6, label %63

; <label>:63                                      ; preds = %61
  %64 = bitcast i8* %58 to i32*                   ; <i32*> [#uses=1]
  %65 = load i32* %64                             ; <i32> [#uses=1]
  %66 = icmp slt i32 %54, %65                     ; <i1> [#uses=1]
  br i1 %66, label %67, label %._crit_edge6

._crit_edge6:                                     ; preds = %63, %61
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:67                                      ; preds = %63
  %68 = bitcast i8* %58 to i8**                   ; <i8**> [#uses=1]
  %69 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %70 = getelementptr i8** %68, i64 %69           ; <i8**> [#uses=1]
  store i8* %57, i8** %70
  br label %53

empty_array.exit:                                 ; preds = %53, %2
  %obj.0 = phi i8* [ %3, %2 ], [ %38, %53 ]       ; <i8*> [#uses=1]
  ret i8* %obj.0
}

define internal fastcc i8* @array_prototype() nounwind {
  %1 = load i8** @array_prototype.prototype       ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %778

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @array_cache_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @array_prototype.prototype       ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:11                                      ; preds = %7
  %12 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 512, i32* %13
  %14 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  store i8* %8, i8** @array_prototype.prototype
  %16 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %17 = load i32* %15                             ; <i32> [#uses=1]
  %18 = icmp eq i32 %17, 364969966                ; <i1> [#uses=1]
  br i1 %18, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %11
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %11
  %19 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i8**                   ; <i8**> [#uses=1]
  store i8* %16, i8** %20
  %21 = load i8** @array_prototype.prototype      ; <i8*> [#uses=5]
  %22 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %object_set_delegate.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %object_set_delegate.exit
  %26 = getelementptr i8* %22, i64 12             ; <i8*> [#uses=1]
  %27 = bitcast i8* %26 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %27
  %28 = getelementptr i8* %22, i64 8              ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %29
  %30 = getelementptr i8* %22, i64 24             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_at to i8*), i8** %31
  %32 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %33 = load i32* %29                             ; <i32> [#uses=1]
  %34 = icmp eq i32 %33, 364969966                ; <i1> [#uses=1]
  br i1 %34, label %closure_object.exit, label %.thread56

.thread56:                                        ; preds = %25
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %25
  %35 = getelementptr i8* %22, i64 16             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  store i8* %32, i8** %36
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_at to i64)), i64 4), label %37, label %46

; <label>:37                                      ; preds = %closure_object.exit
  %38 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %38, label %.thread.i14, label %39

; <label>:39                                      ; preds = %37
  %40 = getelementptr i8* %21, i64 8              ; <i8*> [#uses=1]
  %41 = bitcast i8* %40 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 364969966                ; <i1> [#uses=1]
  br i1 %43, label %object_set_delegate.exit.i15, label %.thread.i14

.thread.i14:                                      ; preds = %39, %37
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i15:                     ; preds = %39
  %44 = getelementptr i8* %21, i64 16             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %45
  br label %object_set_slot.exit19

; <label>:46                                      ; preds = %closure_object.exit
  %47 = bitcast i8* %21 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %48 = load %struct.slot_node** %47              ; <%struct.slot_node*> [#uses=2]
  %49 = bitcast i8* %21 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %50

; <label>:50                                      ; preds = %68, %46
  %node.0.i16 = phi %struct.slot_node* [ %48, %46 ], [ %70, %68 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i17 = phi %struct.slot_node* [ %49, %46 ], [ %node.0.i16, %68 ] ; <%struct.slot_node*> [#uses=1]
  %51 = phi %struct.slot_node* [ %70, %68 ], [ %48, %46 ] ; <%struct.slot_node*> [#uses=1]
  %52 = icmp eq %struct.slot_node* %51, null      ; <i1> [#uses=1]
  br i1 %52, label %71, label %53

; <label>:53                                      ; preds = %50
  %54 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 6 ; <i32**> [#uses=1]
  %55 = load i32** %54                            ; <i32*> [#uses=1]
  %56 = ptrtoint i32* %55 to i64                  ; <i64> [#uses=1]
  %57 = sub i64 ptrtoint (i32* @__sym_at to i64), %56 ; <i64> [#uses=1]
  %58 = icmp ult i64 %57, 4                       ; <i1> [#uses=1]
  br i1 %58, label %59, label %68

; <label>:59                                      ; preds = %53
  %60 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 1 ; <i32*> [#uses=1]
  %61 = load i32* %60                             ; <i32> [#uses=1]
  %62 = and i32 %61, 2                            ; <i32> [#uses=1]
  %63 = icmp eq i32 %62, 0                        ; <i1> [#uses=1]
  br i1 %63, label %66, label %64

; <label>:64                                      ; preds = %59
  %65 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %22, i8** %65
  br label %object_set_slot.exit19

; <label>:66                                      ; preds = %59
  %67 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_at) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit19

; <label>:68                                      ; preds = %53
  %69 = getelementptr %struct.slot_node* %node.0.i16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %70 = load %struct.slot_node** %69              ; <%struct.slot_node*> [#uses=2]
  br label %50

; <label>:71                                      ; preds = %50
  %72 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %mem_alloc.exit.i18

; <label>:74                                      ; preds = %71
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i18:                               ; preds = %71
  %75 = bitcast i8* %72 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %76 = getelementptr i8* %72, i64 8              ; <i8*> [#uses=1]
  %77 = bitcast i8* %76 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %77
  %78 = getelementptr i8* %72, i64 16             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_at, i32** %79
  %80 = getelementptr i8* %72, i64 24             ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i8**                   ; <i8**> [#uses=1]
  store i8* %22, i8** %81
  %82 = bitcast i8* %72 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %82
  %83 = getelementptr %struct.slot_node* %last_node.0.i17, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %75, %struct.slot_node** %83
  br label %object_set_slot.exit19

object_set_slot.exit19:                           ; preds = %mem_alloc.exit.i18, %66, %64, %object_set_delegate.exit.i15
  %84 = load i8** @array_prototype.prototype      ; <i8*> [#uses=5]
  %85 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %object_set_slot.exit19
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %object_set_slot.exit19
  %89 = getelementptr i8* %85, i64 12             ; <i8*> [#uses=1]
  %90 = bitcast i8* %89 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %90
  %91 = getelementptr i8* %85, i64 8              ; <i8*> [#uses=1]
  %92 = bitcast i8* %91 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %92
  %93 = getelementptr i8* %85, i64 24             ; <i8*> [#uses=1]
  %94 = bitcast i8* %93 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_to_s to i8*), i8** %94
  %95 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %96 = load i32* %92                             ; <i32> [#uses=1]
  %97 = icmp eq i32 %96, 364969966                ; <i1> [#uses=1]
  br i1 %97, label %closure_object.exit10, label %.thread57

.thread57:                                        ; preds = %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %88
  %98 = getelementptr i8* %85, i64 16             ; <i8*> [#uses=1]
  %99 = bitcast i8* %98 to i8**                   ; <i8**> [#uses=1]
  store i8* %95, i8** %99
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %100, label %109

; <label>:100                                     ; preds = %closure_object.exit10
  %101 = icmp eq i8* %84, null                    ; <i1> [#uses=1]
  br i1 %101, label %.thread.i41, label %102

; <label>:102                                     ; preds = %100
  %103 = getelementptr i8* %84, i64 8             ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i32*                 ; <i32*> [#uses=1]
  %105 = load i32* %104                           ; <i32> [#uses=1]
  %106 = icmp eq i32 %105, 364969966              ; <i1> [#uses=1]
  br i1 %106, label %object_set_delegate.exit.i42, label %.thread.i41

.thread.i41:                                      ; preds = %102, %100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i42:                     ; preds = %102
  %107 = getelementptr i8* %84, i64 16            ; <i8*> [#uses=1]
  %108 = bitcast i8* %107 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %108
  br label %object_set_slot.exit46

; <label>:109                                     ; preds = %closure_object.exit10
  %110 = bitcast i8* %84 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  %111 = load %struct.slot_node** %110            ; <%struct.slot_node*> [#uses=2]
  %112 = bitcast i8* %84 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %113

; <label>:113                                     ; preds = %131, %109
  %node.0.i43 = phi %struct.slot_node* [ %111, %109 ], [ %133, %131 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i44 = phi %struct.slot_node* [ %112, %109 ], [ %node.0.i43, %131 ] ; <%struct.slot_node*> [#uses=1]
  %114 = phi %struct.slot_node* [ %133, %131 ], [ %111, %109 ] ; <%struct.slot_node*> [#uses=1]
  %115 = icmp eq %struct.slot_node* %114, null    ; <i1> [#uses=1]
  br i1 %115, label %134, label %116

; <label>:116                                     ; preds = %113
  %117 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 6 ; <i32**> [#uses=1]
  %118 = load i32** %117                          ; <i32*> [#uses=1]
  %119 = ptrtoint i32* %118 to i64                ; <i64> [#uses=1]
  %120 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %119 ; <i64> [#uses=1]
  %121 = icmp ult i64 %120, 4                     ; <i1> [#uses=1]
  br i1 %121, label %122, label %131

; <label>:122                                     ; preds = %116
  %123 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 1 ; <i32*> [#uses=1]
  %124 = load i32* %123                           ; <i32> [#uses=1]
  %125 = and i32 %124, 2                          ; <i32> [#uses=1]
  %126 = icmp eq i32 %125, 0                      ; <i1> [#uses=1]
  br i1 %126, label %129, label %127

; <label>:127                                     ; preds = %122
  %128 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %85, i8** %128
  br label %object_set_slot.exit46

; <label>:129                                     ; preds = %122
  %130 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit46

; <label>:131                                     ; preds = %116
  %132 = getelementptr %struct.slot_node* %node.0.i43, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %133 = load %struct.slot_node** %132            ; <%struct.slot_node*> [#uses=2]
  br label %113

; <label>:134                                     ; preds = %113
  %135 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %136 = icmp eq i8* %135, null                   ; <i1> [#uses=1]
  br i1 %136, label %137, label %mem_alloc.exit.i45

; <label>:137                                     ; preds = %134
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i45:                               ; preds = %134
  %138 = bitcast i8* %135 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %139 = getelementptr i8* %135, i64 8            ; <i8*> [#uses=1]
  %140 = bitcast i8* %139 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %140
  %141 = getelementptr i8* %135, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %142
  %143 = getelementptr i8* %135, i64 24           ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i8**                 ; <i8**> [#uses=1]
  store i8* %85, i8** %144
  %145 = bitcast i8* %135 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %145
  %146 = getelementptr %struct.slot_node* %last_node.0.i44, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %138, %struct.slot_node** %146
  br label %object_set_slot.exit46

object_set_slot.exit46:                           ; preds = %mem_alloc.exit.i45, %129, %127, %object_set_delegate.exit.i42
  %147 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %148 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %149 = icmp eq i8* %148, null                   ; <i1> [#uses=1]
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %object_set_slot.exit46
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:151                                     ; preds = %object_set_slot.exit46
  %152 = getelementptr i8* %148, i64 12           ; <i8*> [#uses=1]
  %153 = bitcast i8* %152 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %153
  %154 = getelementptr i8* %148, i64 8            ; <i8*> [#uses=1]
  %155 = bitcast i8* %154 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %155
  %156 = getelementptr i8* %148, i64 24           ; <i8*> [#uses=1]
  %157 = bitcast i8* %156 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_apply to i8*), i8** %157
  %158 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %159 = load i32* %155                           ; <i32> [#uses=1]
  %160 = icmp eq i32 %159, 364969966              ; <i1> [#uses=1]
  br i1 %160, label %closure_object.exit20, label %.thread58

.thread58:                                        ; preds = %151
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %151
  %161 = getelementptr i8* %148, i64 16           ; <i8*> [#uses=1]
  %162 = bitcast i8* %161 to i8**                 ; <i8**> [#uses=1]
  store i8* %158, i8** %162
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_apply to i64)), i64 4), label %163, label %172

; <label>:163                                     ; preds = %closure_object.exit20
  %164 = icmp eq i8* %147, null                   ; <i1> [#uses=1]
  br i1 %164, label %.thread.i68, label %165

; <label>:165                                     ; preds = %163
  %166 = getelementptr i8* %147, i64 8            ; <i8*> [#uses=1]
  %167 = bitcast i8* %166 to i32*                 ; <i32*> [#uses=1]
  %168 = load i32* %167                           ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 364969966              ; <i1> [#uses=1]
  br i1 %169, label %object_set_delegate.exit.i69, label %.thread.i68

.thread.i68:                                      ; preds = %165, %163
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i69:                     ; preds = %165
  %170 = getelementptr i8* %147, i64 16           ; <i8*> [#uses=1]
  %171 = bitcast i8* %170 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %171
  br label %object_set_slot.exit73

; <label>:172                                     ; preds = %closure_object.exit20
  %173 = bitcast i8* %147 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %174 = load %struct.slot_node** %173            ; <%struct.slot_node*> [#uses=2]
  %175 = bitcast i8* %147 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %176

; <label>:176                                     ; preds = %194, %172
  %node.0.i70 = phi %struct.slot_node* [ %174, %172 ], [ %196, %194 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i71 = phi %struct.slot_node* [ %175, %172 ], [ %node.0.i70, %194 ] ; <%struct.slot_node*> [#uses=1]
  %177 = phi %struct.slot_node* [ %196, %194 ], [ %174, %172 ] ; <%struct.slot_node*> [#uses=1]
  %178 = icmp eq %struct.slot_node* %177, null    ; <i1> [#uses=1]
  br i1 %178, label %197, label %179

; <label>:179                                     ; preds = %176
  %180 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 6 ; <i32**> [#uses=1]
  %181 = load i32** %180                          ; <i32*> [#uses=1]
  %182 = ptrtoint i32* %181 to i64                ; <i64> [#uses=1]
  %183 = sub i64 ptrtoint (i32* @__sym_apply to i64), %182 ; <i64> [#uses=1]
  %184 = icmp ult i64 %183, 4                     ; <i1> [#uses=1]
  br i1 %184, label %185, label %194

; <label>:185                                     ; preds = %179
  %186 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 1 ; <i32*> [#uses=1]
  %187 = load i32* %186                           ; <i32> [#uses=1]
  %188 = and i32 %187, 2                          ; <i32> [#uses=1]
  %189 = icmp eq i32 %188, 0                      ; <i1> [#uses=1]
  br i1 %189, label %192, label %190

; <label>:190                                     ; preds = %185
  %191 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %148, i8** %191
  br label %object_set_slot.exit73

; <label>:192                                     ; preds = %185
  %193 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_apply) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit73

; <label>:194                                     ; preds = %179
  %195 = getelementptr %struct.slot_node* %node.0.i70, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %196 = load %struct.slot_node** %195            ; <%struct.slot_node*> [#uses=2]
  br label %176

; <label>:197                                     ; preds = %176
  %198 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %199 = icmp eq i8* %198, null                   ; <i1> [#uses=1]
  br i1 %199, label %200, label %mem_alloc.exit.i72

; <label>:200                                     ; preds = %197
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i72:                               ; preds = %197
  %201 = bitcast i8* %198 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %202 = getelementptr i8* %198, i64 8            ; <i8*> [#uses=1]
  %203 = bitcast i8* %202 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %203
  %204 = getelementptr i8* %198, i64 16           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_apply, i32** %205
  %206 = getelementptr i8* %198, i64 24           ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i8**                 ; <i8**> [#uses=1]
  store i8* %148, i8** %207
  %208 = bitcast i8* %198 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %208
  %209 = getelementptr %struct.slot_node* %last_node.0.i71, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %201, %struct.slot_node** %209
  br label %object_set_slot.exit73

object_set_slot.exit73:                           ; preds = %mem_alloc.exit.i72, %192, %190, %object_set_delegate.exit.i69
  %210 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %211 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %212 = icmp eq i8* %211, null                   ; <i1> [#uses=1]
  br i1 %212, label %213, label %214

; <label>:213                                     ; preds = %object_set_slot.exit73
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:214                                     ; preds = %object_set_slot.exit73
  %215 = getelementptr i8* %211, i64 12           ; <i8*> [#uses=1]
  %216 = bitcast i8* %215 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %216
  %217 = getelementptr i8* %211, i64 8            ; <i8*> [#uses=1]
  %218 = bitcast i8* %217 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %218
  %219 = getelementptr i8* %211, i64 24           ; <i8*> [#uses=1]
  %220 = bitcast i8* %219 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_size to i8*), i8** %220
  %221 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %222 = load i32* %218                           ; <i32> [#uses=1]
  %223 = icmp eq i32 %222, 364969966              ; <i1> [#uses=1]
  br i1 %223, label %closure_object.exit30, label %.thread59

.thread59:                                        ; preds = %214
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit30:                            ; preds = %214
  %224 = getelementptr i8* %211, i64 16           ; <i8*> [#uses=1]
  %225 = bitcast i8* %224 to i8**                 ; <i8**> [#uses=1]
  store i8* %221, i8** %225
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_size to i64)), i64 4), label %226, label %235

; <label>:226                                     ; preds = %closure_object.exit30
  %227 = icmp eq i8* %210, null                   ; <i1> [#uses=1]
  br i1 %227, label %.thread.i95, label %228

; <label>:228                                     ; preds = %226
  %229 = getelementptr i8* %210, i64 8            ; <i8*> [#uses=1]
  %230 = bitcast i8* %229 to i32*                 ; <i32*> [#uses=1]
  %231 = load i32* %230                           ; <i32> [#uses=1]
  %232 = icmp eq i32 %231, 364969966              ; <i1> [#uses=1]
  br i1 %232, label %object_set_delegate.exit.i96, label %.thread.i95

.thread.i95:                                      ; preds = %228, %226
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i96:                     ; preds = %228
  %233 = getelementptr i8* %210, i64 16           ; <i8*> [#uses=1]
  %234 = bitcast i8* %233 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %234
  br label %object_set_slot.exit100

; <label>:235                                     ; preds = %closure_object.exit30
  %236 = bitcast i8* %210 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %237 = load %struct.slot_node** %236            ; <%struct.slot_node*> [#uses=2]
  %238 = bitcast i8* %210 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %239

; <label>:239                                     ; preds = %257, %235
  %node.0.i97 = phi %struct.slot_node* [ %237, %235 ], [ %259, %257 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i98 = phi %struct.slot_node* [ %238, %235 ], [ %node.0.i97, %257 ] ; <%struct.slot_node*> [#uses=1]
  %240 = phi %struct.slot_node* [ %259, %257 ], [ %237, %235 ] ; <%struct.slot_node*> [#uses=1]
  %241 = icmp eq %struct.slot_node* %240, null    ; <i1> [#uses=1]
  br i1 %241, label %260, label %242

; <label>:242                                     ; preds = %239
  %243 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 6 ; <i32**> [#uses=1]
  %244 = load i32** %243                          ; <i32*> [#uses=1]
  %245 = ptrtoint i32* %244 to i64                ; <i64> [#uses=1]
  %246 = sub i64 ptrtoint (i32* @__sym_size to i64), %245 ; <i64> [#uses=1]
  %247 = icmp ult i64 %246, 4                     ; <i1> [#uses=1]
  br i1 %247, label %248, label %257

; <label>:248                                     ; preds = %242
  %249 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 1 ; <i32*> [#uses=1]
  %250 = load i32* %249                           ; <i32> [#uses=1]
  %251 = and i32 %250, 2                          ; <i32> [#uses=1]
  %252 = icmp eq i32 %251, 0                      ; <i1> [#uses=1]
  br i1 %252, label %255, label %253

; <label>:253                                     ; preds = %248
  %254 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %211, i8** %254
  br label %object_set_slot.exit100

; <label>:255                                     ; preds = %248
  %256 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_size) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit100

; <label>:257                                     ; preds = %242
  %258 = getelementptr %struct.slot_node* %node.0.i97, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %259 = load %struct.slot_node** %258            ; <%struct.slot_node*> [#uses=2]
  br label %239

; <label>:260                                     ; preds = %239
  %261 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %262 = icmp eq i8* %261, null                   ; <i1> [#uses=1]
  br i1 %262, label %263, label %mem_alloc.exit.i99

; <label>:263                                     ; preds = %260
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i99:                               ; preds = %260
  %264 = bitcast i8* %261 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %265 = getelementptr i8* %261, i64 8            ; <i8*> [#uses=1]
  %266 = bitcast i8* %265 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %266
  %267 = getelementptr i8* %261, i64 16           ; <i8*> [#uses=1]
  %268 = bitcast i8* %267 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_size, i32** %268
  %269 = getelementptr i8* %261, i64 24           ; <i8*> [#uses=1]
  %270 = bitcast i8* %269 to i8**                 ; <i8**> [#uses=1]
  store i8* %211, i8** %270
  %271 = bitcast i8* %261 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %271
  %272 = getelementptr %struct.slot_node* %last_node.0.i98, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %264, %struct.slot_node** %272
  br label %object_set_slot.exit100

object_set_slot.exit100:                          ; preds = %mem_alloc.exit.i99, %255, %253, %object_set_delegate.exit.i96
  %273 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %274 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %275 = icmp eq i8* %274, null                   ; <i1> [#uses=1]
  br i1 %275, label %276, label %277

; <label>:276                                     ; preds = %object_set_slot.exit100
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:277                                     ; preds = %object_set_slot.exit100
  %278 = getelementptr i8* %274, i64 12           ; <i8*> [#uses=1]
  %279 = bitcast i8* %278 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %279
  %280 = getelementptr i8* %274, i64 8            ; <i8*> [#uses=1]
  %281 = bitcast i8* %280 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %281
  %282 = getelementptr i8* %274, i64 24           ; <i8*> [#uses=1]
  %283 = bitcast i8* %282 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_class to i8*), i8** %283
  %284 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %285 = load i32* %281                           ; <i32> [#uses=1]
  %286 = icmp eq i32 %285, 364969966              ; <i1> [#uses=1]
  br i1 %286, label %closure_object.exit40, label %.thread60

.thread60:                                        ; preds = %277
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit40:                            ; preds = %277
  %287 = getelementptr i8* %274, i64 16           ; <i8*> [#uses=1]
  %288 = bitcast i8* %287 to i8**                 ; <i8**> [#uses=1]
  store i8* %284, i8** %288
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %289, label %298

; <label>:289                                     ; preds = %closure_object.exit40
  %290 = icmp eq i8* %273, null                   ; <i1> [#uses=1]
  br i1 %290, label %.thread.i89, label %291

; <label>:291                                     ; preds = %289
  %292 = getelementptr i8* %273, i64 8            ; <i8*> [#uses=1]
  %293 = bitcast i8* %292 to i32*                 ; <i32*> [#uses=1]
  %294 = load i32* %293                           ; <i32> [#uses=1]
  %295 = icmp eq i32 %294, 364969966              ; <i1> [#uses=1]
  br i1 %295, label %object_set_delegate.exit.i90, label %.thread.i89

.thread.i89:                                      ; preds = %291, %289
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i90:                     ; preds = %291
  %296 = getelementptr i8* %273, i64 16           ; <i8*> [#uses=1]
  %297 = bitcast i8* %296 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %297
  br label %object_set_slot.exit94

; <label>:298                                     ; preds = %closure_object.exit40
  %299 = bitcast i8* %273 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %300 = load %struct.slot_node** %299            ; <%struct.slot_node*> [#uses=2]
  %301 = bitcast i8* %273 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %302

; <label>:302                                     ; preds = %320, %298
  %node.0.i91 = phi %struct.slot_node* [ %300, %298 ], [ %322, %320 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i92 = phi %struct.slot_node* [ %301, %298 ], [ %node.0.i91, %320 ] ; <%struct.slot_node*> [#uses=1]
  %303 = phi %struct.slot_node* [ %322, %320 ], [ %300, %298 ] ; <%struct.slot_node*> [#uses=1]
  %304 = icmp eq %struct.slot_node* %303, null    ; <i1> [#uses=1]
  br i1 %304, label %323, label %305

; <label>:305                                     ; preds = %302
  %306 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 6 ; <i32**> [#uses=1]
  %307 = load i32** %306                          ; <i32*> [#uses=1]
  %308 = ptrtoint i32* %307 to i64                ; <i64> [#uses=1]
  %309 = sub i64 ptrtoint (i32* @__sym_class to i64), %308 ; <i64> [#uses=1]
  %310 = icmp ult i64 %309, 4                     ; <i1> [#uses=1]
  br i1 %310, label %311, label %320

; <label>:311                                     ; preds = %305
  %312 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 1 ; <i32*> [#uses=1]
  %313 = load i32* %312                           ; <i32> [#uses=1]
  %314 = and i32 %313, 2                          ; <i32> [#uses=1]
  %315 = icmp eq i32 %314, 0                      ; <i1> [#uses=1]
  br i1 %315, label %318, label %316

; <label>:316                                     ; preds = %311
  %317 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %274, i8** %317
  br label %object_set_slot.exit94

; <label>:318                                     ; preds = %311
  %319 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit94

; <label>:320                                     ; preds = %305
  %321 = getelementptr %struct.slot_node* %node.0.i91, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %322 = load %struct.slot_node** %321            ; <%struct.slot_node*> [#uses=2]
  br label %302

; <label>:323                                     ; preds = %302
  %324 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %325 = icmp eq i8* %324, null                   ; <i1> [#uses=1]
  br i1 %325, label %326, label %mem_alloc.exit.i93

; <label>:326                                     ; preds = %323
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i93:                               ; preds = %323
  %327 = bitcast i8* %324 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %328 = getelementptr i8* %324, i64 8            ; <i8*> [#uses=1]
  %329 = bitcast i8* %328 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %329
  %330 = getelementptr i8* %324, i64 16           ; <i8*> [#uses=1]
  %331 = bitcast i8* %330 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %331
  %332 = getelementptr i8* %324, i64 24           ; <i8*> [#uses=1]
  %333 = bitcast i8* %332 to i8**                 ; <i8**> [#uses=1]
  store i8* %274, i8** %333
  %334 = bitcast i8* %324 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %334
  %335 = getelementptr %struct.slot_node* %last_node.0.i92, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %327, %struct.slot_node** %335
  br label %object_set_slot.exit94

object_set_slot.exit94:                           ; preds = %mem_alloc.exit.i93, %318, %316, %object_set_delegate.exit.i90
  %336 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %337 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %338 = icmp eq i8* %337, null                   ; <i1> [#uses=1]
  br i1 %338, label %339, label %340

; <label>:339                                     ; preds = %object_set_slot.exit94
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:340                                     ; preds = %object_set_slot.exit94
  %341 = getelementptr i8* %337, i64 12           ; <i8*> [#uses=1]
  %342 = bitcast i8* %341 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %342
  %343 = getelementptr i8* %337, i64 8            ; <i8*> [#uses=1]
  %344 = bitcast i8* %343 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %344
  %345 = getelementptr i8* %337, i64 24           ; <i8*> [#uses=1]
  %346 = bitcast i8* %345 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_clone to i8*), i8** %346
  %347 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %348 = load i32* %344                           ; <i32> [#uses=1]
  %349 = icmp eq i32 %348, 364969966              ; <i1> [#uses=1]
  br i1 %349, label %closure_object.exit50, label %.thread61

.thread61:                                        ; preds = %340
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit50:                            ; preds = %340
  %350 = getelementptr i8* %337, i64 16           ; <i8*> [#uses=1]
  %351 = bitcast i8* %350 to i8**                 ; <i8**> [#uses=1]
  store i8* %347, i8** %351
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %352, label %361

; <label>:352                                     ; preds = %closure_object.exit50
  %353 = icmp eq i8* %336, null                   ; <i1> [#uses=1]
  br i1 %353, label %.thread.i77, label %354

; <label>:354                                     ; preds = %352
  %355 = getelementptr i8* %336, i64 8            ; <i8*> [#uses=1]
  %356 = bitcast i8* %355 to i32*                 ; <i32*> [#uses=1]
  %357 = load i32* %356                           ; <i32> [#uses=1]
  %358 = icmp eq i32 %357, 364969966              ; <i1> [#uses=1]
  br i1 %358, label %object_set_delegate.exit.i78, label %.thread.i77

.thread.i77:                                      ; preds = %354, %352
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i78:                     ; preds = %354
  %359 = getelementptr i8* %336, i64 16           ; <i8*> [#uses=1]
  %360 = bitcast i8* %359 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %360
  br label %object_set_slot.exit82

; <label>:361                                     ; preds = %closure_object.exit50
  %362 = bitcast i8* %336 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %363 = load %struct.slot_node** %362            ; <%struct.slot_node*> [#uses=2]
  %364 = bitcast i8* %336 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %365

; <label>:365                                     ; preds = %383, %361
  %node.0.i79 = phi %struct.slot_node* [ %363, %361 ], [ %385, %383 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i80 = phi %struct.slot_node* [ %364, %361 ], [ %node.0.i79, %383 ] ; <%struct.slot_node*> [#uses=1]
  %366 = phi %struct.slot_node* [ %385, %383 ], [ %363, %361 ] ; <%struct.slot_node*> [#uses=1]
  %367 = icmp eq %struct.slot_node* %366, null    ; <i1> [#uses=1]
  br i1 %367, label %386, label %368

; <label>:368                                     ; preds = %365
  %369 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 6 ; <i32**> [#uses=1]
  %370 = load i32** %369                          ; <i32*> [#uses=1]
  %371 = ptrtoint i32* %370 to i64                ; <i64> [#uses=1]
  %372 = sub i64 ptrtoint (i32* @__sym_clone to i64), %371 ; <i64> [#uses=1]
  %373 = icmp ult i64 %372, 4                     ; <i1> [#uses=1]
  br i1 %373, label %374, label %383

; <label>:374                                     ; preds = %368
  %375 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 1 ; <i32*> [#uses=1]
  %376 = load i32* %375                           ; <i32> [#uses=1]
  %377 = and i32 %376, 2                          ; <i32> [#uses=1]
  %378 = icmp eq i32 %377, 0                      ; <i1> [#uses=1]
  br i1 %378, label %381, label %379

; <label>:379                                     ; preds = %374
  %380 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %337, i8** %380
  br label %object_set_slot.exit82

; <label>:381                                     ; preds = %374
  %382 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit82

; <label>:383                                     ; preds = %368
  %384 = getelementptr %struct.slot_node* %node.0.i79, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %385 = load %struct.slot_node** %384            ; <%struct.slot_node*> [#uses=2]
  br label %365

; <label>:386                                     ; preds = %365
  %387 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %388 = icmp eq i8* %387, null                   ; <i1> [#uses=1]
  br i1 %388, label %389, label %mem_alloc.exit.i81

; <label>:389                                     ; preds = %386
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i81:                               ; preds = %386
  %390 = bitcast i8* %387 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %391 = getelementptr i8* %387, i64 8            ; <i8*> [#uses=1]
  %392 = bitcast i8* %391 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %392
  %393 = getelementptr i8* %387, i64 16           ; <i8*> [#uses=1]
  %394 = bitcast i8* %393 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %394
  %395 = getelementptr i8* %387, i64 24           ; <i8*> [#uses=1]
  %396 = bitcast i8* %395 to i8**                 ; <i8**> [#uses=1]
  store i8* %337, i8** %396
  %397 = bitcast i8* %387 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %397
  %398 = getelementptr %struct.slot_node* %last_node.0.i80, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %390, %struct.slot_node** %398
  br label %object_set_slot.exit82

object_set_slot.exit82:                           ; preds = %mem_alloc.exit.i81, %381, %379, %object_set_delegate.exit.i78
  %399 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %400 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %401 = icmp eq i8* %400, null                   ; <i1> [#uses=1]
  br i1 %401, label %402, label %403

; <label>:402                                     ; preds = %object_set_slot.exit82
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:403                                     ; preds = %object_set_slot.exit82
  %404 = getelementptr i8* %400, i64 12           ; <i8*> [#uses=1]
  %405 = bitcast i8* %404 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %405
  %406 = getelementptr i8* %400, i64 8            ; <i8*> [#uses=1]
  %407 = bitcast i8* %406 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %407
  %408 = getelementptr i8* %400, i64 24           ; <i8*> [#uses=1]
  %409 = bitcast i8* %408 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_append to i8*), i8** %409
  %410 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %411 = load i32* %407                           ; <i32> [#uses=1]
  %412 = icmp eq i32 %411, 364969966              ; <i1> [#uses=1]
  br i1 %412, label %closure_object.exit55, label %.thread62

.thread62:                                        ; preds = %403
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit55:                            ; preds = %403
  %413 = getelementptr i8* %400, i64 16           ; <i8*> [#uses=1]
  %414 = bitcast i8* %413 to i8**                 ; <i8**> [#uses=1]
  store i8* %410, i8** %414
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_append to i64)), i64 4), label %415, label %424

; <label>:415                                     ; preds = %closure_object.exit55
  %416 = icmp eq i8* %399, null                   ; <i1> [#uses=1]
  br i1 %416, label %.thread.i62, label %417

; <label>:417                                     ; preds = %415
  %418 = getelementptr i8* %399, i64 8            ; <i8*> [#uses=1]
  %419 = bitcast i8* %418 to i32*                 ; <i32*> [#uses=1]
  %420 = load i32* %419                           ; <i32> [#uses=1]
  %421 = icmp eq i32 %420, 364969966              ; <i1> [#uses=1]
  br i1 %421, label %object_set_delegate.exit.i63, label %.thread.i62

.thread.i62:                                      ; preds = %417, %415
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i63:                     ; preds = %417
  %422 = getelementptr i8* %399, i64 16           ; <i8*> [#uses=1]
  %423 = bitcast i8* %422 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %423
  br label %object_set_slot.exit67

; <label>:424                                     ; preds = %closure_object.exit55
  %425 = bitcast i8* %399 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %426 = load %struct.slot_node** %425            ; <%struct.slot_node*> [#uses=2]
  %427 = bitcast i8* %399 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %428

; <label>:428                                     ; preds = %446, %424
  %node.0.i64 = phi %struct.slot_node* [ %426, %424 ], [ %448, %446 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i65 = phi %struct.slot_node* [ %427, %424 ], [ %node.0.i64, %446 ] ; <%struct.slot_node*> [#uses=1]
  %429 = phi %struct.slot_node* [ %448, %446 ], [ %426, %424 ] ; <%struct.slot_node*> [#uses=1]
  %430 = icmp eq %struct.slot_node* %429, null    ; <i1> [#uses=1]
  br i1 %430, label %449, label %431

; <label>:431                                     ; preds = %428
  %432 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 6 ; <i32**> [#uses=1]
  %433 = load i32** %432                          ; <i32*> [#uses=1]
  %434 = ptrtoint i32* %433 to i64                ; <i64> [#uses=1]
  %435 = sub i64 ptrtoint (i32* @__sym_append to i64), %434 ; <i64> [#uses=1]
  %436 = icmp ult i64 %435, 4                     ; <i1> [#uses=1]
  br i1 %436, label %437, label %446

; <label>:437                                     ; preds = %431
  %438 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 1 ; <i32*> [#uses=1]
  %439 = load i32* %438                           ; <i32> [#uses=1]
  %440 = and i32 %439, 2                          ; <i32> [#uses=1]
  %441 = icmp eq i32 %440, 0                      ; <i1> [#uses=1]
  br i1 %441, label %444, label %442

; <label>:442                                     ; preds = %437
  %443 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %400, i8** %443
  br label %object_set_slot.exit67

; <label>:444                                     ; preds = %437
  %445 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_append) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit67

; <label>:446                                     ; preds = %431
  %447 = getelementptr %struct.slot_node* %node.0.i64, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %448 = load %struct.slot_node** %447            ; <%struct.slot_node*> [#uses=2]
  br label %428

; <label>:449                                     ; preds = %428
  %450 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %451 = icmp eq i8* %450, null                   ; <i1> [#uses=1]
  br i1 %451, label %452, label %mem_alloc.exit.i66

; <label>:452                                     ; preds = %449
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i66:                               ; preds = %449
  %453 = bitcast i8* %450 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %454 = getelementptr i8* %450, i64 8            ; <i8*> [#uses=1]
  %455 = bitcast i8* %454 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %455
  %456 = getelementptr i8* %450, i64 16           ; <i8*> [#uses=1]
  %457 = bitcast i8* %456 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_append, i32** %457
  %458 = getelementptr i8* %450, i64 24           ; <i8*> [#uses=1]
  %459 = bitcast i8* %458 to i8**                 ; <i8**> [#uses=1]
  store i8* %400, i8** %459
  %460 = bitcast i8* %450 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %460
  %461 = getelementptr %struct.slot_node* %last_node.0.i65, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %453, %struct.slot_node** %461
  br label %object_set_slot.exit67

object_set_slot.exit67:                           ; preds = %mem_alloc.exit.i66, %444, %442, %object_set_delegate.exit.i63
  %462 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %463 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %464 = icmp eq i8* %463, null                   ; <i1> [#uses=1]
  br i1 %464, label %465, label %466

; <label>:465                                     ; preds = %object_set_slot.exit67
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:466                                     ; preds = %object_set_slot.exit67
  %467 = getelementptr i8* %463, i64 12           ; <i8*> [#uses=1]
  %468 = bitcast i8* %467 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %468
  %469 = getelementptr i8* %463, i64 8            ; <i8*> [#uses=1]
  %470 = bitcast i8* %469 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %470
  %471 = getelementptr i8* %463, i64 24           ; <i8*> [#uses=1]
  %472 = bitcast i8* %471 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_each to i8*), i8** %472
  %473 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %474 = load i32* %470                           ; <i32> [#uses=1]
  %475 = icmp eq i32 %474, 364969966              ; <i1> [#uses=1]
  br i1 %475, label %closure_object.exit45, label %.thread63

.thread63:                                        ; preds = %466
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit45:                            ; preds = %466
  %476 = getelementptr i8* %463, i64 16           ; <i8*> [#uses=1]
  %477 = bitcast i8* %476 to i8**                 ; <i8**> [#uses=1]
  store i8* %473, i8** %477
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_each to i64)), i64 4), label %478, label %487

; <label>:478                                     ; preds = %closure_object.exit45
  %479 = icmp eq i8* %462, null                   ; <i1> [#uses=1]
  br i1 %479, label %.thread.i50, label %480

; <label>:480                                     ; preds = %478
  %481 = getelementptr i8* %462, i64 8            ; <i8*> [#uses=1]
  %482 = bitcast i8* %481 to i32*                 ; <i32*> [#uses=1]
  %483 = load i32* %482                           ; <i32> [#uses=1]
  %484 = icmp eq i32 %483, 364969966              ; <i1> [#uses=1]
  br i1 %484, label %object_set_delegate.exit.i51, label %.thread.i50

.thread.i50:                                      ; preds = %480, %478
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i51:                     ; preds = %480
  %485 = getelementptr i8* %462, i64 16           ; <i8*> [#uses=1]
  %486 = bitcast i8* %485 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %486
  br label %object_set_slot.exit55

; <label>:487                                     ; preds = %closure_object.exit45
  %488 = bitcast i8* %462 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %489 = load %struct.slot_node** %488            ; <%struct.slot_node*> [#uses=2]
  %490 = bitcast i8* %462 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %491

; <label>:491                                     ; preds = %509, %487
  %node.0.i52 = phi %struct.slot_node* [ %489, %487 ], [ %511, %509 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i53 = phi %struct.slot_node* [ %490, %487 ], [ %node.0.i52, %509 ] ; <%struct.slot_node*> [#uses=1]
  %492 = phi %struct.slot_node* [ %511, %509 ], [ %489, %487 ] ; <%struct.slot_node*> [#uses=1]
  %493 = icmp eq %struct.slot_node* %492, null    ; <i1> [#uses=1]
  br i1 %493, label %512, label %494

; <label>:494                                     ; preds = %491
  %495 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 6 ; <i32**> [#uses=1]
  %496 = load i32** %495                          ; <i32*> [#uses=1]
  %497 = ptrtoint i32* %496 to i64                ; <i64> [#uses=1]
  %498 = sub i64 ptrtoint (i32* @__sym_each to i64), %497 ; <i64> [#uses=1]
  %499 = icmp ult i64 %498, 4                     ; <i1> [#uses=1]
  br i1 %499, label %500, label %509

; <label>:500                                     ; preds = %494
  %501 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 1 ; <i32*> [#uses=1]
  %502 = load i32* %501                           ; <i32> [#uses=1]
  %503 = and i32 %502, 2                          ; <i32> [#uses=1]
  %504 = icmp eq i32 %503, 0                      ; <i1> [#uses=1]
  br i1 %504, label %507, label %505

; <label>:505                                     ; preds = %500
  %506 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %463, i8** %506
  br label %object_set_slot.exit55

; <label>:507                                     ; preds = %500
  %508 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_each) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit55

; <label>:509                                     ; preds = %494
  %510 = getelementptr %struct.slot_node* %node.0.i52, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %511 = load %struct.slot_node** %510            ; <%struct.slot_node*> [#uses=2]
  br label %491

; <label>:512                                     ; preds = %491
  %513 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %514 = icmp eq i8* %513, null                   ; <i1> [#uses=1]
  br i1 %514, label %515, label %mem_alloc.exit.i54

; <label>:515                                     ; preds = %512
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i54:                               ; preds = %512
  %516 = bitcast i8* %513 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %517 = getelementptr i8* %513, i64 8            ; <i8*> [#uses=1]
  %518 = bitcast i8* %517 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %518
  %519 = getelementptr i8* %513, i64 16           ; <i8*> [#uses=1]
  %520 = bitcast i8* %519 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_each, i32** %520
  %521 = getelementptr i8* %513, i64 24           ; <i8*> [#uses=1]
  %522 = bitcast i8* %521 to i8**                 ; <i8**> [#uses=1]
  store i8* %463, i8** %522
  %523 = bitcast i8* %513 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %523
  %524 = getelementptr %struct.slot_node* %last_node.0.i53, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %516, %struct.slot_node** %524
  br label %object_set_slot.exit55

object_set_slot.exit55:                           ; preds = %mem_alloc.exit.i54, %507, %505, %object_set_delegate.exit.i51
  %525 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %526 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %527 = icmp eq i8* %526, null                   ; <i1> [#uses=1]
  br i1 %527, label %528, label %529

; <label>:528                                     ; preds = %object_set_slot.exit55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:529                                     ; preds = %object_set_slot.exit55
  %530 = getelementptr i8* %526, i64 12           ; <i8*> [#uses=1]
  %531 = bitcast i8* %530 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %531
  %532 = getelementptr i8* %526, i64 8            ; <i8*> [#uses=1]
  %533 = bitcast i8* %532 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %533
  %534 = getelementptr i8* %526, i64 24           ; <i8*> [#uses=1]
  %535 = bitcast i8* %534 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_each_with_index to i8*), i8** %535
  %536 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %537 = load i32* %533                           ; <i32> [#uses=1]
  %538 = icmp eq i32 %537, 364969966              ; <i1> [#uses=1]
  br i1 %538, label %closure_object.exit35, label %.thread64

.thread64:                                        ; preds = %529
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit35:                            ; preds = %529
  %539 = getelementptr i8* %526, i64 16           ; <i8*> [#uses=1]
  %540 = bitcast i8* %539 to i8**                 ; <i8**> [#uses=1]
  store i8* %536, i8** %540
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_each_with_index to i64)), i64 4), label %541, label %550

; <label>:541                                     ; preds = %closure_object.exit35
  %542 = icmp eq i8* %525, null                   ; <i1> [#uses=1]
  br i1 %542, label %.thread.i35, label %543

; <label>:543                                     ; preds = %541
  %544 = getelementptr i8* %525, i64 8            ; <i8*> [#uses=1]
  %545 = bitcast i8* %544 to i32*                 ; <i32*> [#uses=1]
  %546 = load i32* %545                           ; <i32> [#uses=1]
  %547 = icmp eq i32 %546, 364969966              ; <i1> [#uses=1]
  br i1 %547, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %543, %541
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %543
  %548 = getelementptr i8* %525, i64 16           ; <i8*> [#uses=1]
  %549 = bitcast i8* %548 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %549
  br label %object_set_slot.exit40

; <label>:550                                     ; preds = %closure_object.exit35
  %551 = bitcast i8* %525 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %552 = load %struct.slot_node** %551            ; <%struct.slot_node*> [#uses=2]
  %553 = bitcast i8* %525 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %554

; <label>:554                                     ; preds = %572, %550
  %node.0.i37 = phi %struct.slot_node* [ %552, %550 ], [ %574, %572 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %553, %550 ], [ %node.0.i37, %572 ] ; <%struct.slot_node*> [#uses=1]
  %555 = phi %struct.slot_node* [ %574, %572 ], [ %552, %550 ] ; <%struct.slot_node*> [#uses=1]
  %556 = icmp eq %struct.slot_node* %555, null    ; <i1> [#uses=1]
  br i1 %556, label %575, label %557

; <label>:557                                     ; preds = %554
  %558 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %559 = load i32** %558                          ; <i32*> [#uses=1]
  %560 = ptrtoint i32* %559 to i64                ; <i64> [#uses=1]
  %561 = sub i64 ptrtoint (i32* @__sym_each_with_index to i64), %560 ; <i64> [#uses=1]
  %562 = icmp ult i64 %561, 4                     ; <i1> [#uses=1]
  br i1 %562, label %563, label %572

; <label>:563                                     ; preds = %557
  %564 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %565 = load i32* %564                           ; <i32> [#uses=1]
  %566 = and i32 %565, 2                          ; <i32> [#uses=1]
  %567 = icmp eq i32 %566, 0                      ; <i1> [#uses=1]
  br i1 %567, label %570, label %568

; <label>:568                                     ; preds = %563
  %569 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %526, i8** %569
  br label %object_set_slot.exit40

; <label>:570                                     ; preds = %563
  %571 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_each_with_index) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:572                                     ; preds = %557
  %573 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %574 = load %struct.slot_node** %573            ; <%struct.slot_node*> [#uses=2]
  br label %554

; <label>:575                                     ; preds = %554
  %576 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %577 = icmp eq i8* %576, null                   ; <i1> [#uses=1]
  br i1 %577, label %578, label %mem_alloc.exit.i39

; <label>:578                                     ; preds = %575
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %575
  %579 = bitcast i8* %576 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %580 = getelementptr i8* %576, i64 8            ; <i8*> [#uses=1]
  %581 = bitcast i8* %580 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %581
  %582 = getelementptr i8* %576, i64 16           ; <i8*> [#uses=1]
  %583 = bitcast i8* %582 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_each_with_index, i32** %583
  %584 = getelementptr i8* %576, i64 24           ; <i8*> [#uses=1]
  %585 = bitcast i8* %584 to i8**                 ; <i8**> [#uses=1]
  store i8* %526, i8** %585
  %586 = bitcast i8* %576 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %586
  %587 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %579, %struct.slot_node** %587
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %570, %568, %object_set_delegate.exit.i36
  %588 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %589 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %590 = icmp eq i8* %589, null                   ; <i1> [#uses=1]
  br i1 %590, label %591, label %592

; <label>:591                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:592                                     ; preds = %object_set_slot.exit40
  %593 = getelementptr i8* %589, i64 12           ; <i8*> [#uses=1]
  %594 = bitcast i8* %593 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %594
  %595 = getelementptr i8* %589, i64 8            ; <i8*> [#uses=1]
  %596 = bitcast i8* %595 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %596
  %597 = getelementptr i8* %589, i64 24           ; <i8*> [#uses=1]
  %598 = bitcast i8* %597 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_inject to i8*), i8** %598
  %599 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %600 = load i32* %596                           ; <i32> [#uses=1]
  %601 = icmp eq i32 %600, 364969966              ; <i1> [#uses=1]
  br i1 %601, label %closure_object.exit25, label %.thread65

.thread65:                                        ; preds = %592
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit25:                            ; preds = %592
  %602 = getelementptr i8* %589, i64 16           ; <i8*> [#uses=1]
  %603 = bitcast i8* %602 to i8**                 ; <i8**> [#uses=1]
  store i8* %599, i8** %603
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_inject to i64)), i64 4), label %604, label %613

; <label>:604                                     ; preds = %closure_object.exit25
  %605 = icmp eq i8* %588, null                   ; <i1> [#uses=1]
  br i1 %605, label %.thread.i23, label %606

; <label>:606                                     ; preds = %604
  %607 = getelementptr i8* %588, i64 8            ; <i8*> [#uses=1]
  %608 = bitcast i8* %607 to i32*                 ; <i32*> [#uses=1]
  %609 = load i32* %608                           ; <i32> [#uses=1]
  %610 = icmp eq i32 %609, 364969966              ; <i1> [#uses=1]
  br i1 %610, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %606, %604
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %606
  %611 = getelementptr i8* %588, i64 16           ; <i8*> [#uses=1]
  %612 = bitcast i8* %611 to i8**                 ; <i8**> [#uses=1]
  store i8* %589, i8** %612
  br label %object_set_slot.exit28

; <label>:613                                     ; preds = %closure_object.exit25
  %614 = bitcast i8* %588 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %615 = load %struct.slot_node** %614            ; <%struct.slot_node*> [#uses=2]
  %616 = bitcast i8* %588 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %617

; <label>:617                                     ; preds = %635, %613
  %node.0.i25 = phi %struct.slot_node* [ %615, %613 ], [ %637, %635 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %616, %613 ], [ %node.0.i25, %635 ] ; <%struct.slot_node*> [#uses=1]
  %618 = phi %struct.slot_node* [ %637, %635 ], [ %615, %613 ] ; <%struct.slot_node*> [#uses=1]
  %619 = icmp eq %struct.slot_node* %618, null    ; <i1> [#uses=1]
  br i1 %619, label %638, label %620

; <label>:620                                     ; preds = %617
  %621 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %622 = load i32** %621                          ; <i32*> [#uses=1]
  %623 = ptrtoint i32* %622 to i64                ; <i64> [#uses=1]
  %624 = sub i64 ptrtoint (i32* @__sym_inject to i64), %623 ; <i64> [#uses=1]
  %625 = icmp ult i64 %624, 4                     ; <i1> [#uses=1]
  br i1 %625, label %626, label %635

; <label>:626                                     ; preds = %620
  %627 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %628 = load i32* %627                           ; <i32> [#uses=1]
  %629 = and i32 %628, 2                          ; <i32> [#uses=1]
  %630 = icmp eq i32 %629, 0                      ; <i1> [#uses=1]
  br i1 %630, label %633, label %631

; <label>:631                                     ; preds = %626
  %632 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %589, i8** %632
  br label %object_set_slot.exit28

; <label>:633                                     ; preds = %626
  %634 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_inject) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:635                                     ; preds = %620
  %636 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %637 = load %struct.slot_node** %636            ; <%struct.slot_node*> [#uses=2]
  br label %617

; <label>:638                                     ; preds = %617
  %639 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %640 = icmp eq i8* %639, null                   ; <i1> [#uses=1]
  br i1 %640, label %641, label %mem_alloc.exit.i27

; <label>:641                                     ; preds = %638
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %638
  %642 = bitcast i8* %639 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %643 = getelementptr i8* %639, i64 8            ; <i8*> [#uses=1]
  %644 = bitcast i8* %643 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %644
  %645 = getelementptr i8* %639, i64 16           ; <i8*> [#uses=1]
  %646 = bitcast i8* %645 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_inject, i32** %646
  %647 = getelementptr i8* %639, i64 24           ; <i8*> [#uses=1]
  %648 = bitcast i8* %647 to i8**                 ; <i8**> [#uses=1]
  store i8* %589, i8** %648
  %649 = bitcast i8* %639 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %649
  %650 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %642, %struct.slot_node** %650
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %633, %631, %object_set_delegate.exit.i24
  %651 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %652 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %653 = icmp eq i8* %652, null                   ; <i1> [#uses=1]
  br i1 %653, label %654, label %655

; <label>:654                                     ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:655                                     ; preds = %object_set_slot.exit28
  %656 = getelementptr i8* %652, i64 12           ; <i8*> [#uses=1]
  %657 = bitcast i8* %656 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %657
  %658 = getelementptr i8* %652, i64 8            ; <i8*> [#uses=1]
  %659 = bitcast i8* %658 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %659
  %660 = getelementptr i8* %652, i64 24           ; <i8*> [#uses=1]
  %661 = bitcast i8* %660 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_join to i8*), i8** %661
  %662 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %663 = load i32* %659                           ; <i32> [#uses=1]
  %664 = icmp eq i32 %663, 364969966              ; <i1> [#uses=1]
  br i1 %664, label %closure_object.exit15, label %.thread66

.thread66:                                        ; preds = %655
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %655
  %665 = getelementptr i8* %652, i64 16           ; <i8*> [#uses=1]
  %666 = bitcast i8* %665 to i8**                 ; <i8**> [#uses=1]
  store i8* %662, i8** %666
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_join to i64)), i64 4), label %667, label %676

; <label>:667                                     ; preds = %closure_object.exit15
  %668 = icmp eq i8* %651, null                   ; <i1> [#uses=1]
  br i1 %668, label %.thread.i8, label %669

; <label>:669                                     ; preds = %667
  %670 = getelementptr i8* %651, i64 8            ; <i8*> [#uses=1]
  %671 = bitcast i8* %670 to i32*                 ; <i32*> [#uses=1]
  %672 = load i32* %671                           ; <i32> [#uses=1]
  %673 = icmp eq i32 %672, 364969966              ; <i1> [#uses=1]
  br i1 %673, label %object_set_delegate.exit.i9, label %.thread.i8

.thread.i8:                                       ; preds = %669, %667
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i9:                      ; preds = %669
  %674 = getelementptr i8* %651, i64 16           ; <i8*> [#uses=1]
  %675 = bitcast i8* %674 to i8**                 ; <i8**> [#uses=1]
  store i8* %652, i8** %675
  br label %object_set_slot.exit13

; <label>:676                                     ; preds = %closure_object.exit15
  %677 = bitcast i8* %651 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %678 = load %struct.slot_node** %677            ; <%struct.slot_node*> [#uses=2]
  %679 = bitcast i8* %651 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %680

; <label>:680                                     ; preds = %698, %676
  %node.0.i10 = phi %struct.slot_node* [ %678, %676 ], [ %700, %698 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i11 = phi %struct.slot_node* [ %679, %676 ], [ %node.0.i10, %698 ] ; <%struct.slot_node*> [#uses=1]
  %681 = phi %struct.slot_node* [ %700, %698 ], [ %678, %676 ] ; <%struct.slot_node*> [#uses=1]
  %682 = icmp eq %struct.slot_node* %681, null    ; <i1> [#uses=1]
  br i1 %682, label %701, label %683

; <label>:683                                     ; preds = %680
  %684 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 6 ; <i32**> [#uses=1]
  %685 = load i32** %684                          ; <i32*> [#uses=1]
  %686 = ptrtoint i32* %685 to i64                ; <i64> [#uses=1]
  %687 = sub i64 ptrtoint (i32* @__sym_join to i64), %686 ; <i64> [#uses=1]
  %688 = icmp ult i64 %687, 4                     ; <i1> [#uses=1]
  br i1 %688, label %689, label %698

; <label>:689                                     ; preds = %683
  %690 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 1 ; <i32*> [#uses=1]
  %691 = load i32* %690                           ; <i32> [#uses=1]
  %692 = and i32 %691, 2                          ; <i32> [#uses=1]
  %693 = icmp eq i32 %692, 0                      ; <i1> [#uses=1]
  br i1 %693, label %696, label %694

; <label>:694                                     ; preds = %689
  %695 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %652, i8** %695
  br label %object_set_slot.exit13

; <label>:696                                     ; preds = %689
  %697 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_join) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit13

; <label>:698                                     ; preds = %683
  %699 = getelementptr %struct.slot_node* %node.0.i10, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %700 = load %struct.slot_node** %699            ; <%struct.slot_node*> [#uses=2]
  br label %680

; <label>:701                                     ; preds = %680
  %702 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %703 = icmp eq i8* %702, null                   ; <i1> [#uses=1]
  br i1 %703, label %704, label %mem_alloc.exit.i12

; <label>:704                                     ; preds = %701
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i12:                               ; preds = %701
  %705 = bitcast i8* %702 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %706 = getelementptr i8* %702, i64 8            ; <i8*> [#uses=1]
  %707 = bitcast i8* %706 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %707
  %708 = getelementptr i8* %702, i64 16           ; <i8*> [#uses=1]
  %709 = bitcast i8* %708 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_join, i32** %709
  %710 = getelementptr i8* %702, i64 24           ; <i8*> [#uses=1]
  %711 = bitcast i8* %710 to i8**                 ; <i8**> [#uses=1]
  store i8* %652, i8** %711
  %712 = bitcast i8* %702 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %712
  %713 = getelementptr %struct.slot_node* %last_node.0.i11, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %705, %struct.slot_node** %713
  br label %object_set_slot.exit13

object_set_slot.exit13:                           ; preds = %mem_alloc.exit.i12, %696, %694, %object_set_delegate.exit.i9
  %714 = load i8** @array_prototype.prototype     ; <i8*> [#uses=5]
  %715 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %716 = icmp eq i8* %715, null                   ; <i1> [#uses=1]
  br i1 %716, label %717, label %718

; <label>:717                                     ; preds = %object_set_slot.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:718                                     ; preds = %object_set_slot.exit13
  %719 = getelementptr i8* %715, i64 12           ; <i8*> [#uses=1]
  %720 = bitcast i8* %719 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %720
  %721 = getelementptr i8* %715, i64 8            ; <i8*> [#uses=1]
  %722 = bitcast i8* %721 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %722
  %723 = getelementptr i8* %715, i64 24           ; <i8*> [#uses=1]
  %724 = bitcast i8* %723 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @array_all_q to i8*), i8** %724
  %725 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %726 = load i32* %722                           ; <i32> [#uses=1]
  %727 = icmp eq i32 %726, 364969966              ; <i1> [#uses=1]
  br i1 %727, label %closure_object.exit5, label %.thread67

.thread67:                                        ; preds = %718
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %718
  %728 = getelementptr i8* %715, i64 16           ; <i8*> [#uses=1]
  %729 = bitcast i8* %728 to i8**                 ; <i8**> [#uses=1]
  store i8* %725, i8** %729
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_all_q to i64)), i64 4), label %730, label %739

; <label>:730                                     ; preds = %closure_object.exit5
  %731 = icmp eq i8* %714, null                   ; <i1> [#uses=1]
  br i1 %731, label %.thread.i, label %732

; <label>:732                                     ; preds = %730
  %733 = getelementptr i8* %714, i64 8            ; <i8*> [#uses=1]
  %734 = bitcast i8* %733 to i32*                 ; <i32*> [#uses=1]
  %735 = load i32* %734                           ; <i32> [#uses=1]
  %736 = icmp eq i32 %735, 364969966              ; <i1> [#uses=1]
  br i1 %736, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %732, %730
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %732
  %737 = getelementptr i8* %714, i64 16           ; <i8*> [#uses=1]
  %738 = bitcast i8* %737 to i8**                 ; <i8**> [#uses=1]
  store i8* %715, i8** %738
  br label %object_set_slot.exit

; <label>:739                                     ; preds = %closure_object.exit5
  %740 = bitcast i8* %714 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %741 = load %struct.slot_node** %740            ; <%struct.slot_node*> [#uses=2]
  %742 = bitcast i8* %714 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %743

; <label>:743                                     ; preds = %761, %739
  %node.0.i = phi %struct.slot_node* [ %741, %739 ], [ %763, %761 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %742, %739 ], [ %node.0.i, %761 ] ; <%struct.slot_node*> [#uses=1]
  %744 = phi %struct.slot_node* [ %763, %761 ], [ %741, %739 ] ; <%struct.slot_node*> [#uses=1]
  %745 = icmp eq %struct.slot_node* %744, null    ; <i1> [#uses=1]
  br i1 %745, label %764, label %746

; <label>:746                                     ; preds = %743
  %747 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %748 = load i32** %747                          ; <i32*> [#uses=1]
  %749 = ptrtoint i32* %748 to i64                ; <i64> [#uses=1]
  %750 = sub i64 ptrtoint (i32* @__sym_all_q to i64), %749 ; <i64> [#uses=1]
  %751 = icmp ult i64 %750, 4                     ; <i1> [#uses=1]
  br i1 %751, label %752, label %761

; <label>:752                                     ; preds = %746
  %753 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %754 = load i32* %753                           ; <i32> [#uses=1]
  %755 = and i32 %754, 2                          ; <i32> [#uses=1]
  %756 = icmp eq i32 %755, 0                      ; <i1> [#uses=1]
  br i1 %756, label %759, label %757

; <label>:757                                     ; preds = %752
  %758 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %715, i8** %758
  br label %object_set_slot.exit

; <label>:759                                     ; preds = %752
  %760 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_all_q) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:761                                     ; preds = %746
  %762 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %763 = load %struct.slot_node** %762            ; <%struct.slot_node*> [#uses=2]
  br label %743

; <label>:764                                     ; preds = %743
  %765 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %766 = icmp eq i8* %765, null                   ; <i1> [#uses=1]
  br i1 %766, label %767, label %mem_alloc.exit.i1

; <label>:767                                     ; preds = %764
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i1:                                ; preds = %764
  %768 = bitcast i8* %765 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %769 = getelementptr i8* %765, i64 8            ; <i8*> [#uses=1]
  %770 = bitcast i8* %769 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %770
  %771 = getelementptr i8* %765, i64 16           ; <i8*> [#uses=1]
  %772 = bitcast i8* %771 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_all_q, i32** %772
  %773 = getelementptr i8* %765, i64 24           ; <i8*> [#uses=1]
  %774 = bitcast i8* %773 to i8**                 ; <i8**> [#uses=1]
  store i8* %715, i8** %774
  %775 = bitcast i8* %765 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %775
  %776 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %768, %struct.slot_node** %776
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i1, %759, %757, %object_set_delegate.exit.i, %3
  %777 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @array_cache_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @array_prototype.prototype    ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:778                                     ; preds = %0
  ret i8* %1
}

define internal i8* @array_at(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %storemerge.i, i64 24   ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp = ptrtoint i8* %18 to i64                  ; <i64> [#uses=1]
  %19 = trunc i64 %tmp to i32                     ; <i32> [#uses=3]
  %20 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=3]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit
  %26 = icmp slt i32 %19, 0                       ; <i1> [#uses=1]
  br i1 %26, label %._crit_edge, label %27

; <label>:27                                      ; preds = %25
  %28 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=1]
  %30 = icmp slt i32 %19, %29                     ; <i1> [#uses=1]
  br i1 %30, label %31, label %._crit_edge

; <label>:31                                      ; preds = %27
  %32 = add i32 %19, 1                            ; <i32> [#uses=1]
  %33 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  %34 = sext i32 %32 to i64                       ; <i64> [#uses=1]
  %35 = getelementptr i8** %33, i64 %34           ; <i8**> [#uses=1]
  %36 = load i8** %35                             ; <i8*> [#uses=1]
  ret i8* %36

._crit_edge:                                      ; preds = %27, %25
  %37 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  ret i8* %37
}

define internal i8* @array_to_s(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %buffer = alloca [1024 x i8], align 1           ; <[1024 x i8]*> [#uses=1]
  %1 = getelementptr [1024 x i8]* %buffer, i64 0, i64 0 ; <i8*> [#uses=6]
  call void @llvm.memset.i64(i8* %1, i8 0, i64 1024, i32 1)
  %2 = call i8* @__strcat_chk(i8* %1, i8* getelementptr inbounds ([2 x i8]* @"\01LC958", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  %3 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %4 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %5 = load i32* %4                               ; <i32> [#uses=1]
  %6 = and i32 %5, 255                            ; <i32> [#uses=1]
  %7 = icmp eq i32 %6, 7                          ; <i1> [#uses=1]
  br i1 %7, label %9, label %8

; <label>:8                                       ; preds = %0
  call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:9                                       ; preds = %0
  %10 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %11 = bitcast i8* %10 to i8**                   ; <i8**> [#uses=2]
  %12 = load i8** %11                             ; <i8*> [#uses=2]
  %13 = icmp eq i8* %12, null                     ; <i1> [#uses=1]
  br i1 %13, label %14, label %array_get_sizeC.exit

; <label>:14                                      ; preds = %9
  call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %9
  %15 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  %16 = load i32* %15                             ; <i32> [#uses=2]
  %17 = add i32 %16, -1                           ; <i32> [#uses=1]
  br label %._crit_edge2

._crit_edge2:                                     ; preds = %51, %45, %array_get_sizeC.exit
  %18 = phi i32 [ 0, %array_get_sizeC.exit ], [ %tmp, %45 ], [ %tmp, %51 ] ; <i32> [#uses=5]
  %tmp = add i32 %18, 1                           ; <i32> [#uses=3]
  %19 = icmp ult i32 %18, %16                     ; <i1> [#uses=1]
  br i1 %19, label %20, label %53

; <label>:20                                      ; preds = %._crit_edge2
  %21 = load i8** %11                             ; <i8*> [#uses=3]
  %22 = icmp eq i8* %21, null                     ; <i1> [#uses=1]
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %20
  call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:24                                      ; preds = %20
  %25 = icmp slt i32 %18, 0                       ; <i1> [#uses=1]
  br i1 %25, label %._crit_edge, label %26

; <label>:26                                      ; preds = %24
  %27 = bitcast i8* %21 to i32*                   ; <i32*> [#uses=1]
  %28 = load i32* %27                             ; <i32> [#uses=1]
  %29 = icmp slt i32 %18, %28                     ; <i1> [#uses=1]
  br i1 %29, label %30, label %._crit_edge

; <label>:30                                      ; preds = %26
  %31 = bitcast i8* %21 to i8**                   ; <i8**> [#uses=1]
  %32 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %33 = getelementptr i8** %31, i64 %32           ; <i8**> [#uses=1]
  %34 = load i8** %33                             ; <i8*> [#uses=1]
  br label %36

._crit_edge:                                      ; preds = %26, %24
  %35 = call fastcc i8* @null_object() nounwind   ; <i8*> [#uses=1]
  br label %36

; <label>:36                                      ; preds = %._crit_edge, %30
  %storemerge.i = phi i8* [ %34, %30 ], [ %35, %._crit_edge ] ; <i8*> [#uses=1]
  %37 = call fastcc i8* @null_object() nounwind   ; <i8*> [#uses=1]
  %38 = call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_to_s, i8* %37) ; <i8*> [#uses=2]
  %39 = getelementptr i8* %38, i64 12             ; <i8*> [#uses=1]
  %40 = bitcast i8* %39 to i32*                   ; <i32*> [#uses=1]
  %41 = load i32* %40                             ; <i32> [#uses=1]
  %42 = and i32 %41, 255                          ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 3                        ; <i1> [#uses=1]
  br i1 %43, label %45, label %44

; <label>:44                                      ; preds = %36
  call void @__assert_rtn(i8* getelementptr inbounds ([13 x i8]* @__func__.string_cstrC, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC19", i64 0, i64 0), i32 88, i8* getelementptr inbounds ([28 x i8]* @"\01LC120", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:45                                      ; preds = %36
  %46 = getelementptr i8* %38, i64 24             ; <i8*> [#uses=1]
  %47 = bitcast i8* %46 to i8**                   ; <i8**> [#uses=1]
  %48 = load i8** %47                             ; <i8*> [#uses=1]
  %49 = call i8* @__strcat_chk(i8* %1, i8* %48, i64 -1) nounwind ; <i8*> [#uses=0]
  %50 = icmp ult i32 %18, %17                     ; <i1> [#uses=1]
  br i1 %50, label %51, label %._crit_edge2

; <label>:51                                      ; preds = %45
  %52 = call i8* @__strcat_chk(i8* %1, i8* getelementptr inbounds ([3 x i8]* @"\01LC1059", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge2

; <label>:53                                      ; preds = %._crit_edge2
  %54 = call i8* @__strcat_chk(i8* %1, i8* getelementptr inbounds ([2 x i8]* @"\01LC1160", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  %55 = call fastcc i8* @string_object(i8* %1)    ; <i8*> [#uses=1]
  ret i8* %55
}

define internal i8* @array_apply(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit.i

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit.i

array_get_elementC.exit.i:                        ; preds = %14, %10
  %storemerge.i.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %storemerge.i.i, i64 24 ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i8**                   ; <i8**> [#uses=1]
  %18 = load i8** %17                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %18 to i64                ; <i64> [#uses=1]
  %19 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=3]
  %20 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %21 = bitcast i8* %20 to i8**                   ; <i8**> [#uses=1]
  %22 = load i8** %21                             ; <i8*> [#uses=3]
  %23 = icmp eq i8* %22, null                     ; <i1> [#uses=1]
  br i1 %23, label %24, label %25

; <label>:24                                      ; preds = %array_get_elementC.exit.i
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:25                                      ; preds = %array_get_elementC.exit.i
  %26 = icmp slt i32 %19, 0                       ; <i1> [#uses=1]
  br i1 %26, label %._crit_edge.i, label %27

; <label>:27                                      ; preds = %25
  %28 = bitcast i8* %22 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=1]
  %30 = icmp slt i32 %19, %29                     ; <i1> [#uses=1]
  br i1 %30, label %31, label %._crit_edge.i

; <label>:31                                      ; preds = %27
  %32 = add i32 %19, 1                            ; <i32> [#uses=1]
  %33 = bitcast i8* %22 to i8**                   ; <i8**> [#uses=1]
  %34 = sext i32 %32 to i64                       ; <i64> [#uses=1]
  %35 = getelementptr i8** %33, i64 %34           ; <i8**> [#uses=1]
  %36 = load i8** %35                             ; <i8*> [#uses=1]
  ret i8* %36

._crit_edge.i:                                    ; preds = %27, %25
  %37 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  ret i8* %37
}

define internal i8* @array_size(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 7                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=1]
  %10 = load i8** %9                              ; <i8*> [#uses=2]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %array_get_sizeC.exit

; <label>:12                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %7
  %13 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=1]
  %14 = load i32* %13                             ; <i32> [#uses=1]
  %15 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %16 = icmp eq i8* %15, null                     ; <i1> [#uses=1]
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %array_get_sizeC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:18                                      ; preds = %array_get_sizeC.exit
  %19 = getelementptr i8* %15, i64 12             ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %20
  %21 = getelementptr i8* %15, i64 8              ; <i8*> [#uses=1]
  %22 = bitcast i8* %21 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %22
  %23 = sext i32 %14 to i64                       ; <i64> [#uses=1]
  %24 = inttoptr i64 %23 to i8*                   ; <i8*> [#uses=1]
  %25 = getelementptr i8* %15, i64 24             ; <i8*> [#uses=1]
  %26 = bitcast i8* %25 to i8**                   ; <i8**> [#uses=1]
  store i8* %24, i8** %26
  %27 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %28 = load i32* %22                             ; <i32> [#uses=1]
  %29 = icmp eq i32 %28, 364969966                ; <i1> [#uses=1]
  br i1 %29, label %int_object.exit, label %.thread

.thread:                                          ; preds = %18
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %18
  %30 = getelementptr i8* %15, i64 16             ; <i8*> [#uses=1]
  %31 = bitcast i8* %30 to i8**                   ; <i8**> [#uses=1]
  store i8* %27, i8** %31
  ret i8* %15
}

define internal i8* @array_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([6 x i8]* @"\01LC857", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @array_clone(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind readnone {
  ret i8* %self
}

define internal i8* @array_append(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=2]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=5]
  %30 = add i32 %29, 1                            ; <i32> [#uses=2]
  %31 = add i32 %29, 2                            ; <i32> [#uses=1]
  %32 = zext i32 %31 to i64                       ; <i64> [#uses=1]
  %33 = shl i64 %32, 3                            ; <i64> [#uses=1]
  %34 = tail call i8* @GC_debug_malloc(i64 %33, i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 337) nounwind ; <i8*> [#uses=3]
  %35 = icmp eq i8* %34, null                     ; <i1> [#uses=1]
  br i1 %35, label %36, label %mem_alloc.exit

; <label>:36                                      ; preds = %array_get_sizeC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit:                                   ; preds = %array_get_sizeC.exit
  %37 = bitcast i8* %34 to i32*                   ; <i32*> [#uses=1]
  store i32 %30, i32* %37
  %38 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %39 = icmp eq i8* %38, null                     ; <i1> [#uses=1]
  br i1 %39, label %40, label %41

; <label>:40                                      ; preds = %mem_alloc.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:41                                      ; preds = %mem_alloc.exit
  %42 = getelementptr i8* %38, i64 12             ; <i8*> [#uses=1]
  %43 = bitcast i8* %42 to i32*                   ; <i32*> [#uses=1]
  store i32 263, i32* %43
  %44 = getelementptr i8* %38, i64 8              ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %45
  %46 = getelementptr i8* %38, i64 24             ; <i8*> [#uses=1]
  %47 = bitcast i8* %46 to i8**                   ; <i8**> [#uses=3]
  store i8* %34, i8** %47
  %48 = tail call fastcc i8* @array_prototype() nounwind ; <i8*> [#uses=1]
  %49 = load i32* %45                             ; <i32> [#uses=1]
  %50 = icmp eq i32 %49, 364969966                ; <i1> [#uses=1]
  br i1 %50, label %object_set_delegate.exit, label %.thread

.thread:                                          ; preds = %41
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %41
  %51 = getelementptr i8* %38, i64 16             ; <i8*> [#uses=1]
  %52 = bitcast i8* %51 to i8**                   ; <i8**> [#uses=1]
  store i8* %48, i8** %52
  br label %53

; <label>:53                                      ; preds = %80, %object_set_delegate.exit
  %54 = phi i32 [ %tmp, %80 ], [ 0, %object_set_delegate.exit ] ; <i32> [#uses=5]
  %tmp = add i32 %54, 1                           ; <i32> [#uses=3]
  %55 = icmp ult i32 %54, %29                     ; <i1> [#uses=1]
  br i1 %55, label %56, label %84

; <label>:56                                      ; preds = %53
  %57 = load i8** %24                             ; <i8*> [#uses=3]
  %58 = icmp eq i8* %57, null                     ; <i1> [#uses=1]
  br i1 %58, label %59, label %60

; <label>:59                                      ; preds = %56
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:60                                      ; preds = %56
  %61 = icmp slt i32 %54, 0                       ; <i1> [#uses=2]
  br i1 %61, label %._crit_edge, label %62

; <label>:62                                      ; preds = %60
  %63 = bitcast i8* %57 to i32*                   ; <i32*> [#uses=1]
  %64 = load i32* %63                             ; <i32> [#uses=1]
  %65 = icmp slt i32 %54, %64                     ; <i1> [#uses=1]
  br i1 %65, label %66, label %._crit_edge

; <label>:66                                      ; preds = %62
  %67 = bitcast i8* %57 to i8**                   ; <i8**> [#uses=1]
  %68 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %69 = getelementptr i8** %67, i64 %68           ; <i8**> [#uses=1]
  %70 = load i8** %69                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit14

._crit_edge:                                      ; preds = %62, %60
  %71 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit14

array_get_elementC.exit14:                        ; preds = %._crit_edge, %66
  %storemerge.i13 = phi i8* [ %70, %66 ], [ %71, %._crit_edge ] ; <i8*> [#uses=1]
  %72 = load i8** %47                             ; <i8*> [#uses=3]
  %73 = icmp eq i8* %72, null                     ; <i1> [#uses=1]
  br i1 %73, label %74, label %75

; <label>:74                                      ; preds = %array_get_elementC.exit14
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:75                                      ; preds = %array_get_elementC.exit14
  br i1 %61, label %._crit_edge2, label %76

; <label>:76                                      ; preds = %75
  %77 = bitcast i8* %72 to i32*                   ; <i32*> [#uses=1]
  %78 = load i32* %77                             ; <i32> [#uses=1]
  %79 = icmp slt i32 %54, %78                     ; <i1> [#uses=1]
  br i1 %79, label %80, label %._crit_edge2

._crit_edge2:                                     ; preds = %76, %75
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:80                                      ; preds = %76
  %81 = bitcast i8* %72 to i8**                   ; <i8**> [#uses=1]
  %82 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %83 = getelementptr i8** %81, i64 %82           ; <i8**> [#uses=1]
  store i8* %storemerge.i13, i8** %83
  br label %53

; <label>:84                                      ; preds = %53
  %85 = load i8** %47                             ; <i8*> [#uses=3]
  %86 = icmp eq i8* %85, null                     ; <i1> [#uses=1]
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %84
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:88                                      ; preds = %84
  %89 = icmp slt i32 %29, 0                       ; <i1> [#uses=1]
  br i1 %89, label %._crit_edge4, label %90

; <label>:90                                      ; preds = %88
  %91 = bitcast i8* %85 to i32*                   ; <i32*> [#uses=1]
  %92 = load i32* %91                             ; <i32> [#uses=1]
  %93 = icmp slt i32 %29, %92                     ; <i1> [#uses=1]
  br i1 %93, label %array_set_elementC.exit, label %._crit_edge4

._crit_edge4:                                     ; preds = %90, %88
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %90
  %94 = bitcast i8* %85 to i8**                   ; <i8**> [#uses=1]
  %95 = sext i32 %30 to i64                       ; <i64> [#uses=1]
  %96 = getelementptr i8** %94, i64 %95           ; <i8**> [#uses=1]
  store i8* %storemerge.i, i8** %96
  ret i8* %38
}

define internal i8* @array_each(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=2]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=1]
  %30 = tail call fastcc i8* @array_object(i32 1) ; <i8*> [#uses=2]
  %31 = getelementptr i8* %30, i64 24             ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  br label %33

; <label>:33                                      ; preds = %60, %array_get_sizeC.exit
  %34 = phi i32 [ %tmp, %60 ], [ 0, %array_get_sizeC.exit ] ; <i32> [#uses=4]
  %tmp = add i32 %34, 1                           ; <i32> [#uses=2]
  %35 = icmp ult i32 %34, %29                     ; <i1> [#uses=1]
  br i1 %35, label %36, label %64

; <label>:36                                      ; preds = %33
  %37 = load i8** %24                             ; <i8*> [#uses=3]
  %38 = icmp eq i8* %37, null                     ; <i1> [#uses=1]
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %36
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:40                                      ; preds = %36
  %41 = icmp slt i32 %34, 0                       ; <i1> [#uses=1]
  br i1 %41, label %._crit_edge, label %42

; <label>:42                                      ; preds = %40
  %43 = bitcast i8* %37 to i32*                   ; <i32*> [#uses=1]
  %44 = load i32* %43                             ; <i32> [#uses=1]
  %45 = icmp slt i32 %34, %44                     ; <i1> [#uses=1]
  br i1 %45, label %46, label %._crit_edge

; <label>:46                                      ; preds = %42
  %47 = bitcast i8* %37 to i8**                   ; <i8**> [#uses=1]
  %48 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %49 = getelementptr i8** %47, i64 %48           ; <i8**> [#uses=1]
  %50 = load i8** %49                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit10

._crit_edge:                                      ; preds = %42, %40
  %51 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit10

array_get_elementC.exit10:                        ; preds = %._crit_edge, %46
  %storemerge.i9 = phi i8* [ %50, %46 ], [ %51, %._crit_edge ] ; <i8*> [#uses=1]
  %52 = load i8** %32                             ; <i8*> [#uses=3]
  %53 = icmp eq i8* %52, null                     ; <i1> [#uses=1]
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %array_get_elementC.exit10
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:55                                      ; preds = %array_get_elementC.exit10
  %56 = bitcast i8* %52 to i32*                   ; <i32*> [#uses=1]
  %57 = load i32* %56                             ; <i32> [#uses=1]
  %58 = icmp sgt i32 %57, 0                       ; <i1> [#uses=1]
  br i1 %58, label %60, label %59

; <label>:59                                      ; preds = %55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:60                                      ; preds = %55
  %61 = getelementptr i8* %52, i64 8              ; <i8*> [#uses=1]
  %62 = bitcast i8* %61 to i8**                   ; <i8**> [#uses=1]
  store i8* %storemerge.i9, i8** %62
  %63 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_apply, i8* %30) ; <i8*> [#uses=0]
  br label %33

; <label>:64                                      ; preds = %33
  ret i8* %self
}

define internal i8* @array_each_with_index(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=2]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=1]
  %30 = tail call fastcc i8* @array_object(i32 2) ; <i8*> [#uses=2]
  %31 = getelementptr i8* %30, i64 24             ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=2]
  br label %33

; <label>:33                                      ; preds = %87, %array_get_sizeC.exit
  %34 = phi i32 [ %tmp, %87 ], [ 0, %array_get_sizeC.exit ] ; <i32> [#uses=5]
  %tmp = add i32 %34, 1                           ; <i32> [#uses=2]
  %35 = icmp ult i32 %34, %29                     ; <i1> [#uses=1]
  br i1 %35, label %36, label %91

; <label>:36                                      ; preds = %33
  %37 = load i8** %24                             ; <i8*> [#uses=3]
  %38 = icmp eq i8* %37, null                     ; <i1> [#uses=1]
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %36
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:40                                      ; preds = %36
  %41 = icmp slt i32 %34, 0                       ; <i1> [#uses=1]
  br i1 %41, label %._crit_edge, label %42

; <label>:42                                      ; preds = %40
  %43 = bitcast i8* %37 to i32*                   ; <i32*> [#uses=1]
  %44 = load i32* %43                             ; <i32> [#uses=1]
  %45 = icmp slt i32 %34, %44                     ; <i1> [#uses=1]
  br i1 %45, label %46, label %._crit_edge

; <label>:46                                      ; preds = %42
  %47 = bitcast i8* %37 to i8**                   ; <i8**> [#uses=1]
  %48 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %49 = getelementptr i8** %47, i64 %48           ; <i8**> [#uses=1]
  %50 = load i8** %49                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit16

._crit_edge:                                      ; preds = %42, %40
  %51 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit16

array_get_elementC.exit16:                        ; preds = %._crit_edge, %46
  %storemerge.i15 = phi i8* [ %50, %46 ], [ %51, %._crit_edge ] ; <i8*> [#uses=1]
  %52 = load i8** %32                             ; <i8*> [#uses=3]
  %53 = icmp eq i8* %52, null                     ; <i1> [#uses=1]
  br i1 %53, label %54, label %55

; <label>:54                                      ; preds = %array_get_elementC.exit16
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:55                                      ; preds = %array_get_elementC.exit16
  %56 = bitcast i8* %52 to i32*                   ; <i32*> [#uses=1]
  %57 = load i32* %56                             ; <i32> [#uses=1]
  %58 = icmp sgt i32 %57, 0                       ; <i1> [#uses=1]
  br i1 %58, label %array_set_elementC.exit10, label %59

; <label>:59                                      ; preds = %55
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit10:                        ; preds = %55
  %60 = getelementptr i8* %52, i64 8              ; <i8*> [#uses=1]
  %61 = bitcast i8* %60 to i8**                   ; <i8**> [#uses=1]
  store i8* %storemerge.i15, i8** %61
  %62 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=6]
  %63 = icmp eq i8* %62, null                     ; <i1> [#uses=1]
  br i1 %63, label %64, label %65

; <label>:64                                      ; preds = %array_set_elementC.exit10
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:65                                      ; preds = %array_set_elementC.exit10
  %66 = getelementptr i8* %62, i64 12             ; <i8*> [#uses=1]
  %67 = bitcast i8* %66 to i32*                   ; <i32*> [#uses=1]
  store i32 258, i32* %67
  %68 = getelementptr i8* %62, i64 8              ; <i8*> [#uses=1]
  %69 = bitcast i8* %68 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %69
  %70 = sext i32 %34 to i64                       ; <i64> [#uses=1]
  %71 = inttoptr i64 %70 to i8*                   ; <i8*> [#uses=1]
  %72 = getelementptr i8* %62, i64 24             ; <i8*> [#uses=1]
  %73 = bitcast i8* %72 to i8**                   ; <i8**> [#uses=1]
  store i8* %71, i8** %73
  %74 = tail call fastcc i8* @int_prototype() nounwind ; <i8*> [#uses=1]
  %75 = load i32* %69                             ; <i32> [#uses=1]
  %76 = icmp eq i32 %75, 364969966                ; <i1> [#uses=1]
  br i1 %76, label %int_object.exit, label %.thread

.thread:                                          ; preds = %65
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

int_object.exit:                                  ; preds = %65
  %77 = getelementptr i8* %62, i64 16             ; <i8*> [#uses=1]
  %78 = bitcast i8* %77 to i8**                   ; <i8**> [#uses=1]
  store i8* %74, i8** %78
  %79 = load i8** %32                             ; <i8*> [#uses=3]
  %80 = icmp eq i8* %79, null                     ; <i1> [#uses=1]
  br i1 %80, label %81, label %82

; <label>:81                                      ; preds = %int_object.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:82                                      ; preds = %int_object.exit
  %83 = bitcast i8* %79 to i32*                   ; <i32*> [#uses=1]
  %84 = load i32* %83                             ; <i32> [#uses=1]
  %85 = icmp sgt i32 %84, 1                       ; <i1> [#uses=1]
  br i1 %85, label %87, label %86

; <label>:86                                      ; preds = %82
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:87                                      ; preds = %82
  %88 = getelementptr i8* %79, i64 16             ; <i8*> [#uses=1]
  %89 = bitcast i8* %88 to i8**                   ; <i8**> [#uses=1]
  store i8* %62, i8** %89
  %90 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_apply, i8* %30) ; <i8*> [#uses=0]
  br label %33

; <label>:91                                      ; preds = %33
  ret i8* %self
}

define internal i8* @array_inject(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=2]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 1                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 16              ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=2]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=1]
  %30 = tail call fastcc i8* @array_object(i32 2) ; <i8*> [#uses=2]
  %31 = load i8** %2                              ; <i8*> [#uses=3]
  %32 = icmp eq i8* %31, null                     ; <i1> [#uses=1]
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %array_get_sizeC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:34                                      ; preds = %array_get_sizeC.exit
  %35 = bitcast i8* %31 to i32*                   ; <i32*> [#uses=1]
  %36 = load i32* %35                             ; <i32> [#uses=1]
  %37 = icmp sgt i32 %36, 0                       ; <i1> [#uses=1]
  br i1 %37, label %38, label %42

; <label>:38                                      ; preds = %34
  %39 = getelementptr i8* %31, i64 8              ; <i8*> [#uses=1]
  %40 = bitcast i8* %39 to i8**                   ; <i8**> [#uses=1]
  %41 = load i8** %40                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit21

; <label>:42                                      ; preds = %34
  %43 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit21

array_get_elementC.exit21:                        ; preds = %42, %38
  %storemerge.i20 = phi i8* [ %41, %38 ], [ %43, %42 ] ; <i8*> [#uses=1]
  %44 = getelementptr i8* %30, i64 24             ; <i8*> [#uses=1]
  %45 = bitcast i8* %44 to i8**                   ; <i8**> [#uses=2]
  br label %46

; <label>:46                                      ; preds = %83, %array_get_elementC.exit21
  %last_val.0 = phi i8* [ %storemerge.i20, %array_get_elementC.exit21 ], [ %86, %83 ] ; <i8*> [#uses=2]
  %47 = phi i32 [ %tmp, %83 ], [ 0, %array_get_elementC.exit21 ] ; <i32> [#uses=4]
  %tmp = add i32 %47, 1                           ; <i32> [#uses=2]
  %48 = icmp ult i32 %47, %29                     ; <i1> [#uses=1]
  br i1 %48, label %49, label %87

; <label>:49                                      ; preds = %46
  %50 = load i8** %24                             ; <i8*> [#uses=3]
  %51 = icmp eq i8* %50, null                     ; <i1> [#uses=1]
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %49
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:53                                      ; preds = %49
  %54 = icmp slt i32 %47, 0                       ; <i1> [#uses=1]
  br i1 %54, label %._crit_edge, label %55

; <label>:55                                      ; preds = %53
  %56 = bitcast i8* %50 to i32*                   ; <i32*> [#uses=1]
  %57 = load i32* %56                             ; <i32> [#uses=1]
  %58 = icmp slt i32 %47, %57                     ; <i1> [#uses=1]
  br i1 %58, label %59, label %._crit_edge

; <label>:59                                      ; preds = %55
  %60 = bitcast i8* %50 to i8**                   ; <i8**> [#uses=1]
  %61 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %62 = getelementptr i8** %60, i64 %61           ; <i8**> [#uses=1]
  %63 = load i8** %62                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit15

._crit_edge:                                      ; preds = %55, %53
  %64 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit15

array_get_elementC.exit15:                        ; preds = %._crit_edge, %59
  %storemerge.i14 = phi i8* [ %63, %59 ], [ %64, %._crit_edge ] ; <i8*> [#uses=1]
  %65 = load i8** %45                             ; <i8*> [#uses=3]
  %66 = icmp eq i8* %65, null                     ; <i1> [#uses=1]
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %array_get_elementC.exit15
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:68                                      ; preds = %array_get_elementC.exit15
  %69 = bitcast i8* %65 to i32*                   ; <i32*> [#uses=1]
  %70 = load i32* %69                             ; <i32> [#uses=1]
  %71 = icmp sgt i32 %70, 0                       ; <i1> [#uses=1]
  br i1 %71, label %array_set_elementC.exit9, label %72

; <label>:72                                      ; preds = %68
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit9:                         ; preds = %68
  %73 = getelementptr i8* %65, i64 8              ; <i8*> [#uses=1]
  %74 = bitcast i8* %73 to i8**                   ; <i8**> [#uses=1]
  store i8* %storemerge.i14, i8** %74
  %75 = load i8** %45                             ; <i8*> [#uses=3]
  %76 = icmp eq i8* %75, null                     ; <i1> [#uses=1]
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %array_set_elementC.exit9
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:78                                      ; preds = %array_set_elementC.exit9
  %79 = bitcast i8* %75 to i32*                   ; <i32*> [#uses=1]
  %80 = load i32* %79                             ; <i32> [#uses=1]
  %81 = icmp sgt i32 %80, 1                       ; <i1> [#uses=1]
  br i1 %81, label %83, label %82

; <label>:82                                      ; preds = %78
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:83                                      ; preds = %78
  %84 = getelementptr i8* %75, i64 16             ; <i8*> [#uses=1]
  %85 = bitcast i8* %84 to i8**                   ; <i8**> [#uses=1]
  store i8* %last_val.0, i8** %85
  %86 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_apply, i8* %30) ; <i8*> [#uses=1]
  br label %46

; <label>:87                                      ; preds = %46
  ret i8* %last_val.0
}

define internal i8* @array_join(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=1]
  %4 = and i32 %3, 255                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 7                          ; <i1> [#uses=1]
  br i1 %5, label %7, label %6

; <label>:6                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:7                                       ; preds = %0
  %8 = getelementptr i8* %self, i64 24            ; <i8*> [#uses=1]
  %9 = bitcast i8* %8 to i8**                     ; <i8**> [#uses=2]
  %10 = load i8** %9                              ; <i8*> [#uses=2]
  %11 = icmp eq i8* %10, null                     ; <i1> [#uses=1]
  br i1 %11, label %12, label %array_get_sizeC.exit

; <label>:12                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %7
  %13 = bitcast i8* %10 to i32*                   ; <i32*> [#uses=1]
  %14 = load i32* %13                             ; <i32> [#uses=2]
  %15 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([1 x i8]* @"\01LC756", i64 0, i64 0)) ; <i8*> [#uses=1]
  %16 = getelementptr i8* %args, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_sizeC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_sizeC.exit
  %23 = getelementptr i8* %args, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=1]
  %25 = load i8** %24                             ; <i8*> [#uses=3]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit3

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit3:                            ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=2]
  %30 = icmp eq i32 %29, 0                        ; <i1> [#uses=1]
  br i1 %30, label %array_get_sizeC.exit3._crit_edge, label %31

; <label>:31                                      ; preds = %array_get_sizeC.exit3
  %32 = icmp sgt i32 %29, 0                       ; <i1> [#uses=1]
  br i1 %32, label %33, label %37

; <label>:33                                      ; preds = %31
  %34 = getelementptr i8* %25, i64 8              ; <i8*> [#uses=1]
  %35 = bitcast i8* %34 to i8**                   ; <i8**> [#uses=1]
  %36 = load i8** %35                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:37                                      ; preds = %31
  %38 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %37, %33
  %storemerge.i = phi i8* [ %36, %33 ], [ %38, %37 ] ; <i8*> [#uses=1]
  %39 = tail call fastcc i8* @array_object(i32 0) ; <i8*> [#uses=1]
  %40 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_to_s, i8* %39) ; <i8*> [#uses=1]
  br label %array_get_sizeC.exit3._crit_edge

array_get_sizeC.exit3._crit_edge:                 ; preds = %array_get_elementC.exit, %array_get_sizeC.exit3
  %combiner.0 = phi i8* [ %40, %array_get_elementC.exit ], [ null, %array_get_sizeC.exit3 ] ; <i8*> [#uses=2]
  %41 = add i32 %14, -1                           ; <i32> [#uses=1]
  %.not = icmp ne i8* %combiner.0, null           ; <i1> [#uses=1]
  br label %array_set_elementC.exit12._crit_edge

array_set_elementC.exit12._crit_edge:             ; preds = %array_set_elementC.exit, %array_set_elementC.exit12, %array_get_sizeC.exit3._crit_edge
  %concat.0 = phi i8* [ %15, %array_get_sizeC.exit3._crit_edge ], [ %88, %array_set_elementC.exit ], [ %75, %array_set_elementC.exit12 ] ; <i8*> [#uses=2]
  %42 = phi i32 [ 0, %array_get_sizeC.exit3._crit_edge ], [ %tmp, %array_set_elementC.exit12 ], [ %tmp, %array_set_elementC.exit ] ; <i32> [#uses=5]
  %tmp = add i32 %42, 1                           ; <i32> [#uses=3]
  %43 = icmp ult i32 %42, %14                     ; <i1> [#uses=1]
  br i1 %43, label %44, label %89

; <label>:44                                      ; preds = %array_set_elementC.exit12._crit_edge
  %45 = load i8** %9                              ; <i8*> [#uses=3]
  %46 = icmp eq i8* %45, null                     ; <i1> [#uses=1]
  br i1 %46, label %47, label %48

; <label>:47                                      ; preds = %44
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:48                                      ; preds = %44
  %49 = icmp slt i32 %42, 0                       ; <i1> [#uses=1]
  br i1 %49, label %._crit_edge, label %50

; <label>:50                                      ; preds = %48
  %51 = bitcast i8* %45 to i32*                   ; <i32*> [#uses=1]
  %52 = load i32* %51                             ; <i32> [#uses=1]
  %53 = icmp slt i32 %42, %52                     ; <i1> [#uses=1]
  br i1 %53, label %54, label %._crit_edge

; <label>:54                                      ; preds = %50
  %55 = bitcast i8* %45 to i8**                   ; <i8**> [#uses=1]
  %56 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %57 = getelementptr i8** %55, i64 %56           ; <i8**> [#uses=1]
  %58 = load i8** %57                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit18

._crit_edge:                                      ; preds = %50, %48
  %59 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit18

array_get_elementC.exit18:                        ; preds = %._crit_edge, %54
  %storemerge.i17 = phi i8* [ %58, %54 ], [ %59, %._crit_edge ] ; <i8*> [#uses=1]
  %60 = tail call fastcc i8* @array_object(i32 0) ; <i8*> [#uses=1]
  %61 = tail call fastcc i8* @object_exec(i8* %storemerge.i17, i32* @__sym_to_s, i8* %60) ; <i8*> [#uses=1]
  %62 = tail call fastcc i8* @array_object(i32 1) ; <i8*> [#uses=3]
  %63 = getelementptr i8* %62, i64 24             ; <i8*> [#uses=1]
  %64 = bitcast i8* %63 to i8**                   ; <i8**> [#uses=2]
  %65 = load i8** %64                             ; <i8*> [#uses=3]
  %66 = icmp eq i8* %65, null                     ; <i1> [#uses=1]
  br i1 %66, label %67, label %68

; <label>:67                                      ; preds = %array_get_elementC.exit18
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:68                                      ; preds = %array_get_elementC.exit18
  %69 = bitcast i8* %65 to i32*                   ; <i32*> [#uses=1]
  %70 = load i32* %69                             ; <i32> [#uses=1]
  %71 = icmp sgt i32 %70, 0                       ; <i1> [#uses=1]
  br i1 %71, label %array_set_elementC.exit12, label %72

; <label>:72                                      ; preds = %68
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit12:                        ; preds = %68
  %73 = getelementptr i8* %65, i64 8              ; <i8*> [#uses=1]
  %74 = bitcast i8* %73 to i8**                   ; <i8**> [#uses=1]
  store i8* %61, i8** %74
  %75 = tail call fastcc i8* @object_exec(i8* %concat.0, i32* @__sym_add, i8* %62) ; <i8*> [#uses=2]
  %76 = icmp ult i32 %42, %41                     ; <i1> [#uses=1]
  %or.cond = and i1 %76, %.not                    ; <i1> [#uses=1]
  br i1 %or.cond, label %77, label %array_set_elementC.exit12._crit_edge

; <label>:77                                      ; preds = %array_set_elementC.exit12
  %78 = load i8** %64                             ; <i8*> [#uses=3]
  %79 = icmp eq i8* %78, null                     ; <i1> [#uses=1]
  br i1 %79, label %80, label %81

; <label>:80                                      ; preds = %77
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:81                                      ; preds = %77
  %82 = bitcast i8* %78 to i32*                   ; <i32*> [#uses=1]
  %83 = load i32* %82                             ; <i32> [#uses=1]
  %84 = icmp sgt i32 %83, 0                       ; <i1> [#uses=1]
  br i1 %84, label %array_set_elementC.exit, label %85

; <label>:85                                      ; preds = %81
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %81
  %86 = getelementptr i8* %78, i64 8              ; <i8*> [#uses=1]
  %87 = bitcast i8* %86 to i8**                   ; <i8**> [#uses=1]
  store i8* %combiner.0, i8** %87
  %88 = tail call fastcc i8* @object_exec(i8* %75, i32* @__sym_add, i8* %62) ; <i8*> [#uses=1]
  br label %array_set_elementC.exit12._crit_edge

; <label>:89                                      ; preds = %array_set_elementC.exit12._crit_edge
  ret i8* %concat.0
}

define internal i8* @array_all_q(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = getelementptr i8* %self, i64 12           ; <i8*> [#uses=1]
  %17 = bitcast i8* %16 to i32*                   ; <i32*> [#uses=1]
  %18 = load i32* %17                             ; <i32> [#uses=1]
  %19 = and i32 %18, 255                          ; <i32> [#uses=1]
  %20 = icmp eq i32 %19, 7                        ; <i1> [#uses=1]
  br i1 %20, label %22, label %21

; <label>:21                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 149, i8* getelementptr inbounds ([28 x i8]* @"\01LC455", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:22                                      ; preds = %array_get_elementC.exit
  %23 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=2]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %27, label %array_get_sizeC.exit

; <label>:27                                      ; preds = %22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([16 x i8]* @__func__.array_get_sizeC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 152, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_sizeC.exit:                             ; preds = %22
  %28 = bitcast i8* %25 to i32*                   ; <i32*> [#uses=1]
  %29 = load i32* %28                             ; <i32> [#uses=2]
  %30 = tail call fastcc i8* @array_object(i32 1) ; <i8*> [#uses=2]
  %31 = getelementptr i8* %30, i64 24             ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  br label %bool_get_value.exit.thread.outer

bool_get_value.exit.thread.outer:                 ; preds = %bool_get_value.exit, %array_get_sizeC.exit
  %num_success.1.ph = phi i32 [ 0, %array_get_sizeC.exit ], [ %num_success.1., %bool_get_value.exit ] ; <i32> [#uses=2]
  %.ph = phi i32 [ 0, %array_get_sizeC.exit ], [ %tmp, %bool_get_value.exit ] ; <i32> [#uses=1]
  br label %bool_get_value.exit.thread

bool_get_value.exit.thread:                       ; preds = %array_set_elementC.exit, %bool_get_value.exit.thread.outer
  %33 = phi i32 [ %tmp, %array_set_elementC.exit ], [ %.ph, %bool_get_value.exit.thread.outer ] ; <i32> [#uses=4]
  %tmp = add i32 %33, 1                           ; <i32> [#uses=3]
  %34 = icmp ult i32 %33, %29                     ; <i1> [#uses=1]
  br i1 %34, label %35, label %72

; <label>:35                                      ; preds = %bool_get_value.exit.thread
  %36 = load i8** %24                             ; <i8*> [#uses=3]
  %37 = icmp eq i8* %36, null                     ; <i1> [#uses=1]
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %35
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:39                                      ; preds = %35
  %40 = icmp slt i32 %33, 0                       ; <i1> [#uses=1]
  br i1 %40, label %._crit_edge, label %41

; <label>:41                                      ; preds = %39
  %42 = bitcast i8* %36 to i32*                   ; <i32*> [#uses=1]
  %43 = load i32* %42                             ; <i32> [#uses=1]
  %44 = icmp slt i32 %33, %43                     ; <i1> [#uses=1]
  br i1 %44, label %45, label %._crit_edge

; <label>:45                                      ; preds = %41
  %46 = bitcast i8* %36 to i8**                   ; <i8**> [#uses=1]
  %47 = sext i32 %tmp to i64                      ; <i64> [#uses=1]
  %48 = getelementptr i8** %46, i64 %47           ; <i8**> [#uses=1]
  %49 = load i8** %48                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit9

._crit_edge:                                      ; preds = %41, %39
  %50 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit9

array_get_elementC.exit9:                         ; preds = %._crit_edge, %45
  %storemerge.i8 = phi i8* [ %49, %45 ], [ %50, %._crit_edge ] ; <i8*> [#uses=1]
  %51 = load i8** %32                             ; <i8*> [#uses=3]
  %52 = icmp eq i8* %51, null                     ; <i1> [#uses=1]
  br i1 %52, label %53, label %54

; <label>:53                                      ; preds = %array_get_elementC.exit9
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:54                                      ; preds = %array_get_elementC.exit9
  %55 = bitcast i8* %51 to i32*                   ; <i32*> [#uses=1]
  %56 = load i32* %55                             ; <i32> [#uses=1]
  %57 = icmp sgt i32 %56, 0                       ; <i1> [#uses=1]
  br i1 %57, label %array_set_elementC.exit, label %58

; <label>:58                                      ; preds = %54
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %54
  %59 = getelementptr i8* %51, i64 8              ; <i8*> [#uses=1]
  %60 = bitcast i8* %59 to i8**                   ; <i8**> [#uses=1]
  store i8* %storemerge.i8, i8** %60
  %61 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_apply, i8* %30) ; <i8*> [#uses=2]
  %62 = getelementptr i8* %61, i64 12             ; <i8*> [#uses=1]
  %63 = bitcast i8* %62 to i32*                   ; <i32*> [#uses=1]
  %64 = load i32* %63                             ; <i32> [#uses=1]
  %65 = and i32 %64, 255                          ; <i32> [#uses=1]
  %66 = icmp eq i32 %65, 1                        ; <i1> [#uses=1]
  br i1 %66, label %bool_get_value.exit.thread, label %bool_get_value.exit

bool_get_value.exit:                              ; preds = %array_set_elementC.exit
  %67 = getelementptr i8* %61, i64 24             ; <i8*> [#uses=1]
  %68 = bitcast i8* %67 to i8**                   ; <i8**> [#uses=1]
  %69 = load i8** %68                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %69 to i64                ; <i64> [#uses=1]
  %70 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=1]
  %not.phitmp = icmp ne i32 %70, 0                ; <i1> [#uses=1]
  %71 = zext i1 %not.phitmp to i32                ; <i32> [#uses=1]
  %num_success.1. = add i32 %71, %num_success.1.ph ; <i32> [#uses=1]
  br label %bool_get_value.exit.thread.outer

; <label>:72                                      ; preds = %bool_get_value.exit.thread
  %73 = icmp eq i32 %num_success.1.ph, %29        ; <i1> [#uses=1]
  %74 = zext i1 %73 to i32                        ; <i32> [#uses=1]
  %75 = tail call fastcc i8* @bool_object(i32 %74) ; <i8*> [#uses=1]
  ret i8* %75
}

declare i32 @atexit(void ()*)

define internal fastcc i32 @__t_start(i32 %argc, i8** nocapture %argv, i8* %lobby) nounwind {
; <label>:0
  %1 = tail call fastcc i8* @array_object(i32 %argc) nounwind ; <i8*> [#uses=2]
  %2 = getelementptr i8* %1, i64 24               ; <i8*> [#uses=1]
  %3 = bitcast i8* %2 to i8**                     ; <i8**> [#uses=1]
  br label %4

; <label>:4                                       ; preds = %array_set_elementC.exit.i, %0
  %indvar = phi i64 [ 0, %0 ], [ %indvar.next, %array_set_elementC.exit.i ] ; <i64> [#uses=3]
  %indvar4 = trunc i64 %indvar to i32             ; <i32> [#uses=4]
  %tmp2 = add i32 %indvar4, 1                     ; <i32> [#uses=1]
  %5 = icmp slt i32 %indvar4, %argc               ; <i1> [#uses=1]
  br i1 %5, label %6, label %create_args.exit

; <label>:6                                       ; preds = %4
  %scevgep = getelementptr i8** %argv, i64 %indvar ; <i8**> [#uses=1]
  %7 = load i8** %scevgep                         ; <i8*> [#uses=1]
  %8 = tail call fastcc i8* @string_object(i8* %7) nounwind ; <i8*> [#uses=1]
  %9 = load i8** %3                               ; <i8*> [#uses=3]
  %10 = icmp eq i8* %9, null                      ; <i1> [#uses=1]
  br i1 %10, label %11, label %12

; <label>:11                                      ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:12                                      ; preds = %6
  %13 = icmp slt i32 %indvar4, 0                  ; <i1> [#uses=1]
  br i1 %13, label %._crit_edge, label %14

; <label>:14                                      ; preds = %12
  %15 = bitcast i8* %9 to i32*                    ; <i32*> [#uses=1]
  %16 = load i32* %15                             ; <i32> [#uses=1]
  %17 = icmp slt i32 %indvar4, %16                ; <i1> [#uses=1]
  br i1 %17, label %array_set_elementC.exit.i, label %._crit_edge

._crit_edge:                                      ; preds = %14, %12
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit.i:                        ; preds = %14
  %18 = bitcast i8* %9 to i8**                    ; <i8**> [#uses=1]
  %19 = sext i32 %tmp2 to i64                     ; <i64> [#uses=1]
  %20 = getelementptr i8** %18, i64 %19           ; <i8**> [#uses=1]
  store i8* %8, i8** %20
  %indvar.next = add i64 %indvar, 1               ; <i64> [#uses=1]
  br label %4

create_args.exit:                                 ; preds = %4
  %21 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([15 x i8]* @"\01LC367", i64 0, i64 0), i32* @__sym_main) nounwind ; <i32> [#uses=0]
  %22 = tail call fastcc i8* @object_exec(i8* %lobby, i32* @__sym_main, i8* %1) ; <i8*> [#uses=0]
  tail call void @GC_gcollect() nounwind
  %23 = tail call i64 @GC_get_heap_size() nounwind ; <i64> [#uses=1]
  %24 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @"\01LC69", i64 0, i64 0), i64 %23) nounwind ; <i32> [#uses=0]
  %25 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @"\01LC170", i64 0, i64 0), i32 0, i32 0) nounwind ; <i32> [#uses=0]
  %26 = load i64* @GC_gc_no                       ; <i64> [#uses=1]
  %27 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @"\01LC271", i64 0, i64 0), i64 %26) nounwind ; <i32> [#uses=0]
  ret i32 0
}

define internal void @__t_exit() nounwind {
  tail call void @GC_gcollect() nounwind
  %1 = tail call i64 @GC_get_heap_size() nounwind ; <i64> [#uses=1]
  %2 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([16 x i8]* @"\01LC69", i64 0, i64 0), i64 %1) nounwind ; <i32> [#uses=0]
  %3 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([31 x i8]* @"\01LC170", i64 0, i64 0), i32 0, i32 0) nounwind ; <i32> [#uses=0]
  %4 = load i64* @GC_gc_no                        ; <i64> [#uses=1]
  %5 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @"\01LC271", i64 0, i64 0), i64 %4) nounwind ; <i32> [#uses=0]
  ret void
}

declare void @GC_init()

declare void @GC_gcollect()

declare i64 @GC_get_heap_size()

declare i8* @GC_debug_malloc(i64, i8*, i32)

define internal fastcc i8* @object_prototype() nounwind {
  %1 = load i8** @object_prototype.prototype      ; <i8*> [#uses=2]
  %2 = icmp eq i8* %1, null                       ; <i1> [#uses=1]
  br i1 %2, label %3, label %326

; <label>:3                                       ; preds = %0
  %4 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @object_prototype_m) nounwind ; <i32> [#uses=0]
  %5 = load i8** @object_prototype.prototype      ; <i8*> [#uses=1]
  %6 = icmp eq i8* %5, null                       ; <i1> [#uses=1]
  br i1 %6, label %7, label %object_set_slot.exit

; <label>:7                                       ; preds = %3
  %8 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=7]
  %9 = icmp eq i8* %8, null                       ; <i1> [#uses=1]
  br i1 %9, label %10, label %object_alloc.exit13

; <label>:10                                      ; preds = %7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

object_alloc.exit13:                              ; preds = %7
  %11 = getelementptr i8* %8, i64 12              ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i32*                   ; <i32*> [#uses=1]
  store i32 512, i32* %12
  %13 = getelementptr i8* %8, i64 8               ; <i8*> [#uses=1]
  %14 = bitcast i8* %13 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %14
  store i8* %8, i8** @object_prototype.prototype
  %15 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %16 = icmp eq i8* %15, null                     ; <i1> [#uses=1]
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %object_alloc.exit13
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:18                                      ; preds = %object_alloc.exit13
  %19 = getelementptr i8* %15, i64 12             ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %20
  %21 = getelementptr i8* %15, i64 8              ; <i8*> [#uses=1]
  %22 = bitcast i8* %21 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %22
  %23 = getelementptr i8* %15, i64 24             ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @object_clone to i8*), i8** %24
  %25 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %26 = load i32* %22                             ; <i32> [#uses=1]
  %27 = icmp eq i32 %26, 364969966                ; <i1> [#uses=1]
  br i1 %27, label %closure_object.exit, label %.thread

.thread:                                          ; preds = %18
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit:                              ; preds = %18
  %28 = getelementptr i8* %15, i64 16             ; <i8*> [#uses=1]
  %29 = bitcast i8* %28 to i8**                   ; <i8**> [#uses=1]
  store i8* %25, i8** %29
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_clone to i64)), i64 4), label %30, label %35

; <label>:30                                      ; preds = %closure_object.exit
  %31 = load i32* %14                             ; <i32> [#uses=1]
  %32 = icmp eq i32 %31, 364969966                ; <i1> [#uses=1]
  br i1 %32, label %object_set_delegate.exit.i24, label %.thread.i23

.thread.i23:                                      ; preds = %30
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i24:                     ; preds = %30
  %33 = getelementptr i8* %8, i64 16              ; <i8*> [#uses=1]
  %34 = bitcast i8* %33 to i8**                   ; <i8**> [#uses=1]
  store i8* %15, i8** %34
  br label %object_set_slot.exit28

; <label>:35                                      ; preds = %closure_object.exit
  %36 = bitcast i8* %8 to %struct.slot_node**     ; <%struct.slot_node**> [#uses=1]
  %37 = load %struct.slot_node** %36              ; <%struct.slot_node*> [#uses=2]
  %38 = bitcast i8* %8 to %struct.slot_node*      ; <%struct.slot_node*> [#uses=1]
  br label %39

; <label>:39                                      ; preds = %57, %35
  %node.0.i25 = phi %struct.slot_node* [ %37, %35 ], [ %59, %57 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i26 = phi %struct.slot_node* [ %38, %35 ], [ %node.0.i25, %57 ] ; <%struct.slot_node*> [#uses=1]
  %40 = phi %struct.slot_node* [ %59, %57 ], [ %37, %35 ] ; <%struct.slot_node*> [#uses=1]
  %41 = icmp eq %struct.slot_node* %40, null      ; <i1> [#uses=1]
  br i1 %41, label %60, label %42

; <label>:42                                      ; preds = %39
  %43 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 6 ; <i32**> [#uses=1]
  %44 = load i32** %43                            ; <i32*> [#uses=1]
  %45 = ptrtoint i32* %44 to i64                  ; <i64> [#uses=1]
  %46 = sub i64 ptrtoint (i32* @__sym_clone to i64), %45 ; <i64> [#uses=1]
  %47 = icmp ult i64 %46, 4                       ; <i1> [#uses=1]
  br i1 %47, label %48, label %57

; <label>:48                                      ; preds = %42
  %49 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 1 ; <i32*> [#uses=1]
  %50 = load i32* %49                             ; <i32> [#uses=1]
  %51 = and i32 %50, 2                            ; <i32> [#uses=1]
  %52 = icmp eq i32 %51, 0                        ; <i1> [#uses=1]
  br i1 %52, label %55, label %53

; <label>:53                                      ; preds = %48
  %54 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %15, i8** %54
  br label %object_set_slot.exit28

; <label>:55                                      ; preds = %48
  %56 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_clone) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit28

; <label>:57                                      ; preds = %42
  %58 = getelementptr %struct.slot_node* %node.0.i25, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %59 = load %struct.slot_node** %58              ; <%struct.slot_node*> [#uses=2]
  br label %39

; <label>:60                                      ; preds = %39
  %61 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %62 = icmp eq i8* %61, null                     ; <i1> [#uses=1]
  br i1 %62, label %63, label %mem_alloc.exit.i27

; <label>:63                                      ; preds = %60
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i27:                               ; preds = %60
  %64 = bitcast i8* %61 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %65 = getelementptr i8* %61, i64 8              ; <i8*> [#uses=1]
  %66 = bitcast i8* %65 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %66
  %67 = getelementptr i8* %61, i64 16             ; <i8*> [#uses=1]
  %68 = bitcast i8* %67 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym_clone, i32** %68
  %69 = getelementptr i8* %61, i64 24             ; <i8*> [#uses=1]
  %70 = bitcast i8* %69 to i8**                   ; <i8**> [#uses=1]
  store i8* %15, i8** %70
  %71 = bitcast i8* %61 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %71
  %72 = getelementptr %struct.slot_node* %last_node.0.i26, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %64, %struct.slot_node** %72
  br label %object_set_slot.exit28

object_set_slot.exit28:                           ; preds = %mem_alloc.exit.i27, %55, %53, %object_set_delegate.exit.i24
  %73 = load i8** @object_prototype.prototype     ; <i8*> [#uses=5]
  %74 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %75 = icmp eq i8* %74, null                     ; <i1> [#uses=1]
  br i1 %75, label %76, label %77

; <label>:76                                      ; preds = %object_set_slot.exit28
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:77                                      ; preds = %object_set_slot.exit28
  %78 = getelementptr i8* %74, i64 12             ; <i8*> [#uses=1]
  %79 = bitcast i8* %78 to i32*                   ; <i32*> [#uses=1]
  store i32 260, i32* %79
  %80 = getelementptr i8* %74, i64 8              ; <i8*> [#uses=1]
  %81 = bitcast i8* %80 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %81
  %82 = getelementptr i8* %74, i64 24             ; <i8*> [#uses=1]
  %83 = bitcast i8* %82 to i8**                   ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @object_class to i8*), i8** %83
  %84 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %85 = load i32* %81                             ; <i32> [#uses=1]
  %86 = icmp eq i32 %85, 364969966                ; <i1> [#uses=1]
  br i1 %86, label %closure_object.exit5, label %.thread21

.thread21:                                        ; preds = %77
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit5:                             ; preds = %77
  %87 = getelementptr i8* %74, i64 16             ; <i8*> [#uses=1]
  %88 = bitcast i8* %87 to i8**                   ; <i8**> [#uses=1]
  store i8* %84, i8** %88
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_class to i64)), i64 4), label %89, label %98

; <label>:89                                      ; preds = %closure_object.exit5
  %90 = icmp eq i8* %73, null                     ; <i1> [#uses=1]
  br i1 %90, label %.thread.i35, label %91

; <label>:91                                      ; preds = %89
  %92 = getelementptr i8* %73, i64 8              ; <i8*> [#uses=1]
  %93 = bitcast i8* %92 to i32*                   ; <i32*> [#uses=1]
  %94 = load i32* %93                             ; <i32> [#uses=1]
  %95 = icmp eq i32 %94, 364969966                ; <i1> [#uses=1]
  br i1 %95, label %object_set_delegate.exit.i36, label %.thread.i35

.thread.i35:                                      ; preds = %91, %89
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i36:                     ; preds = %91
  %96 = getelementptr i8* %73, i64 16             ; <i8*> [#uses=1]
  %97 = bitcast i8* %96 to i8**                   ; <i8**> [#uses=1]
  store i8* %74, i8** %97
  br label %object_set_slot.exit40

; <label>:98                                      ; preds = %closure_object.exit5
  %99 = bitcast i8* %73 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %100 = load %struct.slot_node** %99             ; <%struct.slot_node*> [#uses=2]
  %101 = bitcast i8* %73 to %struct.slot_node*    ; <%struct.slot_node*> [#uses=1]
  br label %102

; <label>:102                                     ; preds = %120, %98
  %node.0.i37 = phi %struct.slot_node* [ %100, %98 ], [ %122, %120 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i38 = phi %struct.slot_node* [ %101, %98 ], [ %node.0.i37, %120 ] ; <%struct.slot_node*> [#uses=1]
  %103 = phi %struct.slot_node* [ %122, %120 ], [ %100, %98 ] ; <%struct.slot_node*> [#uses=1]
  %104 = icmp eq %struct.slot_node* %103, null    ; <i1> [#uses=1]
  br i1 %104, label %123, label %105

; <label>:105                                     ; preds = %102
  %106 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 6 ; <i32**> [#uses=1]
  %107 = load i32** %106                          ; <i32*> [#uses=1]
  %108 = ptrtoint i32* %107 to i64                ; <i64> [#uses=1]
  %109 = sub i64 ptrtoint (i32* @__sym_class to i64), %108 ; <i64> [#uses=1]
  %110 = icmp ult i64 %109, 4                     ; <i1> [#uses=1]
  br i1 %110, label %111, label %120

; <label>:111                                     ; preds = %105
  %112 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 1 ; <i32*> [#uses=1]
  %113 = load i32* %112                           ; <i32> [#uses=1]
  %114 = and i32 %113, 2                          ; <i32> [#uses=1]
  %115 = icmp eq i32 %114, 0                      ; <i1> [#uses=1]
  br i1 %115, label %118, label %116

; <label>:116                                     ; preds = %111
  %117 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %74, i8** %117
  br label %object_set_slot.exit40

; <label>:118                                     ; preds = %111
  %119 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_class) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit40

; <label>:120                                     ; preds = %105
  %121 = getelementptr %struct.slot_node* %node.0.i37, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %122 = load %struct.slot_node** %121            ; <%struct.slot_node*> [#uses=2]
  br label %102

; <label>:123                                     ; preds = %102
  %124 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %125 = icmp eq i8* %124, null                   ; <i1> [#uses=1]
  br i1 %125, label %126, label %mem_alloc.exit.i39

; <label>:126                                     ; preds = %123
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i39:                               ; preds = %123
  %127 = bitcast i8* %124 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %128 = getelementptr i8* %124, i64 8            ; <i8*> [#uses=1]
  %129 = bitcast i8* %128 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %129
  %130 = getelementptr i8* %124, i64 16           ; <i8*> [#uses=1]
  %131 = bitcast i8* %130 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_class, i32** %131
  %132 = getelementptr i8* %124, i64 24           ; <i8*> [#uses=1]
  %133 = bitcast i8* %132 to i8**                 ; <i8**> [#uses=1]
  store i8* %74, i8** %133
  %134 = bitcast i8* %124 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %134
  %135 = getelementptr %struct.slot_node* %last_node.0.i38, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %127, %struct.slot_node** %135
  br label %object_set_slot.exit40

object_set_slot.exit40:                           ; preds = %mem_alloc.exit.i39, %118, %116, %object_set_delegate.exit.i36
  %136 = load i8** @object_prototype.prototype    ; <i8*> [#uses=5]
  %137 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %138 = icmp eq i8* %137, null                   ; <i1> [#uses=1]
  br i1 %138, label %139, label %140

; <label>:139                                     ; preds = %object_set_slot.exit40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:140                                     ; preds = %object_set_slot.exit40
  %141 = getelementptr i8* %137, i64 12           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %142
  %143 = getelementptr i8* %137, i64 8            ; <i8*> [#uses=1]
  %144 = bitcast i8* %143 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %144
  %145 = getelementptr i8* %137, i64 24           ; <i8*> [#uses=1]
  %146 = bitcast i8* %145 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @object_inspect to i8*), i8** %146
  %147 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %148 = load i32* %144                           ; <i32> [#uses=1]
  %149 = icmp eq i32 %148, 364969966              ; <i1> [#uses=1]
  br i1 %149, label %closure_object.exit10, label %.thread22

.thread22:                                        ; preds = %140
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit10:                            ; preds = %140
  %150 = getelementptr i8* %137, i64 16           ; <i8*> [#uses=1]
  %151 = bitcast i8* %150 to i8**                 ; <i8**> [#uses=1]
  store i8* %147, i8** %151
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_inspect to i64)), i64 4), label %152, label %161

; <label>:152                                     ; preds = %closure_object.exit10
  %153 = icmp eq i8* %136, null                   ; <i1> [#uses=1]
  br i1 %153, label %.thread.i17, label %154

; <label>:154                                     ; preds = %152
  %155 = getelementptr i8* %136, i64 8            ; <i8*> [#uses=1]
  %156 = bitcast i8* %155 to i32*                 ; <i32*> [#uses=1]
  %157 = load i32* %156                           ; <i32> [#uses=1]
  %158 = icmp eq i32 %157, 364969966              ; <i1> [#uses=1]
  br i1 %158, label %object_set_delegate.exit.i18, label %.thread.i17

.thread.i17:                                      ; preds = %154, %152
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i18:                     ; preds = %154
  %159 = getelementptr i8* %136, i64 16           ; <i8*> [#uses=1]
  %160 = bitcast i8* %159 to i8**                 ; <i8**> [#uses=1]
  store i8* %137, i8** %160
  br label %object_set_slot.exit22

; <label>:161                                     ; preds = %closure_object.exit10
  %162 = bitcast i8* %136 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %163 = load %struct.slot_node** %162            ; <%struct.slot_node*> [#uses=2]
  %164 = bitcast i8* %136 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %165

; <label>:165                                     ; preds = %183, %161
  %node.0.i19 = phi %struct.slot_node* [ %163, %161 ], [ %185, %183 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i20 = phi %struct.slot_node* [ %164, %161 ], [ %node.0.i19, %183 ] ; <%struct.slot_node*> [#uses=1]
  %166 = phi %struct.slot_node* [ %185, %183 ], [ %163, %161 ] ; <%struct.slot_node*> [#uses=1]
  %167 = icmp eq %struct.slot_node* %166, null    ; <i1> [#uses=1]
  br i1 %167, label %186, label %168

; <label>:168                                     ; preds = %165
  %169 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 6 ; <i32**> [#uses=1]
  %170 = load i32** %169                          ; <i32*> [#uses=1]
  %171 = ptrtoint i32* %170 to i64                ; <i64> [#uses=1]
  %172 = sub i64 ptrtoint (i32* @__sym_inspect to i64), %171 ; <i64> [#uses=1]
  %173 = icmp ult i64 %172, 4                     ; <i1> [#uses=1]
  br i1 %173, label %174, label %183

; <label>:174                                     ; preds = %168
  %175 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 1 ; <i32*> [#uses=1]
  %176 = load i32* %175                           ; <i32> [#uses=1]
  %177 = and i32 %176, 2                          ; <i32> [#uses=1]
  %178 = icmp eq i32 %177, 0                      ; <i1> [#uses=1]
  br i1 %178, label %181, label %179

; <label>:179                                     ; preds = %174
  %180 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %137, i8** %180
  br label %object_set_slot.exit22

; <label>:181                                     ; preds = %174
  %182 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_inspect) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit22

; <label>:183                                     ; preds = %168
  %184 = getelementptr %struct.slot_node* %node.0.i19, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %185 = load %struct.slot_node** %184            ; <%struct.slot_node*> [#uses=2]
  br label %165

; <label>:186                                     ; preds = %165
  %187 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %188 = icmp eq i8* %187, null                   ; <i1> [#uses=1]
  br i1 %188, label %189, label %mem_alloc.exit.i21

; <label>:189                                     ; preds = %186
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i21:                               ; preds = %186
  %190 = bitcast i8* %187 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %191 = getelementptr i8* %187, i64 8            ; <i8*> [#uses=1]
  %192 = bitcast i8* %191 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %192
  %193 = getelementptr i8* %187, i64 16           ; <i8*> [#uses=1]
  %194 = bitcast i8* %193 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_inspect, i32** %194
  %195 = getelementptr i8* %187, i64 24           ; <i8*> [#uses=1]
  %196 = bitcast i8* %195 to i8**                 ; <i8**> [#uses=1]
  store i8* %137, i8** %196
  %197 = bitcast i8* %187 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %197
  %198 = getelementptr %struct.slot_node* %last_node.0.i20, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %190, %struct.slot_node** %198
  br label %object_set_slot.exit22

object_set_slot.exit22:                           ; preds = %mem_alloc.exit.i21, %181, %179, %object_set_delegate.exit.i18
  %199 = load i8** @object_prototype.prototype    ; <i8*> [#uses=5]
  %200 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %201 = icmp eq i8* %200, null                   ; <i1> [#uses=1]
  br i1 %201, label %202, label %203

; <label>:202                                     ; preds = %object_set_slot.exit22
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:203                                     ; preds = %object_set_slot.exit22
  %204 = getelementptr i8* %200, i64 12           ; <i8*> [#uses=1]
  %205 = bitcast i8* %204 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %205
  %206 = getelementptr i8* %200, i64 8            ; <i8*> [#uses=1]
  %207 = bitcast i8* %206 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %207
  %208 = getelementptr i8* %200, i64 24           ; <i8*> [#uses=1]
  %209 = bitcast i8* %208 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @object_to_s to i8*), i8** %209
  %210 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %211 = load i32* %207                           ; <i32> [#uses=1]
  %212 = icmp eq i32 %211, 364969966              ; <i1> [#uses=1]
  br i1 %212, label %closure_object.exit15, label %.thread23

.thread23:                                        ; preds = %203
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit15:                            ; preds = %203
  %213 = getelementptr i8* %200, i64 16           ; <i8*> [#uses=1]
  %214 = bitcast i8* %213 to i8**                 ; <i8**> [#uses=1]
  store i8* %210, i8** %214
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_to_s to i64)), i64 4), label %215, label %224

; <label>:215                                     ; preds = %closure_object.exit15
  %216 = icmp eq i8* %199, null                   ; <i1> [#uses=1]
  br i1 %216, label %.thread.i2, label %217

; <label>:217                                     ; preds = %215
  %218 = getelementptr i8* %199, i64 8            ; <i8*> [#uses=1]
  %219 = bitcast i8* %218 to i32*                 ; <i32*> [#uses=1]
  %220 = load i32* %219                           ; <i32> [#uses=1]
  %221 = icmp eq i32 %220, 364969966              ; <i1> [#uses=1]
  br i1 %221, label %object_set_delegate.exit.i3, label %.thread.i2

.thread.i2:                                       ; preds = %217, %215
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i3:                      ; preds = %217
  %222 = getelementptr i8* %199, i64 16           ; <i8*> [#uses=1]
  %223 = bitcast i8* %222 to i8**                 ; <i8**> [#uses=1]
  store i8* %200, i8** %223
  br label %object_set_slot.exit7

; <label>:224                                     ; preds = %closure_object.exit15
  %225 = bitcast i8* %199 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %226 = load %struct.slot_node** %225            ; <%struct.slot_node*> [#uses=2]
  %227 = bitcast i8* %199 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %228

; <label>:228                                     ; preds = %246, %224
  %node.0.i4 = phi %struct.slot_node* [ %226, %224 ], [ %248, %246 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i5 = phi %struct.slot_node* [ %227, %224 ], [ %node.0.i4, %246 ] ; <%struct.slot_node*> [#uses=1]
  %229 = phi %struct.slot_node* [ %248, %246 ], [ %226, %224 ] ; <%struct.slot_node*> [#uses=1]
  %230 = icmp eq %struct.slot_node* %229, null    ; <i1> [#uses=1]
  br i1 %230, label %249, label %231

; <label>:231                                     ; preds = %228
  %232 = getelementptr %struct.slot_node* %node.0.i4, i64 0, i32 6 ; <i32**> [#uses=1]
  %233 = load i32** %232                          ; <i32*> [#uses=1]
  %234 = ptrtoint i32* %233 to i64                ; <i64> [#uses=1]
  %235 = sub i64 ptrtoint (i32* @__sym_to_s to i64), %234 ; <i64> [#uses=1]
  %236 = icmp ult i64 %235, 4                     ; <i1> [#uses=1]
  br i1 %236, label %237, label %246

; <label>:237                                     ; preds = %231
  %238 = getelementptr %struct.slot_node* %node.0.i4, i64 0, i32 1 ; <i32*> [#uses=1]
  %239 = load i32* %238                           ; <i32> [#uses=1]
  %240 = and i32 %239, 2                          ; <i32> [#uses=1]
  %241 = icmp eq i32 %240, 0                      ; <i1> [#uses=1]
  br i1 %241, label %244, label %242

; <label>:242                                     ; preds = %237
  %243 = getelementptr %struct.slot_node* %node.0.i4, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %200, i8** %243
  br label %object_set_slot.exit7

; <label>:244                                     ; preds = %237
  %245 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_to_s) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit7

; <label>:246                                     ; preds = %231
  %247 = getelementptr %struct.slot_node* %node.0.i4, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %248 = load %struct.slot_node** %247            ; <%struct.slot_node*> [#uses=2]
  br label %228

; <label>:249                                     ; preds = %228
  %250 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %251 = icmp eq i8* %250, null                   ; <i1> [#uses=1]
  br i1 %251, label %252, label %mem_alloc.exit.i6

; <label>:252                                     ; preds = %249
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i6:                                ; preds = %249
  %253 = bitcast i8* %250 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %254 = getelementptr i8* %250, i64 8            ; <i8*> [#uses=1]
  %255 = bitcast i8* %254 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %255
  %256 = getelementptr i8* %250, i64 16           ; <i8*> [#uses=1]
  %257 = bitcast i8* %256 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_to_s, i32** %257
  %258 = getelementptr i8* %250, i64 24           ; <i8*> [#uses=1]
  %259 = bitcast i8* %258 to i8**                 ; <i8**> [#uses=1]
  store i8* %200, i8** %259
  %260 = bitcast i8* %250 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %260
  %261 = getelementptr %struct.slot_node* %last_node.0.i5, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %253, %struct.slot_node** %261
  br label %object_set_slot.exit7

object_set_slot.exit7:                            ; preds = %mem_alloc.exit.i6, %244, %242, %object_set_delegate.exit.i3
  %262 = load i8** @object_prototype.prototype    ; <i8*> [#uses=5]
  %263 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %264 = icmp eq i8* %263, null                   ; <i1> [#uses=1]
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %object_set_slot.exit7
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:266                                     ; preds = %object_set_slot.exit7
  %267 = getelementptr i8* %263, i64 12           ; <i8*> [#uses=1]
  %268 = bitcast i8* %267 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %268
  %269 = getelementptr i8* %263, i64 8            ; <i8*> [#uses=1]
  %270 = bitcast i8* %269 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %270
  %271 = getelementptr i8* %263, i64 24           ; <i8*> [#uses=1]
  %272 = bitcast i8* %271 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @object_dotdot to i8*), i8** %272
  %273 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %274 = load i32* %270                           ; <i32> [#uses=1]
  %275 = icmp eq i32 %274, 364969966              ; <i1> [#uses=1]
  br i1 %275, label %closure_object.exit20, label %.thread24

.thread24:                                        ; preds = %266
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit20:                            ; preds = %266
  %276 = getelementptr i8* %263, i64 16           ; <i8*> [#uses=1]
  %277 = bitcast i8* %276 to i8**                 ; <i8**> [#uses=1]
  store i8* %273, i8** %277
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_dotdot to i64)), i64 4), label %278, label %287

; <label>:278                                     ; preds = %closure_object.exit20
  %279 = icmp eq i8* %262, null                   ; <i1> [#uses=1]
  br i1 %279, label %.thread.i, label %280

; <label>:280                                     ; preds = %278
  %281 = getelementptr i8* %262, i64 8            ; <i8*> [#uses=1]
  %282 = bitcast i8* %281 to i32*                 ; <i32*> [#uses=1]
  %283 = load i32* %282                           ; <i32> [#uses=1]
  %284 = icmp eq i32 %283, 364969966              ; <i1> [#uses=1]
  br i1 %284, label %object_set_delegate.exit.i, label %.thread.i

.thread.i:                                        ; preds = %280, %278
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i:                       ; preds = %280
  %285 = getelementptr i8* %262, i64 16           ; <i8*> [#uses=1]
  %286 = bitcast i8* %285 to i8**                 ; <i8**> [#uses=1]
  store i8* %263, i8** %286
  br label %object_set_slot.exit

; <label>:287                                     ; preds = %closure_object.exit20
  %288 = bitcast i8* %262 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %289 = load %struct.slot_node** %288            ; <%struct.slot_node*> [#uses=2]
  %290 = bitcast i8* %262 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %291

; <label>:291                                     ; preds = %309, %287
  %node.0.i = phi %struct.slot_node* [ %289, %287 ], [ %311, %309 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i = phi %struct.slot_node* [ %290, %287 ], [ %node.0.i, %309 ] ; <%struct.slot_node*> [#uses=1]
  %292 = phi %struct.slot_node* [ %311, %309 ], [ %289, %287 ] ; <%struct.slot_node*> [#uses=1]
  %293 = icmp eq %struct.slot_node* %292, null    ; <i1> [#uses=1]
  br i1 %293, label %312, label %294

; <label>:294                                     ; preds = %291
  %295 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %296 = load i32** %295                          ; <i32*> [#uses=1]
  %297 = ptrtoint i32* %296 to i64                ; <i64> [#uses=1]
  %298 = sub i64 ptrtoint (i32* @__sym_dotdot to i64), %297 ; <i64> [#uses=1]
  %299 = icmp ult i64 %298, 4                     ; <i1> [#uses=1]
  br i1 %299, label %300, label %309

; <label>:300                                     ; preds = %294
  %301 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %302 = load i32* %301                           ; <i32> [#uses=1]
  %303 = and i32 %302, 2                          ; <i32> [#uses=1]
  %304 = icmp eq i32 %303, 0                      ; <i1> [#uses=1]
  br i1 %304, label %307, label %305

; <label>:305                                     ; preds = %300
  %306 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %263, i8** %306
  br label %object_set_slot.exit

; <label>:307                                     ; preds = %300
  %308 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_dotdot) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit

; <label>:309                                     ; preds = %294
  %310 = getelementptr %struct.slot_node* %node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %311 = load %struct.slot_node** %310            ; <%struct.slot_node*> [#uses=2]
  br label %291

; <label>:312                                     ; preds = %291
  %313 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %314 = icmp eq i8* %313, null                   ; <i1> [#uses=1]
  br i1 %314, label %315, label %mem_alloc.exit.i

; <label>:315                                     ; preds = %312
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i:                                 ; preds = %312
  %316 = bitcast i8* %313 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %317 = getelementptr i8* %313, i64 8            ; <i8*> [#uses=1]
  %318 = bitcast i8* %317 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %318
  %319 = getelementptr i8* %313, i64 16           ; <i8*> [#uses=1]
  %320 = bitcast i8* %319 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_dotdot, i32** %320
  %321 = getelementptr i8* %313, i64 24           ; <i8*> [#uses=1]
  %322 = bitcast i8* %321 to i8**                 ; <i8**> [#uses=1]
  store i8* %263, i8** %322
  %323 = bitcast i8* %313 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %323
  %324 = getelementptr %struct.slot_node* %last_node.0.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %316, %struct.slot_node** %324
  br label %object_set_slot.exit

object_set_slot.exit:                             ; preds = %mem_alloc.exit.i, %307, %305, %object_set_delegate.exit.i, %3
  %325 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @object_prototype_m) nounwind ; <i32> [#uses=0]
  %.pre = load i8** @object_prototype.prototype   ; <i8*> [#uses=1]
  ret i8* %.pre

; <label>:326                                     ; preds = %0
  ret i8* %1
}

define internal i8* @object_clone(i8* %self, i8* nocapture %closure, i8* %args) nounwind {
; <label>:0
  %1 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i32*                     ; <i32*> [#uses=1]
  %3 = load i32* %2                               ; <i32> [#uses=3]
  %4 = and i32 %3, 512                            ; <i32> [#uses=1]
  %5 = icmp eq i32 %4, 0                          ; <i1> [#uses=1]
  br i1 %5, label %6, label %._crit_edge

; <label>:6                                       ; preds = %0
  %7 = and i32 %3, 256                            ; <i32> [#uses=1]
  %8 = icmp eq i32 %7, 0                          ; <i1> [#uses=1]
  %storemerge1.i = select i1 %8, i64 24, i64 32   ; <i64> [#uses=1]
  %9 = tail call i8* @GC_debug_malloc(i64 %storemerge1.i, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %10 = icmp eq i8* %9, null                      ; <i1> [#uses=1]
  br i1 %10, label %11, label %object_alloc.exit

; <label>:11                                      ; preds = %6
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

object_alloc.exit:                                ; preds = %6
  %12 = getelementptr i8* %9, i64 12              ; <i8*> [#uses=1]
  %13 = bitcast i8* %12 to i32*                   ; <i32*> [#uses=1]
  store i32 %3, i32* %13
  %14 = getelementptr i8* %9, i64 8               ; <i8*> [#uses=1]
  %15 = bitcast i8* %14 to i32*                   ; <i32*> [#uses=2]
  store i32 364969966, i32* %15
  %16 = tail call fastcc i8* @array_object(i32 0) ; <i8*> [#uses=0]
  %17 = icmp eq i8* %self, null                   ; <i1> [#uses=1]
  br i1 %17, label %.thread, label %18

; <label>:18                                      ; preds = %object_alloc.exit
  %19 = getelementptr i8* %self, i64 8            ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i32*                   ; <i32*> [#uses=1]
  %21 = load i32* %20                             ; <i32> [#uses=1]
  %22 = icmp eq i32 %21, 364969966                ; <i1> [#uses=1]
  br i1 %22, label %object_get_delegate.exit, label %.thread

.thread:                                          ; preds = %18, %object_alloc.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_get_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 201, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_get_delegate.exit:                         ; preds = %18
  %23 = getelementptr i8* %self, i64 16           ; <i8*> [#uses=1]
  %24 = bitcast i8* %23 to i8**                   ; <i8**> [#uses=1]
  %25 = load i8** %24                             ; <i8*> [#uses=2]
  %26 = icmp eq i8* %25, null                     ; <i1> [#uses=1]
  br i1 %26, label %object_get_delegate.exit._crit_edge, label %27

; <label>:27                                      ; preds = %object_get_delegate.exit
  %28 = tail call fastcc i8* @object_exec(i8* %25, i32* @__sym_clone, i8* %args) ; <i8*> [#uses=1]
  %29 = load i32* %15                             ; <i32> [#uses=1]
  %30 = icmp eq i32 %29, 364969966                ; <i1> [#uses=1]
  br i1 %30, label %object_set_delegate.exit, label %.thread3

.thread3:                                         ; preds = %27
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit:                         ; preds = %27
  %31 = getelementptr i8* %9, i64 16              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  store i8* %28, i8** %32
  br label %object_get_delegate.exit._crit_edge

object_get_delegate.exit._crit_edge:              ; preds = %object_set_delegate.exit, %object_get_delegate.exit
  %33 = bitcast i8* %self to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %storemerge15 = load %struct.slot_node** %33    ; <%struct.slot_node*> [#uses=2]
  %34 = icmp eq %struct.slot_node* %storemerge15, null ; <i1> [#uses=1]
  br i1 %34, label %._crit_edge, label %bb.nph

bb.nph:                                           ; preds = %51, %object_get_delegate.exit._crit_edge
  %storemerge16 = phi %struct.slot_node* [ %storemerge1, %51 ], [ %storemerge15, %object_get_delegate.exit._crit_edge ] ; <%struct.slot_node*> [#uses=6]
  %35 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 1 ; <i32*> [#uses=2]
  %36 = load i32* %35                             ; <i32> [#uses=2]
  %37 = and i32 %36, 4                            ; <i32> [#uses=1]
  %38 = icmp eq i32 %37, 0                        ; <i1> [#uses=1]
  br i1 %38, label %44, label %39

; <label>:39                                      ; preds = %bb.nph
  %40 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 6 ; <i32**> [#uses=1]
  %41 = load i32** %40                            ; <i32*> [#uses=1]
  %42 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 7 ; <i8**> [#uses=1]
  %43 = load i8** %42                             ; <i8*> [#uses=1]
  tail call fastcc void @object_set_slot(i8* %9, i32* %41, i8* %43, i32 %36)
  br label %51

; <label>:44                                      ; preds = %bb.nph
  %45 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 7 ; <i8**> [#uses=1]
  %46 = load i8** %45                             ; <i8*> [#uses=1]
  %47 = tail call fastcc i8* @object_exec(i8* %46, i32* @__sym_clone, i8* %args) ; <i8*> [#uses=1]
  %48 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 6 ; <i32**> [#uses=1]
  %49 = load i32** %48                            ; <i32*> [#uses=1]
  %50 = load i32* %35                             ; <i32> [#uses=1]
  tail call fastcc void @object_set_slot(i8* %9, i32* %49, i8* %47, i32 %50)
  br label %51

; <label>:51                                      ; preds = %44, %39
  %52 = getelementptr %struct.slot_node* %storemerge16, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %storemerge1 = load %struct.slot_node** %52     ; <%struct.slot_node*> [#uses=2]
  %53 = icmp eq %struct.slot_node* %storemerge1, null ; <i1> [#uses=1]
  br i1 %53, label %._crit_edge, label %bb.nph

._crit_edge:                                      ; preds = %51, %object_get_delegate.exit._crit_edge, %0
  %storemerge = phi i8* [ %self, %0 ], [ %9, %object_get_delegate.exit._crit_edge ], [ %9, %51 ] ; <i8*> [#uses=1]
  ret i8* %storemerge
}

define internal i8* @object_class(i8* nocapture %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = tail call fastcc i8* @string_object(i8* getelementptr inbounds ([7 x i8]* @"\01LC27", i64 0, i64 0)) ; <i8*> [#uses=1]
  ret i8* %1
}

define internal i8* @object_inspect(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
; <label>:0
  %slot_flags.i = alloca [64 x i8], align 1       ; <[64 x i8]*> [#uses=2]
  %header_flags = alloca [256 x i8], align 1      ; <[256 x i8]*> [#uses=2]
  %addr_buf = alloca [64 x i8], align 1           ; <[64 x i8]*> [#uses=1]
  %buffer = alloca [128 x i8], align 1            ; <[128 x i8]*> [#uses=3]
  %1 = bitcast i8* %self to %struct.slot_node**   ; <%struct.slot_node**> [#uses=3]
  %2 = load %struct.slot_node** %1                ; <%struct.slot_node*> [#uses=2]
  %3 = getelementptr [256 x i8]* %header_flags, i64 0, i64 0 ; <i8*> [#uses=15]
  %4 = getelementptr i8* %self, i64 12            ; <i8*> [#uses=1]
  %5 = bitcast i8* %4 to i32*                     ; <i32*> [#uses=5]
  call void @llvm.memset.i64(i8* %3, i8 0, i64 256, i32 1)
  %6 = load i32* %5                               ; <i32> [#uses=3]
  %7 = and i32 %6, 256                            ; <i32> [#uses=1]
  %8 = icmp eq i32 %7, 0                          ; <i1> [#uses=1]
  br i1 %8, label %._crit_edge, label %9

; <label>:9                                       ; preds = %0
  %10 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([14 x i8]* @"\01LC79", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  %.pre = load i32* %5                            ; <i32> [#uses=2]
  br label %._crit_edge

._crit_edge:                                      ; preds = %9, %0
  %.rle19 = phi i32 [ %.pre, %9 ], [ %6, %0 ]     ; <i32> [#uses=1]
  %11 = phi i32 [ %.pre, %9 ], [ %6, %0 ]         ; <i32> [#uses=1]
  %12 = and i32 %11, 512                          ; <i32> [#uses=1]
  %13 = icmp eq i32 %12, 0                        ; <i1> [#uses=1]
  br i1 %13, label %._crit_edge4, label %14

; <label>:14                                      ; preds = %._crit_edge
  %15 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([11 x i8]* @"\01LC180", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  %.pre18 = load i32* %5                          ; <i32> [#uses=1]
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %14, %._crit_edge
  %16 = phi i32 [ %.pre18, %14 ], [ %.rle19, %._crit_edge ] ; <i32> [#uses=1]
  %17 = and i32 %16, 255                          ; <i32> [#uses=1]
  switch i32 %17, label %._crit_edge5 [
    i32 1, label %18
    i32 2, label %20
    i32 3, label %22
    i32 4, label %24
    i32 5, label %26
    i32 6, label %28
    i32 7, label %30
    i32 8, label %32
  ]

; <label>:18                                      ; preds = %._crit_edge4
  %19 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([10 x i8]* @"\01LC281", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:20                                      ; preds = %._crit_edge4
  %21 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([13 x i8]* @"\01LC382", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:22                                      ; preds = %._crit_edge4
  %23 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([12 x i8]* @"\01LC483", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:24                                      ; preds = %._crit_edge4
  %25 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([13 x i8]* @"\01LC584", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:26                                      ; preds = %._crit_edge4
  %27 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([11 x i8]* @"\01LC685", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:28                                      ; preds = %._crit_edge4
  %29 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([10 x i8]* @"\01LC786", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:30                                      ; preds = %._crit_edge4
  %31 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([11 x i8]* @"\01LC887", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

; <label>:32                                      ; preds = %._crit_edge4
  %33 = call i8* @__strcat_chk(i8* %3, i8* getelementptr inbounds ([10 x i8]* @"\01LC988", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge5

._crit_edge5:                                     ; preds = %32, %30, %28, %26, %24, %22, %20, %18, %._crit_edge4
  %34 = load i8* %3                               ; <i8> [#uses=1]
  %35 = icmp eq i8 %34, 0                         ; <i1> [#uses=1]
  br i1 %35, label %40, label %36

; <label>:36                                      ; preds = %._crit_edge5
  %37 = call i64 @strlen(i8* %3) nounwind         ; <i64> [#uses=1]
  %38 = add i64 %37, -1                           ; <i64> [#uses=1]
  %39 = getelementptr [256 x i8]* %header_flags, i64 0, i64 %38 ; <i8*> [#uses=1]
  store i8 0, i8* %39
  br label %42

; <label>:40                                      ; preds = %._crit_edge5
  %41 = call i8* @__strcpy_chk(i8* %3, i8* getelementptr inbounds ([2 x i8]* @"\01LC1089", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %42

; <label>:42                                      ; preds = %40, %36
  %43 = getelementptr [64 x i8]* %addr_buf, i64 0, i64 0 ; <i8*> [#uses=5]
  call void @llvm.memset.i64(i8* %43, i8 0, i64 64, i32 1)
  %44 = call i32 (i8*, i64, i32, i64, i8*, ...)* @__snprintf_chk(i8* %43, i64 64, i32 0, i64 -1, i8* getelementptr inbounds ([3 x i8]* @"\01LC1190", i64 0, i64 0), i8* %self) nounwind ; <i32> [#uses=0]
  %45 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([7 x i8]* @"\01LC1291", i64 0, i64 0), i8* %43) nounwind ; <i32> [#uses=0]
  %46 = call i64 @strlen(i8* %43) nounwind        ; <i64> [#uses=1]
  %47 = icmp eq i64 %46, 76                       ; <i1> [#uses=1]
  br i1 %47, label %._crit_edge20, label %bb.nph15

bb.nph15:                                         ; preds = %bb.nph15, %42
  %storemerge13 = phi i32 [ %48, %bb.nph15 ], [ 0, %42 ] ; <i32> [#uses=1]
  %putchar = call i32 @putchar(i32 61) nounwind   ; <i32> [#uses=0]
  %48 = add i32 %storemerge13, 1                  ; <i32> [#uses=2]
  %phitmp = sext i32 %48 to i64                   ; <i64> [#uses=1]
  %49 = call i64 @strlen(i8* %43) nounwind        ; <i64> [#uses=1]
  %50 = sub i64 76, %49                           ; <i64> [#uses=1]
  %51 = icmp ult i64 %phitmp, %50                 ; <i1> [#uses=1]
  br i1 %51, label %bb.nph15, label %._crit_edge20

._crit_edge20:                                    ; preds = %bb.nph15, %42
  %putchar1 = call i32 @putchar(i32 10) nounwind  ; <i32> [#uses=0]
  %52 = getelementptr i8* %self, i64 8            ; <i8*> [#uses=1]
  %53 = bitcast i8* %52 to i32*                   ; <i32*> [#uses=1]
  %54 = load i32* %53                             ; <i32> [#uses=1]
  %55 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([18 x i8]* @"\01LC1594", i64 0, i64 0), i32 %54) nounwind ; <i32> [#uses=0]
  %56 = load i32* %5                              ; <i32> [#uses=1]
  %57 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([23 x i8]* @"\01LC1695", i64 0, i64 0), i32 %56, i8* %3) nounwind ; <i32> [#uses=0]
  %58 = getelementptr i8* %self, i64 16           ; <i8*> [#uses=1]
  %59 = bitcast i8* %58 to i8**                   ; <i8**> [#uses=3]
  %60 = load i8** %59                             ; <i8*> [#uses=1]
  %61 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @"\01LC1796", i64 0, i64 0), i8* %60) nounwind ; <i32> [#uses=0]
  %62 = load %struct.slot_node** %1               ; <%struct.slot_node*> [#uses=1]
  %63 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([19 x i8]* @"\01LC1897", i64 0, i64 0), %struct.slot_node* %62) nounwind ; <i32> [#uses=0]
  %64 = load i32* %5                              ; <i32> [#uses=1]
  %65 = and i32 %64, 256                          ; <i32> [#uses=1]
  %66 = icmp eq i32 %65, 0                        ; <i1> [#uses=1]
  br i1 %66, label %._crit_edge6, label %67

; <label>:67                                      ; preds = %._crit_edge20
  %68 = getelementptr i8* %self, i64 24           ; <i8*> [#uses=1]
  %69 = bitcast i8* %68 to i8**                   ; <i8**> [#uses=1]
  %70 = load i8** %69                             ; <i8*> [#uses=1]
  %71 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([17 x i8]* @"\01LC1998", i64 0, i64 0), i8* %70) nounwind ; <i32> [#uses=0]
  br label %._crit_edge6

._crit_edge6:                                     ; preds = %67, %._crit_edge20
  %72 = load %struct.slot_node** %1               ; <%struct.slot_node*> [#uses=1]
  %73 = icmp eq %struct.slot_node* %72, null      ; <i1> [#uses=1]
  br i1 %73, label %._crit_edge7, label %74

; <label>:74                                      ; preds = %._crit_edge6
  %putchar2 = call i32 @putchar(i32 10) nounwind  ; <i32> [#uses=0]
  %75 = call i32 @puts(i8* getelementptr inbounds ([51 x i8]* @"\01LC20", i64 0, i64 0)) nounwind ; <i32> [#uses=0]
  br label %._crit_edge7

._crit_edge7:                                     ; preds = %74, %._crit_edge6
  %76 = getelementptr [128 x i8]* %buffer, i64 0, i64 0 ; <i8*> [#uses=7]
  %77 = getelementptr [128 x i8]* %buffer, i64 0, i64 30 ; <i8*> [#uses=2]
  %78 = getelementptr [64 x i8]* %slot_flags.i, i64 0, i64 0 ; <i8*> [#uses=7]
  %79 = icmp eq %struct.slot_node* %2, null       ; <i1> [#uses=1]
  br i1 %79, label %._crit_edge7._crit_edge, label %bb.nph

bb.nph:                                           ; preds = %table_format.exit, %._crit_edge7
  %node.011 = phi %struct.slot_node* [ %114, %table_format.exit ], [ %2, %._crit_edge7 ] ; <%struct.slot_node*> [#uses=4]
  %80 = getelementptr %struct.slot_node* %node.011, i64 0, i32 6 ; <i32**> [#uses=1]
  call void @llvm.memset.i64(i8* %76, i8 0, i64 128, i32 1)
  %81 = load i32** %80                            ; <i32*> [#uses=1]
  %82 = getelementptr %struct.slot_node* %node.011, i64 0, i32 1 ; <i32*> [#uses=1]
  %83 = load i32* %82                             ; <i32> [#uses=3]
  %84 = getelementptr %struct.slot_node* %node.011, i64 0, i32 7 ; <i8**> [#uses=1]
  %85 = load i8** %84                             ; <i8*> [#uses=1]
  %86 = call i8* @__memset_chk(i8* %76, i32 32, i64 30, i64 -1) nounwind ; <i8*> [#uses=0]
  store i8 0, i8* %77
  %87 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %76, i32 0, i64 -1, i8* getelementptr inbounds ([3 x i8]* @"\01LC1190", i64 0, i64 0), i32* %81) nounwind ; <i32> [#uses=0]
  %88 = call i64 @strlen(i8* %76) nounwind        ; <i64> [#uses=1]
  %89 = getelementptr [128 x i8]* %buffer, i64 0, i64 %88 ; <i8*> [#uses=1]
  store i8 32, i8* %89
  %90 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %77, i32 0, i64 -1, i8* getelementptr inbounds ([12 x i8]* @"\01LC22", i64 0, i64 0), i8* %85, i32 %83) nounwind ; <i32> [#uses=0]
  %91 = and i32 %83, 2                            ; <i32> [#uses=1]
  %92 = icmp eq i32 %91, 0                        ; <i1> [#uses=1]
  call void @llvm.memset.i64(i8* %78, i8 0, i64 64, i32 1)
  br i1 %92, label %._crit_edge8, label %93

; <label>:93                                      ; preds = %bb.nph
  %94 = call i8* @__strcat_chk(i8* %78, i8* getelementptr inbounds ([14 x i8]* @"\01LC23", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %93, %bb.nph
  %95 = and i32 %83, 4                            ; <i32> [#uses=1]
  %96 = icmp eq i32 %95, 0                        ; <i1> [#uses=1]
  br i1 %96, label %._crit_edge9, label %97

; <label>:97                                      ; preds = %._crit_edge8
  %98 = call i8* @__strcat_chk(i8* %78, i8* getelementptr inbounds ([15 x i8]* @"\01LC24", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %97, %._crit_edge8
  %99 = call i64 @strlen(i8* %78) nounwind        ; <i64> [#uses=1]
  %100 = add i64 %99, -1                          ; <i64> [#uses=1]
  %101 = getelementptr [64 x i8]* %slot_flags.i, i64 0, i64 %100 ; <i8*> [#uses=2]
  %102 = load i8* %101                            ; <i8> [#uses=1]
  %103 = icmp eq i8 %102, 124                     ; <i1> [#uses=1]
  br i1 %103, label %104, label %._crit_edge10

; <label>:104                                     ; preds = %._crit_edge9
  store i8 0, i8* %101
  br label %._crit_edge10

._crit_edge10:                                    ; preds = %104, %._crit_edge9
  %105 = load i8* %78                             ; <i8> [#uses=1]
  %106 = icmp eq i8 %105, 0                       ; <i1> [#uses=1]
  br i1 %106, label %107, label %table_format.exit

; <label>:107                                     ; preds = %._crit_edge10
  %108 = call i8* @__strcat_chk(i8* %78, i8* getelementptr inbounds ([2 x i8]* @"\01LC1089", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  br label %table_format.exit

table_format.exit:                                ; preds = %107, %._crit_edge10
  %109 = call i8* @__strcat_chk(i8* %76, i8* %78, i64 -1) nounwind ; <i8*> [#uses=0]
  %110 = call i8* @__strcat_chk(i8* %76, i8* getelementptr inbounds ([2 x i8]* @"\01LC25", i64 0, i64 0), i64 -1) nounwind ; <i8*> [#uses=0]
  %111 = call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([4 x i8]* @"\01LC21", i64 0, i64 0)) nounwind ; <i32> [#uses=0]
  %112 = call i32 @puts(i8* %76) nounwind         ; <i32> [#uses=0]
  %113 = getelementptr %struct.slot_node* %node.011, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %114 = load %struct.slot_node** %113            ; <%struct.slot_node*> [#uses=2]
  %phitmp17 = icmp eq %struct.slot_node* %114, null ; <i1> [#uses=1]
  br i1 %phitmp17, label %._crit_edge7._crit_edge, label %bb.nph

._crit_edge7._crit_edge:                          ; preds = %table_format.exit, %._crit_edge7
  %115 = load i8** %59                            ; <i8*> [#uses=1]
  %116 = icmp eq i8* %115, null                   ; <i1> [#uses=1]
  br i1 %116, label %121, label %117

; <label>:117                                     ; preds = %._crit_edge7._crit_edge
  %putchar3 = call i32 @putchar(i32 10) nounwind  ; <i32> [#uses=0]
  %118 = load i8** %59                            ; <i8*> [#uses=1]
  %119 = call fastcc i8* @array_object(i32 0)     ; <i8*> [#uses=1]
  %120 = call fastcc i8* @object_exec(i8* %118, i32* @__sym_inspect, i8* %119) ; <i8*> [#uses=0]
  ret i8* %self

; <label>:121                                     ; preds = %._crit_edge7._crit_edge
  ret i8* %self
}

define internal i8* @object_to_s(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %buffer = alloca [32 x i8], align 1             ; <[32 x i8]*> [#uses=1]
  %1 = getelementptr [32 x i8]* %buffer, i64 0, i64 0 ; <i8*> [#uses=2]
  %2 = call i32 (i8*, i32, i64, i8*, ...)* @__sprintf_chk(i8* %1, i32 0, i64 -1, i8* getelementptr inbounds ([13 x i8]* @"\01LC2699", i64 0, i64 0), i8* %self) nounwind ; <i32> [#uses=0]
  %3 = call fastcc i8* @string_object(i8* %1)     ; <i8*> [#uses=1]
  ret i8* %3
}

define internal i8* @object_dotdot(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=3]
  %16 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=11]
  %17 = icmp eq i8* %16, null                     ; <i1> [#uses=1]
  br i1 %17, label %18, label %object_alloc.exit.i

; <label>:18                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

object_alloc.exit.i:                              ; preds = %array_get_elementC.exit
  %19 = getelementptr i8* %16, i64 12             ; <i8*> [#uses=1]
  %20 = bitcast i8* %19 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %20
  %21 = getelementptr i8* %16, i64 8              ; <i8*> [#uses=1]
  %22 = bitcast i8* %21 to i32*                   ; <i32*> [#uses=3]
  store i32 364969966, i32* %22
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym___start to i64)), i64 4), label %23, label %26

; <label>:23                                      ; preds = %object_alloc.exit.i
  %24 = getelementptr i8* %16, i64 16             ; <i8*> [#uses=1]
  %25 = bitcast i8* %24 to i8**                   ; <i8**> [#uses=1]
  store i8* %self, i8** %25
  br label %object_set_slot.exit8.i

; <label>:26                                      ; preds = %object_alloc.exit.i
  %27 = bitcast i8* %16 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %28 = load %struct.slot_node** %27              ; <%struct.slot_node*> [#uses=2]
  %29 = bitcast i8* %16 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %30

; <label>:30                                      ; preds = %48, %26
  %node.0.i5.i = phi %struct.slot_node* [ %28, %26 ], [ %50, %48 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i6.i = phi %struct.slot_node* [ %29, %26 ], [ %node.0.i5.i, %48 ] ; <%struct.slot_node*> [#uses=1]
  %31 = phi %struct.slot_node* [ %50, %48 ], [ %28, %26 ] ; <%struct.slot_node*> [#uses=1]
  %32 = icmp eq %struct.slot_node* %31, null      ; <i1> [#uses=1]
  br i1 %32, label %51, label %33

; <label>:33                                      ; preds = %30
  %34 = getelementptr %struct.slot_node* %node.0.i5.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %35 = load i32** %34                            ; <i32*> [#uses=1]
  %36 = ptrtoint i32* %35 to i64                  ; <i64> [#uses=1]
  %37 = sub i64 ptrtoint (i32* @__sym___start to i64), %36 ; <i64> [#uses=1]
  %38 = icmp ult i64 %37, 4                       ; <i1> [#uses=1]
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %33
  %40 = getelementptr %struct.slot_node* %node.0.i5.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %41 = load i32* %40                             ; <i32> [#uses=1]
  %42 = and i32 %41, 2                            ; <i32> [#uses=1]
  %43 = icmp eq i32 %42, 0                        ; <i1> [#uses=1]
  br i1 %43, label %46, label %44

; <label>:44                                      ; preds = %39
  %45 = getelementptr %struct.slot_node* %node.0.i5.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %self, i8** %45
  br label %object_set_slot.exit8.i

; <label>:46                                      ; preds = %39
  %47 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym___start) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit8.i

; <label>:48                                      ; preds = %33
  %49 = getelementptr %struct.slot_node* %node.0.i5.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %50 = load %struct.slot_node** %49              ; <%struct.slot_node*> [#uses=2]
  br label %30

; <label>:51                                      ; preds = %30
  %52 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %53 = icmp eq i8* %52, null                     ; <i1> [#uses=1]
  br i1 %53, label %54, label %mem_alloc.exit.i7.i

; <label>:54                                      ; preds = %51
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i7.i:                              ; preds = %51
  %55 = bitcast i8* %52 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %56 = getelementptr i8* %52, i64 8              ; <i8*> [#uses=1]
  %57 = bitcast i8* %56 to i32*                   ; <i32*> [#uses=1]
  store i32 0, i32* %57
  %58 = getelementptr i8* %52, i64 16             ; <i8*> [#uses=1]
  %59 = bitcast i8* %58 to i32**                  ; <i32**> [#uses=1]
  store i32* @__sym___start, i32** %59
  %60 = getelementptr i8* %52, i64 24             ; <i8*> [#uses=1]
  %61 = bitcast i8* %60 to i8**                   ; <i8**> [#uses=1]
  store i8* %self, i8** %61
  %62 = bitcast i8* %52 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %62
  %63 = getelementptr %struct.slot_node* %last_node.0.i6.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %55, %struct.slot_node** %63
  br label %object_set_slot.exit8.i

object_set_slot.exit8.i:                          ; preds = %mem_alloc.exit.i7.i, %46, %44, %23
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym___end to i64)), i64 4), label %64, label %69

; <label>:64                                      ; preds = %object_set_slot.exit8.i
  %65 = load i32* %22                             ; <i32> [#uses=1]
  %66 = icmp eq i32 %65, 364969966                ; <i1> [#uses=1]
  br i1 %66, label %object_set_delegate.exit.i13.i, label %.thread.i12.i

.thread.i12.i:                                    ; preds = %64
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i13.i:                   ; preds = %64
  %67 = getelementptr i8* %16, i64 16             ; <i8*> [#uses=1]
  %68 = bitcast i8* %67 to i8**                   ; <i8**> [#uses=1]
  store i8* %storemerge.i, i8** %68
  br label %object_set_slot.exit17.i

; <label>:69                                      ; preds = %object_set_slot.exit8.i
  %70 = bitcast i8* %16 to %struct.slot_node**    ; <%struct.slot_node**> [#uses=1]
  %71 = load %struct.slot_node** %70              ; <%struct.slot_node*> [#uses=2]
  %72 = bitcast i8* %16 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  br label %73

; <label>:73                                      ; preds = %91, %69
  %node.0.i14.i = phi %struct.slot_node* [ %71, %69 ], [ %93, %91 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i15.i = phi %struct.slot_node* [ %72, %69 ], [ %node.0.i14.i, %91 ] ; <%struct.slot_node*> [#uses=1]
  %74 = phi %struct.slot_node* [ %93, %91 ], [ %71, %69 ] ; <%struct.slot_node*> [#uses=1]
  %75 = icmp eq %struct.slot_node* %74, null      ; <i1> [#uses=1]
  br i1 %75, label %94, label %76

; <label>:76                                      ; preds = %73
  %77 = getelementptr %struct.slot_node* %node.0.i14.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %78 = load i32** %77                            ; <i32*> [#uses=1]
  %79 = ptrtoint i32* %78 to i64                  ; <i64> [#uses=1]
  %80 = sub i64 ptrtoint (i32* @__sym___end to i64), %79 ; <i64> [#uses=1]
  %81 = icmp ult i64 %80, 4                       ; <i1> [#uses=1]
  br i1 %81, label %82, label %91

; <label>:82                                      ; preds = %76
  %83 = getelementptr %struct.slot_node* %node.0.i14.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %84 = load i32* %83                             ; <i32> [#uses=1]
  %85 = and i32 %84, 2                            ; <i32> [#uses=1]
  %86 = icmp eq i32 %85, 0                        ; <i1> [#uses=1]
  br i1 %86, label %89, label %87

; <label>:87                                      ; preds = %82
  %88 = getelementptr %struct.slot_node* %node.0.i14.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %storemerge.i, i8** %88
  br label %object_set_slot.exit17.i

; <label>:89                                      ; preds = %82
  %90 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym___end) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit17.i

; <label>:91                                      ; preds = %76
  %92 = getelementptr %struct.slot_node* %node.0.i14.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %93 = load %struct.slot_node** %92              ; <%struct.slot_node*> [#uses=2]
  br label %73

; <label>:94                                      ; preds = %73
  %95 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %96 = icmp eq i8* %95, null                     ; <i1> [#uses=1]
  br i1 %96, label %97, label %mem_alloc.exit.i16.i

; <label>:97                                      ; preds = %94
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i16.i:                             ; preds = %94
  %98 = bitcast i8* %95 to %struct.slot_node*     ; <%struct.slot_node*> [#uses=1]
  %99 = getelementptr i8* %95, i64 8              ; <i8*> [#uses=1]
  %100 = bitcast i8* %99 to i32*                  ; <i32*> [#uses=1]
  store i32 0, i32* %100
  %101 = getelementptr i8* %95, i64 16            ; <i8*> [#uses=1]
  %102 = bitcast i8* %101 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym___end, i32** %102
  %103 = getelementptr i8* %95, i64 24            ; <i8*> [#uses=1]
  %104 = bitcast i8* %103 to i8**                 ; <i8**> [#uses=1]
  store i8* %storemerge.i, i8** %104
  %105 = bitcast i8* %95 to %struct.slot_node**   ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %105
  %106 = getelementptr %struct.slot_node* %last_node.0.i15.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %98, %struct.slot_node** %106
  br label %object_set_slot.exit17.i

object_set_slot.exit17.i:                         ; preds = %mem_alloc.exit.i16.i, %89, %87, %object_set_delegate.exit.i13.i
  %107 = load i8** @range_prototype.prototype     ; <i8*> [#uses=2]
  %108 = icmp eq i8* %107, null                   ; <i1> [#uses=1]
  br i1 %108, label %109, label %range_prototype.exit.i

; <label>:109                                     ; preds = %object_set_slot.exit17.i
  %110 = tail call i32 @pthread_mutex_lock(%struct._opaque_pthread_attr_t* @range_prototype_m) nounwind ; <i32> [#uses=0]
  %111 = load i8** @range_prototype.prototype     ; <i8*> [#uses=1]
  %112 = icmp eq i8* %111, null                   ; <i1> [#uses=1]
  br i1 %112, label %113, label %object_set_slot.exit.i

; <label>:113                                     ; preds = %109
  %114 = tail call i8* @GC_debug_malloc(i64 24, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 38) nounwind ; <i8*> [#uses=5]
  %115 = icmp eq i8* %114, null                   ; <i1> [#uses=1]
  br i1 %115, label %116, label %117

; <label>:116                                     ; preds = %113
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:117                                     ; preds = %113
  %118 = getelementptr i8* %114, i64 12           ; <i8*> [#uses=1]
  %119 = bitcast i8* %118 to i32*                 ; <i32*> [#uses=1]
  store i32 512, i32* %119
  %120 = getelementptr i8* %114, i64 8            ; <i8*> [#uses=1]
  %121 = bitcast i8* %120 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %121
  store i8* %114, i8** @range_prototype.prototype
  %122 = tail call fastcc i8* @object_prototype() nounwind ; <i8*> [#uses=1]
  %123 = load i32* %121                           ; <i32> [#uses=1]
  %124 = icmp eq i32 %123, 364969966              ; <i1> [#uses=1]
  br i1 %124, label %object_set_delegate.exit.i.i, label %.thread.i

.thread.i:                                        ; preds = %117
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i.i:                     ; preds = %117
  %125 = getelementptr i8* %114, i64 16           ; <i8*> [#uses=1]
  %126 = bitcast i8* %125 to i8**                 ; <i8**> [#uses=1]
  store i8* %122, i8** %126
  %127 = load i8** @range_prototype.prototype     ; <i8*> [#uses=5]
  %128 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 40) nounwind ; <i8*> [#uses=8]
  %129 = icmp eq i8* %128, null                   ; <i1> [#uses=1]
  br i1 %129, label %130, label %131

; <label>:130                                     ; preds = %object_set_delegate.exit.i.i
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:131                                     ; preds = %object_set_delegate.exit.i.i
  %132 = getelementptr i8* %128, i64 12           ; <i8*> [#uses=1]
  %133 = bitcast i8* %132 to i32*                 ; <i32*> [#uses=1]
  store i32 260, i32* %133
  %134 = getelementptr i8* %128, i64 8            ; <i8*> [#uses=1]
  %135 = bitcast i8* %134 to i32*                 ; <i32*> [#uses=2]
  store i32 364969966, i32* %135
  %136 = getelementptr i8* %128, i64 24           ; <i8*> [#uses=1]
  %137 = bitcast i8* %136 to i8**                 ; <i8**> [#uses=1]
  store i8* bitcast (i8* (i8*, i8*, i8*)* @range_each to i8*), i8** %137
  %138 = tail call fastcc i8* @closure_prototype() nounwind ; <i8*> [#uses=1]
  %139 = load i32* %135                           ; <i32> [#uses=1]
  %140 = icmp eq i32 %139, 364969966              ; <i1> [#uses=1]
  br i1 %140, label %closure_object.exit.i.i, label %.thread1.i

.thread1.i:                                       ; preds = %131
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

closure_object.exit.i.i:                          ; preds = %131
  %141 = getelementptr i8* %128, i64 16           ; <i8*> [#uses=1]
  %142 = bitcast i8* %141 to i8**                 ; <i8**> [#uses=1]
  store i8* %138, i8** %142
  br i1 icmp ult (i64 sub (i64 ptrtoint (i32* @__sym_delegate to i64), i64 ptrtoint (i32* @__sym_each to i64)), i64 4), label %143, label %152

; <label>:143                                     ; preds = %closure_object.exit.i.i
  %144 = icmp eq i8* %127, null                   ; <i1> [#uses=1]
  br i1 %144, label %.thread.i.i, label %145

; <label>:145                                     ; preds = %143
  %146 = getelementptr i8* %127, i64 8            ; <i8*> [#uses=1]
  %147 = bitcast i8* %146 to i32*                 ; <i32*> [#uses=1]
  %148 = load i32* %147                           ; <i32> [#uses=1]
  %149 = icmp eq i32 %148, 364969966              ; <i1> [#uses=1]
  br i1 %149, label %object_set_delegate.exit.i1.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %145, %143
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

object_set_delegate.exit.i1.i:                    ; preds = %145
  %150 = getelementptr i8* %127, i64 16           ; <i8*> [#uses=1]
  %151 = bitcast i8* %150 to i8**                 ; <i8**> [#uses=1]
  store i8* %128, i8** %151
  br label %object_set_slot.exit.i

; <label>:152                                     ; preds = %closure_object.exit.i.i
  %153 = bitcast i8* %127 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  %154 = load %struct.slot_node** %153            ; <%struct.slot_node*> [#uses=2]
  %155 = bitcast i8* %127 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  br label %156

; <label>:156                                     ; preds = %174, %152
  %node.0.i.i = phi %struct.slot_node* [ %154, %152 ], [ %176, %174 ] ; <%struct.slot_node*> [#uses=5]
  %last_node.0.i.i = phi %struct.slot_node* [ %155, %152 ], [ %node.0.i.i, %174 ] ; <%struct.slot_node*> [#uses=1]
  %157 = phi %struct.slot_node* [ %176, %174 ], [ %154, %152 ] ; <%struct.slot_node*> [#uses=1]
  %158 = icmp eq %struct.slot_node* %157, null    ; <i1> [#uses=1]
  br i1 %158, label %177, label %159

; <label>:159                                     ; preds = %156
  %160 = getelementptr %struct.slot_node* %node.0.i.i, i64 0, i32 6 ; <i32**> [#uses=1]
  %161 = load i32** %160                          ; <i32*> [#uses=1]
  %162 = ptrtoint i32* %161 to i64                ; <i64> [#uses=1]
  %163 = sub i64 ptrtoint (i32* @__sym_each to i64), %162 ; <i64> [#uses=1]
  %164 = icmp ult i64 %163, 4                     ; <i1> [#uses=1]
  br i1 %164, label %165, label %174

; <label>:165                                     ; preds = %159
  %166 = getelementptr %struct.slot_node* %node.0.i.i, i64 0, i32 1 ; <i32*> [#uses=1]
  %167 = load i32* %166                           ; <i32> [#uses=1]
  %168 = and i32 %167, 2                          ; <i32> [#uses=1]
  %169 = icmp eq i32 %168, 0                      ; <i1> [#uses=1]
  br i1 %169, label %172, label %170

; <label>:170                                     ; preds = %165
  %171 = getelementptr %struct.slot_node* %node.0.i.i, i64 0, i32 7 ; <i8**> [#uses=1]
  store i8* %128, i8** %171
  br label %object_set_slot.exit.i

; <label>:172                                     ; preds = %165
  %173 = tail call i32 (i8*, ...)* @printf(i8* getelementptr inbounds ([51 x i8]* @"\01LC6", i64 0, i64 0), i32* @__sym_each) nounwind ; <i32> [#uses=0]
  br label %object_set_slot.exit.i

; <label>:174                                     ; preds = %159
  %175 = getelementptr %struct.slot_node* %node.0.i.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  %176 = load %struct.slot_node** %175            ; <%struct.slot_node*> [#uses=2]
  br label %156

; <label>:177                                     ; preds = %156
  %178 = tail call i8* @GC_debug_malloc(i64 32, i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 179) nounwind ; <i8*> [#uses=6]
  %179 = icmp eq i8* %178, null                   ; <i1> [#uses=1]
  br i1 %179, label %180, label %mem_alloc.exit.i2.i

; <label>:180                                     ; preds = %177
  tail call void @__assert_rtn(i8* getelementptr inbounds ([10 x i8]* @__func__.mem_alloc, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC473", i64 0, i64 0), i32 52, i8* getelementptr inbounds ([31 x i8]* @"\01LC574", i64 0, i64 0)) noreturn nounwind
  unreachable

mem_alloc.exit.i2.i:                              ; preds = %177
  %181 = bitcast i8* %178 to %struct.slot_node*   ; <%struct.slot_node*> [#uses=1]
  %182 = getelementptr i8* %178, i64 8            ; <i8*> [#uses=1]
  %183 = bitcast i8* %182 to i32*                 ; <i32*> [#uses=1]
  store i32 0, i32* %183
  %184 = getelementptr i8* %178, i64 16           ; <i8*> [#uses=1]
  %185 = bitcast i8* %184 to i32**                ; <i32**> [#uses=1]
  store i32* @__sym_each, i32** %185
  %186 = getelementptr i8* %178, i64 24           ; <i8*> [#uses=1]
  %187 = bitcast i8* %186 to i8**                 ; <i8**> [#uses=1]
  store i8* %128, i8** %187
  %188 = bitcast i8* %178 to %struct.slot_node**  ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* null, %struct.slot_node** %188
  %189 = getelementptr %struct.slot_node* %last_node.0.i.i, i64 0, i32 0 ; <%struct.slot_node**> [#uses=1]
  store %struct.slot_node* %181, %struct.slot_node** %189
  br label %object_set_slot.exit.i

object_set_slot.exit.i:                           ; preds = %mem_alloc.exit.i2.i, %172, %170, %object_set_delegate.exit.i1.i, %109
  %190 = tail call i32 @pthread_mutex_unlock(%struct._opaque_pthread_attr_t* @range_prototype_m) nounwind ; <i32> [#uses=0]
  %.pre.i = load i8** @range_prototype.prototype  ; <i8*> [#uses=1]
  br label %range_prototype.exit.i

range_prototype.exit.i:                           ; preds = %object_set_slot.exit.i, %object_set_slot.exit17.i
  %191 = phi i8* [ %.pre.i, %object_set_slot.exit.i ], [ %107, %object_set_slot.exit17.i ] ; <i8*> [#uses=1]
  %192 = load i32* %22                            ; <i32> [#uses=1]
  %193 = icmp eq i32 %192, 364969966              ; <i1> [#uses=1]
  br i1 %193, label %range_create.exit, label %.thread2.i

.thread2.i:                                       ; preds = %range_prototype.exit.i
  tail call void @__assert_rtn(i8* getelementptr inbounds ([20 x i8]* @__func__.object_set_delegate, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8]* @"\01LC", i64 0, i64 0), i32 195, i8* getelementptr inbounds ([18 x i8]* @"\01LC9", i64 0, i64 0)) noreturn nounwind
  unreachable

range_create.exit:                                ; preds = %range_prototype.exit.i
  %194 = getelementptr i8* %16, i64 16            ; <i8*> [#uses=1]
  %195 = bitcast i8* %194 to i8**                 ; <i8**> [#uses=1]
  store i8* %191, i8** %195
  ret i8* %16
}

declare i8* @__strcpy_chk(i8*, i8*, i64)

declare i32 @__snprintf_chk(i8*, i64, i32, i64, i8*, ...)

declare i8* @__memset_chk(i8*, i32, i64, i64)

define internal i8* @range_each(i8* %self, i8* nocapture %closure, i8* nocapture %args) nounwind {
  %1 = getelementptr i8* %args, i64 24            ; <i8*> [#uses=1]
  %2 = bitcast i8* %1 to i8**                     ; <i8**> [#uses=1]
  %3 = load i8** %2                               ; <i8*> [#uses=3]
  %4 = icmp eq i8* %3, null                       ; <i1> [#uses=1]
  br i1 %4, label %5, label %6

; <label>:5                                       ; preds = %0
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_get_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 123, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:6                                       ; preds = %0
  %7 = bitcast i8* %3 to i32*                     ; <i32*> [#uses=1]
  %8 = load i32* %7                               ; <i32> [#uses=1]
  %9 = icmp sgt i32 %8, 0                         ; <i1> [#uses=1]
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %6
  %11 = getelementptr i8* %3, i64 8               ; <i8*> [#uses=1]
  %12 = bitcast i8* %11 to i8**                   ; <i8**> [#uses=1]
  %13 = load i8** %12                             ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

; <label>:14                                      ; preds = %6
  %15 = tail call fastcc i8* @null_object() nounwind ; <i8*> [#uses=1]
  br label %array_get_elementC.exit

array_get_elementC.exit:                          ; preds = %14, %10
  %storemerge.i = phi i8* [ %13, %10 ], [ %15, %14 ] ; <i8*> [#uses=1]
  %16 = tail call fastcc i8* @object_get_slot(i8* %self, i32* @__sym___start) ; <i8*> [#uses=2]
  %17 = tail call fastcc i8* @object_get_slot(i8* %self, i32* @__sym___end) ; <i8*> [#uses=1]
  %18 = icmp eq i8* %16, null                     ; <i1> [#uses=1]
  br i1 %18, label %19, label %array_get_elementC.exit._crit_edge

; <label>:19                                      ; preds = %array_get_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([11 x i8]* @__func__.range_each, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC129", i64 0, i64 0), i32 58, i8* getelementptr inbounds ([8 x i8]* @"\01LC2130", i64 0, i64 0)) noreturn nounwind
  unreachable

array_get_elementC.exit._crit_edge:               ; preds = %bool_get_value.exit.thread, %array_get_elementC.exit
  %element.0 = phi i8* [ %58, %bool_get_value.exit.thread ], [ %16, %array_get_elementC.exit ] ; <i8*> [#uses=4]
  %20 = tail call fastcc i8* @array_object(i32 1) ; <i8*> [#uses=2]
  %21 = getelementptr i8* %20, i64 24             ; <i8*> [#uses=1]
  %22 = bitcast i8* %21 to i8**                   ; <i8**> [#uses=1]
  %23 = load i8** %22                             ; <i8*> [#uses=3]
  %24 = icmp eq i8* %23, null                     ; <i1> [#uses=1]
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %array_get_elementC.exit._crit_edge
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:26                                      ; preds = %array_get_elementC.exit._crit_edge
  %27 = bitcast i8* %23 to i32*                   ; <i32*> [#uses=1]
  %28 = load i32* %27                             ; <i32> [#uses=1]
  %29 = icmp sgt i32 %28, 0                       ; <i1> [#uses=1]
  br i1 %29, label %array_set_elementC.exit, label %30

; <label>:30                                      ; preds = %26
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit:                          ; preds = %26
  %31 = getelementptr i8* %23, i64 8              ; <i8*> [#uses=1]
  %32 = bitcast i8* %31 to i8**                   ; <i8**> [#uses=1]
  store i8* %element.0, i8** %32
  %33 = tail call fastcc i8* @object_exec(i8* %storemerge.i, i32* @__sym_apply, i8* %20) ; <i8*> [#uses=0]
  %34 = tail call fastcc i8* @array_object(i32 1) ; <i8*> [#uses=2]
  %35 = getelementptr i8* %34, i64 24             ; <i8*> [#uses=1]
  %36 = bitcast i8* %35 to i8**                   ; <i8**> [#uses=1]
  %37 = load i8** %36                             ; <i8*> [#uses=3]
  %38 = icmp eq i8* %37, null                     ; <i1> [#uses=1]
  br i1 %38, label %39, label %40

; <label>:39                                      ; preds = %array_set_elementC.exit
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 138, i8* getelementptr inbounds ([5 x i8]* @"\01LC152", i64 0, i64 0)) noreturn nounwind
  unreachable

; <label>:40                                      ; preds = %array_set_elementC.exit
  %41 = bitcast i8* %37 to i32*                   ; <i32*> [#uses=1]
  %42 = load i32* %41                             ; <i32> [#uses=1]
  %43 = icmp sgt i32 %42, 0                       ; <i1> [#uses=1]
  br i1 %43, label %array_set_elementC.exit8, label %44

; <label>:44                                      ; preds = %40
  tail call void @__assert_rtn(i8* getelementptr inbounds ([19 x i8]* @__func__.array_set_elementC, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8]* @"\01LC51", i64 0, i64 0), i32 141, i8* getelementptr inbounds ([52 x i8]* @"\01LC354", i64 0, i64 0)) noreturn nounwind
  unreachable

array_set_elementC.exit8:                         ; preds = %40
  %45 = getelementptr i8* %37, i64 8              ; <i8*> [#uses=1]
  %46 = bitcast i8* %45 to i8**                   ; <i8**> [#uses=1]
  store i8* %17, i8** %46
  %47 = tail call fastcc i8* @object_exec(i8* %element.0, i32* @__sym_eq, i8* %34) ; <i8*> [#uses=2]
  %48 = getelementptr i8* %47, i64 12             ; <i8*> [#uses=1]
  %49 = bitcast i8* %48 to i32*                   ; <i32*> [#uses=1]
  %50 = load i32* %49                             ; <i32> [#uses=1]
  %51 = and i32 %50, 255                          ; <i32> [#uses=1]
  %52 = icmp eq i32 %51, 1                        ; <i1> [#uses=1]
  br i1 %52, label %bool_get_value.exit.thread, label %bool_get_value.exit

bool_get_value.exit:                              ; preds = %array_set_elementC.exit8
  %53 = getelementptr i8* %47, i64 24             ; <i8*> [#uses=1]
  %54 = bitcast i8* %53 to i8**                   ; <i8**> [#uses=1]
  %55 = load i8** %54                             ; <i8*> [#uses=1]
  %tmp.i = ptrtoint i8* %55 to i64                ; <i64> [#uses=1]
  %56 = trunc i64 %tmp.i to i32                   ; <i32> [#uses=1]
  %phitmp = icmp eq i32 %56, 0                    ; <i1> [#uses=1]
  br i1 %phitmp, label %bool_get_value.exit.thread, label %59

bool_get_value.exit.thread:                       ; preds = %bool_get_value.exit, %array_set_elementC.exit8
  %57 = tail call fastcc i8* @array_object(i32 0) ; <i8*> [#uses=1]
  %58 = tail call fastcc i8* @object_exec(i8* %element.0, i32* @__sym_succ, i8* %57) ; <i8*> [#uses=1]
  br label %array_get_elementC.exit._crit_edge

; <label>:59                                      ; preds = %bool_get_value.exit
  ret i8* %element.0
}

declare void @llvm.memset.i64(i8* nocapture, i8, i64, i32) nounwind

declare i32 @putchar(i32)
