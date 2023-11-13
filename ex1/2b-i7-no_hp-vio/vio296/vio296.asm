.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, AL # instrumentation
AND SIL, 58 # instrumentation
LAHF  
BTR RSI, RCX 
OR AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RAX] 
XADD CL, DL 
CMOVNS ESI, ECX 
AND AX, 18535 
OR SIL, SIL 
BTS ESI, -4 
SETB CL 
XOR RSI, -111 
SETL BL 
CMOVP ESI, ECX 
AND DX, 116 
OR DIL, -14 
AND DIL, -2 
OR EBX, EDI 
MOVZX RSI, DI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND AX, -25057 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RCX 
AND AX, -1040 
XOR RAX, -198826281 
MOVSX RDI, DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], BX 
AND SIL, 127 # instrumentation
NOT RSI 
SETZ DIL 
CMOVL DX, CX 
BTS RDI, RCX 
BTC RDI, 16 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ESI 
TEST AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
