.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND AL, 25 
BTS RSI, 113 
AND SIL, 103 # instrumentation
CMOVO RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], DL 
XOR EAX, 41 
XOR EBX, ESI 
BTC DI, -64 
TEST EAX, -1909599125 
AND RAX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RAX], 4 
XADD AX, DX 
XOR EBX, EAX 
MOVZX DI, AL 
XCHG DX, AX 
MOVZX EDX, CL 
SETP BL 
SETL AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CL, BL 
OR DI, 84 
CMOVB ESI, EDI 
SETLE DIL 
XCHG RBX, RAX 
CMPXCHG ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], 81 
CMOVL RBX, RSI 
CMOVNZ SI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RAX] 
XOR RDX, RDX 
TEST CL, 101 
CMPXCHG AL, CL # instrumentation
LAHF  
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 13 
CMOVNL RAX, RDI 
CMOVNBE RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
