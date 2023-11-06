.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
SAHF  
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -9 
TEST SIL, -21 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
CMOVZ BX, AX 
BTC RCX, -27 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
MOVSX RDX, SIL 
AND AL, -14 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
BT EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
AND AL, DL 
STC  
OR AX, -27944 
TEST BL, -101 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 66 
BTR RAX, -54 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RBX] 
AND RAX, -1106093168 
CWDE  
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RAX] 
MOV SI, 11983 
CMOVL EDX, EAX 
CMOVNZ RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
CMOVNBE EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
AND EDI, dword ptr [R14 + RSI] 
MOV AL, 96 
AND RAX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
CMOVNBE RDI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
