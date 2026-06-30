; ModuleID = '/home/randy/Workspace/REPOS/nbidi/tests/test_bidi.npk'
source_filename = "/home/randy/Workspace/REPOS/nbidi/tests/test_bidi.npk"

%Numeric_vtable_t = type {}
%Display_vtable_t = type {}
%TextRun = type { i32, i32, i32 }

@Numeric_vtable_int8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_int64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_uint64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tbb64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac8 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac16 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_frac64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_tfp64 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_fix256 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt32 = internal constant %Numeric_vtable_t zeroinitializer
@Numeric_vtable_flt64 = internal constant %Numeric_vtable_t zeroinitializer
@Display_vtable_int8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_int4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint128 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint512 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint1024 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint2048 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_uint4096 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tbb64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac8 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac16 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_frac64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tfp64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_fix256 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt32 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_flt64 = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_trit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_tryte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nit = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_nyte = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_bool = internal constant %Display_vtable_t zeroinitializer
@Display_vtable_string = internal constant %Display_vtable_t zeroinitializer

define linkonce_odr { %TextRun, ptr, i8 } @bidi.resolve_bidi_english(ptr %text, i32 %len) {
entry:
  %len.addr = alloca i32, align 4
  store i32 %len, ptr %len.addr, align 4
  %len1 = load i32, ptr %len.addr, align 4
  %letmp = icmp sle i32 %len1, 0
  %ifcond = icmp ne i1 %letmp, false
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  ret { %TextRun, ptr, i8 } { %TextRun zeroinitializer, ptr inttoptr (i32 -1 to ptr), i8 1 }

ifcont:                                           ; preds = %entry
  %run = alloca %TextRun, align 8
  %struct.tmp = alloca %TextRun, align 8
  %start_index.ptr = getelementptr inbounds nuw %TextRun, ptr %struct.tmp, i32 0, i32 0
  store i32 0, ptr %start_index.ptr, align 4
  %len2 = load i32, ptr %len.addr, align 4
  %length.ptr = getelementptr inbounds nuw %TextRun, ptr %struct.tmp, i32 0, i32 1
  store i32 %len2, ptr %length.ptr, align 4
  %direction.ptr = getelementptr inbounds nuw %TextRun, ptr %struct.tmp, i32 0, i32 2
  store i32 0, ptr %direction.ptr, align 4
  %struct.val = load %TextRun, ptr %struct.tmp, align 4
  store %TextRun %struct.val, ptr %run, align 4
  %run3 = load %TextRun, ptr %run, align 4
  %result.val = insertvalue { %TextRun, ptr, i8 } undef, %TextRun %run3, 0
  %result.err = insertvalue { %TextRun, ptr, i8 } %result.val, ptr null, 1
  %result.is_error = insertvalue { %TextRun, ptr, i8 } %result.err, i8 0, 2
  ret { %TextRun, ptr, i8 } %result.is_error
}

define linkonce_odr i32 @__bidi_init() {
entry:
  ret i32 0
}

define i32 @failsafe(i32 %err) {
entry:
  %err.addr = alloca i32, align 4
  store i32 %err, ptr %err.addr, align 4
  call void @proc_exit(i32 1) #0
  unreachable
}

define i32 @main(i32 %0, ptr %1) {
entry:
  call void @npk_gc_init(i64 0, i64 0)
  call void @npk_args_init(i32 %0, ptr %1)
  call void @npk_streams_init()
  %len = alloca i32, align 4
  store i32 5, ptr %len, align 4
  %text = alloca ptr, align 8
  store ptr null, ptr %text, align 8
  %res = alloca { %TextRun, ptr, i8 }, align 8
  %text1 = load ptr, ptr %text, align 8
  %len2 = load i32, ptr %len, align 4
  %calltmp = call { %TextRun, ptr, i8 } @bidi.resolve_bidi_english(ptr %text1, i32 %len2)
  store { %TextRun, ptr, i8 } %calltmp, ptr %res, align 8
  %result = load { %TextRun, ptr, i8 }, ptr %res, align 8
  %is_error = extractvalue { %TextRun, ptr, i8 } %result, 2
  %ifcond = icmp ne i8 %is_error, 0
  br i1 %ifcond, label %then, label %ifcont

then:                                             ; preds = %entry
  call void @proc_exit(i32 2) #0
  unreachable

ifcont:                                           ; preds = %entry
  %run = alloca %TextRun, align 8
  %result3 = load { %TextRun, ptr, i8 }, ptr %res, align 8
  %value = extractvalue { %TextRun, ptr, i8 } %result3, 0
  store %TextRun %value, ptr %run, align 4
  %start_index.ptr = getelementptr inbounds nuw %TextRun, ptr %run, i32 0, i32 0
  %start_index = load i32, ptr %start_index.ptr, align 4
  %netmp = icmp ne i32 %start_index, 0
  %ifcond4 = icmp ne i1 %netmp, false
  br i1 %ifcond4, label %then5, label %else

then5:                                            ; preds = %ifcont
  call void @proc_exit(i32 3) #0
  unreachable

else:                                             ; preds = %ifcont
  %length.ptr = getelementptr inbounds nuw %TextRun, ptr %run, i32 0, i32 1
  %length = load i32, ptr %length.ptr, align 4
  %netmp6 = icmp ne i32 %length, 5
  %ifcond7 = icmp ne i1 %netmp6, false
  br i1 %ifcond7, label %then8, label %else9

then8:                                            ; preds = %else
  call void @proc_exit(i32 4) #0
  unreachable

else9:                                            ; preds = %else
  %direction.ptr = getelementptr inbounds nuw %TextRun, ptr %run, i32 0, i32 2
  %direction = load i32, ptr %direction.ptr, align 4
  %netmp10 = icmp ne i32 %direction, 0
  %ifcond11 = icmp ne i1 %netmp10, false
  br i1 %ifcond11, label %then12, label %ifcont13

then12:                                           ; preds = %else9
  call void @proc_exit(i32 5) #0
  unreachable

ifcont13:                                         ; preds = %else9
  br label %ifcont14

ifcont14:                                         ; preds = %ifcont13
  br label %ifcont15

ifcont15:                                         ; preds = %ifcont14
  call void @proc_exit(i32 0) #0
  unreachable
}

; Function Attrs: noreturn
declare void @proc_exit(i32) #0

declare void @npk_gc_init(i64, i64)

declare void @npk_args_init(i32, ptr)

declare void @npk_streams_init()

define linkonce_odr i32 @__test_bidi_init() {
entry:
  ret i32 0
}

attributes #0 = { noreturn }
