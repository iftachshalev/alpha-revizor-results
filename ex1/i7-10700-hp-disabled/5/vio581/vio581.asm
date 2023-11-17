.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 8 # instrumentation
CMOVNL DX, SI 
XOR RAX, -954474855 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
MOV DL, DL 
BTS AX, CX 
BSWAP ESI 
OR AL, 52 
SETS DIL 
CMOVZ RCX, RBX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
TEST DIL, 25 
XOR AL, DL 
SETO CL 
OR RCX, RCX 
BTS RBX, RCX 
XADD EDX, EDX 
JMP .bb_main.2 
.bb_main.2:
BTR RSI, -36 
AND DIL, -44 # instrumentation
CMOVNS EBX, ECX 
SETO AL 
XADD BL, BL 
AND SI, 42 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 47 # instrumentation
CMOVL EBX, ESI 
MOV AL, 27 
STD  
CMOVBE RDI, RCX 
BT ESI, EDI 
BTC RSI, RSI 
TEST AX, 30465 
MOV EAX, ESI 
CMOVNP ECX, ESI 
OR EDX, ESI 
CMOVNB BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
