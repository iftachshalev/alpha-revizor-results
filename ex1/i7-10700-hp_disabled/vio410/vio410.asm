.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC BX, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
BTR RAX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], -13 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG RCX, RAX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -725605012 
SETO BL 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RSI], RBX 
AND SIL, -83 # instrumentation
MOVSX ECX, DL 
SETP CL 
OR BL, 35 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
CMOVNO ESI, ESI 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDI] 
SETNS BL 
SETNO SIL 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
MOVSX AX, CL 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 79 # instrumentation
CMOVNL EAX, ECX 
SETO SIL 
SETP BL 
CMOVNBE ESI, EDX 
BTS DI, -102 
AND EBX, -125 
TEST SI, 15238 
OR RAX, 1614563567 
AND AX, 44 
AND BL, 48 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
