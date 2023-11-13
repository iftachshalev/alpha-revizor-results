.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RBX] 
AND DIL, 10 # instrumentation
CMOVNB DI, DI 
CMOVNS DX, AX 
XOR AX, 1403 
CMOVZ ECX, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDI] 
CMOVNZ RBX, RCX 
BSWAP EDI 
CMOVB RSI, RAX 
CMOVNZ RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], BX 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -81 # instrumentation
SETB BL 
CMOVNZ ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], -70 
CMPXCHG BL, SIL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 30192 
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
SETS SIL 
CMOVNP EAX, EDX 
NOT RBX 
SETZ BL 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
CMPXCHG BL, DL 
CMOVNB RDI, RSI 
CMOVNL RCX, RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RBX], 3 
MOVZX ESI, AL 
XCHG DI, AX 
BTS AX, 81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
