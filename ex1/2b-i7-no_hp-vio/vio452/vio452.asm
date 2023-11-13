.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
AND DIL, 97 # instrumentation
CMOVNBE RDX, RBX 
XOR DX, 125 
CMOVS EBX, ESI 
CMOVZ RDI, RAX 
BTC EBX, ESI 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
CMOVNP EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], ESI 
BT ESI, 67 
TEST DL, BL 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], -1 
AND EAX, EDI 
CMOVP RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RSI, qword ptr [R14 + RAX] 
MOVZX RDX, SI 
SETO SIL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], 120 
BSWAP RBX 
SETNP AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 0 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CL, BL 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
BT RDI, 117 
CMPXCHG RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], CX 
TEST AX, 31004 
LEA DX, qword ptr [RSI] 
SETZ DIL 
MOV ECX, -2108868552 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
