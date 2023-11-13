.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -120 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
