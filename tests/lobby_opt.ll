; ModuleID = 'lobby_opt.bc'

@__lobby_map = linkonce global i8* null           ; <i8**> [#uses=1]
@__sym_lt = weak global i32 0                     ; <i32*> [#uses=2]
@__sym_add = weak global i32 0                    ; <i32*> [#uses=1]
@__sym_apply = weak global i32 0                  ; <i32*> [#uses=1]
@__sym_to_s = weak global i32 0                   ; <i32*> [#uses=1]
@__sym_print = weak global i32 0                  ; <i32*> [#uses=1]
@__sym_main = weak global i32 0                   ; <i32*> [#uses=1]

declare i8* @object_exec(i8*, i32*, i8*)

declare i8* @object_set_slot(i8*, i32*, i8*, i16)

declare i8* @object_create()

declare i8* @int_object(i32) readnone

declare i8* @closure_object_place()

declare i8* @closure_set_fptrC(i8*, i8* (i8*, i8*, i8*)*)

declare i8* @array_get_elementC(i8*, i32)

declare i8* @array_set_elementC(i8*, i32, i8*)

declare i32 @bool_get_value(i8*) readnone

declare i8* @array_object(i32)

declare i32 @__t_start(i32, i8*, i8*)

declare void @__t_init()

define i32 @main(i32, i8*) nounwind {
entry:
  tail call void @__t_init() nounwind
  %2 = tail call i8* @object_create() nounwind    ; <i8*> [#uses=3]
  %3 = tail call i8* @closure_object_place() nounwind ; <i8*> [#uses=2]
  %4 = tail call i8* @closure_set_fptrC(i8* %3, i8* (i8*, i8*, i8*)* @__closure) nounwind ; <i8*> [#uses=0]
  %5 = tail call i8* @object_set_slot(i8* %2, i32* @__sym_main, i8* %3, i16 0) nounwind ; <i8*> [#uses=0]
  store i8* %2, i8** @__lobby_map
  %6 = tail call i32 @__t_start(i32 %0, i8* %1, i8* %2) nounwind ; <i32> [#uses=1]
  ret i32 %6
}

define internal i8* @__closure(i8* nocapture, i8* nocapture, i8* nocapture) nounwind {
entry:
  %lit = tail call i8* @int_object(i32 0) nounwind ; <i8*> [#uses=3]
  %3 = tail call i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %lit12 = tail call i8* @int_object(i32 10000000) nounwind ; <i8*> [#uses=2]
  %4 = tail call i8* @array_set_elementC(i8* %3, i32 0, i8* %lit12) nounwind ; <i8*> [#uses=0]
  %calltmp5 = tail call i8* @object_exec(i8* %lit, i32* @__sym_lt, i8* %3) nounwind ; <i8*> [#uses=1]
  %5 = tail call i32 @bool_get_value(i8* %calltmp5) nounwind ; <i32> [#uses=1]
  %6 = icmp eq i32 %5, 0                          ; <i1> [#uses=1]
  br i1 %6, label %loopcont, label %loop

loop:                                             ; preds = %loop, %entry
  %x.01 = phi i8* [ %lit, %entry ], [ %calltmp2, %loop ] ; <i8*> [#uses=1]
  %7 = tail call i8* @closure_object_place() nounwind ; <i8*> [#uses=2]
  %8 = tail call i8* @closure_set_fptrC(i8* %7, i8* (i8*, i8*, i8*)* @__closure1) nounwind ; <i8*> [#uses=0]
  %9 = tail call i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %10 = tail call i8* @array_set_elementC(i8* %9, i32 0, i8* %x.01) nounwind ; <i8*> [#uses=0]
  %calltmp2 = tail call i8* @object_exec(i8* %7, i32* @__sym_apply, i8* %9) nounwind ; <i8*> [#uses=3]
  %11 = tail call i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %12 = tail call i8* @array_set_elementC(i8* %11, i32 0, i8* %lit12) nounwind ; <i8*> [#uses=0]
  %calltmp = tail call i8* @object_exec(i8* %calltmp2, i32* @__sym_lt, i8* %11) nounwind ; <i8*> [#uses=1]
  %13 = tail call i32 @bool_get_value(i8* %calltmp) nounwind ; <i32> [#uses=1]
  %14 = icmp eq i32 %13, 0                        ; <i1> [#uses=1]
  br i1 %14, label %loopcont, label %loop

loopcont:                                         ; preds = %loop, %entry
  %x.0.lcssa = phi i8* [ %lit, %entry ], [ %calltmp2, %loop ] ; <i8*> [#uses=1]
  %15 = tail call i8* @array_object(i32 0) nounwind ; <i8*> [#uses=1]
  %calltmp3 = tail call i8* @object_exec(i8* %x.0.lcssa, i32* @__sym_to_s, i8* %15) nounwind ; <i8*> [#uses=1]
  %16 = tail call i8* @array_object(i32 0) nounwind ; <i8*> [#uses=1]
  %calltmp4 = tail call i8* @object_exec(i8* %calltmp3, i32* @__sym_print, i8* %16) nounwind ; <i8*> [#uses=1]
  ret i8* %calltmp4
}

define internal i8* @__closure1(i8* nocapture, i8* nocapture, i8*) nounwind {
entry:
  %3 = tail call i8* @array_get_elementC(i8* %2, i32 0) nounwind ; <i8*> [#uses=1]
  %4 = tail call i8* @array_object(i32 1) nounwind ; <i8*> [#uses=2]
  %lit = tail call i8* @int_object(i32 1) nounwind ; <i8*> [#uses=1]
  %5 = tail call i8* @array_set_elementC(i8* %4, i32 0, i8* %lit) nounwind ; <i8*> [#uses=0]
  %calltmp = tail call i8* @object_exec(i8* %3, i32* @__sym_add, i8* %4) nounwind ; <i8*> [#uses=1]
  ret i8* %calltmp
}
