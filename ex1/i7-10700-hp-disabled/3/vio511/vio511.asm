.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG ECX, ESI 
BTS RCX, RBX 
BTC RBX, 35 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ RSI, qword ptr [R14 + RAX] 
XOR AX, -1167 
BTC ECX, EBX 
XOR AL, AL 
SETB BL 
SETB AL 
CMOVNB SI, SI 
AND RAX, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RAX] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -113 # instrumentation
SETNZ CL 
SETNO AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
CMPXCHG RBX, RDX 
SETNO AL 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
CMOVNLE CX, DI 
AND SIL, -78 
CMOVLE AX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RSI] 
CMOVNB EBX, EAX 
BTC BX, 9 
AND SIL, -37 # instrumentation
CMOVNP EDX, EDX 
XOR CX, -101 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RDI] 
XCHG DX, AX 
TEST AX, 27779 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RDI] 
AND AL, 68 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
