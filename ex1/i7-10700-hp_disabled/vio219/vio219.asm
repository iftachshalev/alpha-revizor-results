.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, RSI 
AND RAX, -533592376 
XOR AX, -30691 
MOV RCX, 388918333412914115 
XOR DL, -85 
CMOVZ RAX, RBX 
CMOVO ECX, ECX 
AND EDI, EDI 
JMP .bb_main.1 
.bb_main.1:
BTC RSI, -118 
AND DIL, -17 # instrumentation
CMOVNZ DI, CX 
SETL DIL 
CMOVNS EDX, EDI 
CMOVNBE RCX, RDI 
MOVZX RCX, SI 
CLC  
JBE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, ESI 
AND ESI, 125 
BT RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RAX] 
CMOVNBE RAX, RCX 
SETNBE DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RCX], BL 
TEST CL, -22 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 31 # instrumentation
XCHG RAX, RAX 
SETNL AL 
AND AX, -13907 
MOV DX, 1030 
CBW  
AND RSI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
TEST AL, -28 
BSWAP RSI 
OR EAX, -1123105502 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
