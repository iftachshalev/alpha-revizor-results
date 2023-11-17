.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, -884829322 
SETP AL 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], CL 
CMOVNBE ESI, EAX 
CMOVLE EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RCX], 5 
AND DIL, 51 # instrumentation
CMOVNLE DI, SI 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], 111 
SETBE AL 
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], BX 
SAHF  
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], 5 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
CMOVNBE ECX, ECX 
CMOVNL ECX, EDX 
SETNS DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -38 # instrumentation
SETP BL 
SETNP DL 
CMOVNO RDX, RAX 
BTR EDX, -54 
BTS SI, SI 
XADD SI, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 5 
AND DL, DL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 54 # instrumentation
CMOVB DI, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -56 
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EDX 
CMOVS RDX, RCX 
XOR DL, -3 
SETZ BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
