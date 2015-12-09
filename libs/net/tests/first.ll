; AST::Unit
;    AST::Vardef(main)
;       AST::Closure
;          Formals:
;          Body:
;             AST::Block
;                AST::Vardef(server)
;                   AST::MethodCall(tcp_server)
;                      Target:
;                         AST::Var(NET)
;                      Arguments:
;                         AST::MethodCall(address)
;                            Target:
;                               AST::Var(NET)
;                            Arguments:
;                               AST::Literal("0.0.0.0:12345")
;                AST::Vardef(client)
;                   AST::MethodCall(accept)
;                      Target:
;                         AST::Var(server)
;                      Arguments:
;                AST::Vardef(hej)
;                   AST::Closure
;                      Formals:
;                      Body:
;                         AST::Block
;                            AST::Var(client)
;                AST::MethodCall(apply)
;                   Target:
;                      AST::Var(hej)
;                   Arguments:
; ModuleID = 'testast'

%fptr = type %ret (i8*, i8*, i8*)*
%ret = type { i8*, i8* }
%sym = type i32*

@__lobby_map = linkonce global i8* null           ; <i8**> [#uses=1]
@__lib_net_map = linkonce global i8* null         ; <i8**> [#uses=2]
@__sym_tcp_server = weak global i32 0             ; <i32*> [#uses=1]
@__sym_address = weak global i32 0                ; <i32*> [#uses=1]
@0 = internal constant [14 x i8] c"0.0.0.0:12345\00" ; <[14 x i8]*> [#uses=1]
@__sym_accept = weak global i32 0                 ; <i32*> [#uses=1]
@__sym_client = weak global i32 0                 ; <i32*> [#uses=2]
@__sym_apply = weak global i32 0                  ; <i32*> [#uses=1]
@__sym_main = weak global i32 0                   ; <i32*> [#uses=1]

declare %ret @object_exec(i8*, i32*, i8*)

declare i8* @object_set_slot(i8*, i32*, i8*, i16)

declare i8* @object_get_slot(i8*, i32*)

declare %fptr @object_lookup_method(i8*, i32*)

declare i8* @object_create()

declare i8* @string_object(i8* noalias nocapture) readnone

declare i8* @int_object(i32) readnone

declare i8* @float_object(float) readnone

declare i8* @bool_object(i32) readnone

declare i8* @null_object() readnone

declare i8* @closure_object_place()

declare i8* @closure_object(%fptr)

declare i8* @closure_set_fptrC(i8*, %fptr)

declare i8* @array_get_elementC(i8*, i32)

declare i8* @array_set_elementC(i8*, i32, i8*)

declare i32 @bool_get_value(i8*) readnone

declare i8* @array_object(i32)

declare %ret @__t_throw(i8*)

declare i32 @__t_start(i32, i8*, i8*)

declare void @__t_init()

declare i8* @__t_spawn(i8*)

declare i8* @__t_send(i8*, i8*)

declare i8* @__t_clone(i8*)

define i32 @main(i32, i8*) nounwind {
entry:
  call void @__t_init()
  %2 = call i8* @__lib_net_init()                 ; <i8*> [#uses=0]
  %3 = call i8* @object_create()                  ; <i8*> [#uses=3]
  %4 = call i8* @closure_object_place()           ; <i8*> [#uses=3]
  %5 = call i8* @closure_set_fptrC(i8* %4, %fptr @__closure) ; <i8*> [#uses=0]
  %main = alloca i8*                              ; <i8**> [#uses=1]
  store i8* %4, i8** %main
  %6 = call i8* @object_set_slot(i8* %3, i32* @__sym_main, i8* %4, i16 0) ; <i8*> [#uses=0]
  store i8* %3, i8** @__lobby_map
  %7 = call i32 @__t_start(i32 %0, i8* %1, i8* %3) ; <i32> [#uses=1]
  ret i32 %7
}

declare i8* @__lib_net_init()

define internal %ret @__closure(i8*, i8*, i8*) nounwind {
entry:
  %__retval = alloca %ret                         ; <%ret*> [#uses=3]
  %3 = load i8** @__lib_net_map                   ; <i8*> [#uses=1]
  %4 = call i8* @array_object(i32 1)              ; <i8*> [#uses=2]
  %5 = load i8** @__lib_net_map                   ; <i8*> [#uses=1]
  %6 = call i8* @array_object(i32 1)              ; <i8*> [#uses=2]
  %lit = call i8* @string_object(i8* getelementptr inbounds ([14 x i8]* @0, i32 0, i32 0)) ; <i8*> [#uses=1]
  %7 = call i8* @array_set_elementC(i8* %6, i32 0, i8* %lit) ; <i8*> [#uses=0]
  %calltmp = call %ret @object_exec(i8* %5, i32* @__sym_address, i8* %6) ; <%ret> [#uses=1]
  %retval = extractvalue %ret %calltmp, 0         ; <i8*> [#uses=1]
  %8 = call i8* @array_set_elementC(i8* %4, i32 0, i8* %retval) ; <i8*> [#uses=0]
  %calltmp1 = call %ret @object_exec(i8* %3, i32* @__sym_tcp_server, i8* %4) ; <%ret> [#uses=1]
  %retval2 = extractvalue %ret %calltmp1, 0       ; <i8*> [#uses=1]
  %server = alloca i8*                            ; <i8**> [#uses=2]
  store i8* %retval2, i8** %server
  %9 = load i8** %server                          ; <i8*> [#uses=1]
  %10 = call i8* @array_object(i32 0)             ; <i8*> [#uses=1]
  %calltmp3 = call %ret @object_exec(i8* %9, i32* @__sym_accept, i8* %10) ; <%ret> [#uses=1]
  %retval4 = extractvalue %ret %calltmp3, 0       ; <i8*> [#uses=1]
  %client = alloca i8*                            ; <i8**> [#uses=2]
  store i8* %retval4, i8** %client
  %11 = call i8* @closure_object_place()          ; <i8*> [#uses=3]
  %12 = load i8** %client                         ; <i8*> [#uses=1]
  %13 = call i8* @__t_clone(i8* %12)              ; <i8*> [#uses=1]
  %14 = call i8* @object_set_slot(i8* %11, i32* @__sym_client, i8* %13, i16 0) ; <i8*> [#uses=0]
  %15 = call i8* @closure_set_fptrC(i8* %11, %fptr @__closure1) ; <i8*> [#uses=0]
  %hej = alloca i8*                               ; <i8**> [#uses=2]
  store i8* %11, i8** %hej
  %16 = load i8** %hej                            ; <i8*> [#uses=1]
  %17 = call i8* @array_object(i32 0)             ; <i8*> [#uses=1]
  %calltmp5 = call %ret @object_exec(i8* %16, i32* @__sym_apply, i8* %17) ; <%ret> [#uses=1]
  %retval6 = extractvalue %ret %calltmp5, 0       ; <i8*> [#uses=1]
  %18 = load %ret* %__retval                      ; <%ret> [#uses=1]
  %19 = insertvalue %ret %18, i8* %retval6, 0     ; <%ret> [#uses=1]
  store %ret %19, %ret* %__retval
  br label %ret

ret:                                              ; preds = %entry
  %20 = load %ret* %__retval                      ; <%ret> [#uses=1]
  ret %ret %20
}

define internal %ret @__closure1(i8*, i8*, i8*) nounwind {
entry:
  %__retval = alloca %ret                         ; <%ret*> [#uses=3]
  %3 = call i8* @object_get_slot(i8* %1, i32* @__sym_client) ; <i8*> [#uses=1]
  %4 = load %ret* %__retval                       ; <%ret> [#uses=1]
  %5 = insertvalue %ret %4, i8* %3, 0             ; <%ret> [#uses=1]
  store %ret %5, %ret* %__retval
  br label %ret

ret:                                              ; preds = %entry
  %6 = load %ret* %__retval                       ; <%ret> [#uses=1]
  ret %ret %6
}
