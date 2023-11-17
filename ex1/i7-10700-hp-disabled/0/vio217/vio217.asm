.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 3 
AND DIL, 95 # instrumentation
SETNO CL 
CMOVNLE RDX, RAX 
OR EAX, 2036580643 
BT SI, SI 
AND DIL, -117 # instrumentation
MOVSX RDI, BX 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 52 # instrumentation
SETNS DL 
XCHG EAX, EAX 
XADD RCX, RSI 
TEST SI, -1819 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RBX] 
MOVZX BX, DL 
CMOVB AX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], DL 
CMOVB SI, BX 
BTR RBX, -1 
AND DX, AX 
OR SIL, 112 
SETZ BL 
CMOVNL EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], DL 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XADD DL, SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RCX, qword ptr [R14 + RAX] 
AND AX, -2855 
TEST BL, -39 
AND RAX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RAX] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDX 
NOT RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RAX] 
JMP .bb_main.4 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RCX 
CMOVBE ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
