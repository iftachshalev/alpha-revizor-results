.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX RSI, DX 
STC  
AND EAX, 89 
AND RCX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RCX] 
BSWAP RAX 
SETP CL 
TEST AL, 16 
LOOPE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOVSX EDX, DL 
XOR AX, 10617 
CMOVNB RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], SIL 
MOVSX SI, AL 
CMC  
AND RAX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RAX] 
JL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -102 # instrumentation
CMOVLE RDI, RDX 
OR RAX, -23 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 56 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], AL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RCX] 
NOT BX 
CMOVLE EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
SETO BL 
CMOVNO RDI, RSI 
SETNLE CL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND EAX, 6 
XADD AL, SIL 
XOR RAX, 1115060373 
XOR AL, 29 
BTC RAX, -107 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
