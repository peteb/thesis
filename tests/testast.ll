; AST::Unit
;    AST::Vardef(main)
;       AST::Closure
;          Formals:
;          Body:
;             AST::Block
;                AST::Literal(null)
; ModuleID = 'testast'

%0 = type { i8*, i8* }

@__lobbymap = linkonce global i8* null            ; <i8**> [#uses=1]
@__sym_main = weak global i32 0                   ; <i32*> [#uses=1]

declare %0 @object_exec(i8*, i32*, i8*)

declare i8* @object_set_slot(i8*, i32*, i8*, i16)

declare i8* @object_get_slot(i8*, i32*)

declare i8* @object_create()

declare i8* @string_object(i8* noalias nocapture) readnone

declare i8* @int_object(i32) readnone

declare i8* @float_object(float) readnone

declare i8* @bool_object(i32) readnone

declare i8* @null_object() readnone

declare i8* @closure_object_place()

declare i8* @closure_object(i8* (i8*, i8*)*)

declare i8* @closure_set_fptrC(i8*, %0 (i8*, i8*, i8*)*)

declare i8* @array_get_elementC(i8*, i32)

declare i8* @array_set_elementC(i8*, i32, i8*)

declare i32 @bool_get_value(i8*)

declare i8* @array_object(i32)

declare %0 @__t_throw(i8*)

declare i32 @__t_start(i32, i8*, i8*)

declare void @__t_init()

declare i8* @__t_spawn(i8*)

declare i8* @__t_send(i8*, i8*)

declare i8* @__t_clone(i8*)

define i32 @main(i32, i8*) nounwind {
entry:
  call void @__t_init()
  %2 = call i8* @object_create()                  ; <i8*> [#uses=3]
  %3 = call i8* @closure_object_place()           ; <i8*> [#uses=3]
  %4 = call i8* @closure_set_fptrC(i8* %3, %0 (i8*, i8*, i8*)* @__closure) ; <i8*> [#uses=0]
  %main = alloca i8*                              ; <i8**> [#uses=1]
  store i8* %3, i8** %main
  %5 = call i8* @object_set_slot(i8* %2, i32* @__sym_main, i8* %3, i16 0) ; <i8*> [#uses=0]
  store i8* %2, i8** @__lobbymap
  %6 = call i32 @__t_start(i32 %0, i8* %1, i8* %2) ; <i32> [#uses=1]
  ret i32 %6
}

define internal %0 @__closure(i8*, i8*, i8*) nounwind {
entry:
  %__retval = alloca %0                           ; <%0*> [#uses=3]
  %lit = call i8* @null_object()                  ; <i8*> [#uses=1]
  %3 = load %0* %__retval                         ; <%0> [#uses=1]
  %4 = insertvalue %0 %3, i8* %lit, 0             ; <%0> [#uses=1]
  %5 = insertvalue %0 %4, i8* null, 1             ; <%0> [#uses=1]
  store %0 %5, %0* %__retval
  br label %ret

ret:                                              ; preds = %entry
  %6 = load %0* %__retval                         ; <%0> [#uses=1]
  ret %0 %6
}
