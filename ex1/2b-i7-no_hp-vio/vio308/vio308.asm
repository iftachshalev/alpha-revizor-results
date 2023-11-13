.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 36 # instrumentation
CMOVNS DX, SI 
SETO CL 
BTR ESI, 54 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR CX, word ptr [R14 + RCX] 
XOR SI, 72 
BSWAP RCX 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], EDX 
AND DIL, -19 # instrumentation
MOV BL, DL 
CMOVNZ RSI, RAX 
SETL DL 
SAHF  
BTC BX, BX 
BT EAX, ECX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -19 # instrumentation
SETNBE AL 
CMOVNB EAX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], CL 
STC  
BSWAP RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
TEST BX, AX 
OR AX, -17125 
SETLE AL 
SETNBE CL 
BTS RSI, -8 
AND RAX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RAX] 
CMOVNBE RBX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], DL 
CMOVNBE CX, AX 
SETNL BL 
BTR RAX, 119 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RDI] 
XADD RAX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
