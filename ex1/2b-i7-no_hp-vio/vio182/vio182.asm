.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BL, BL 
TEST AL, -105 
AND RBX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RBX] 
MOVSX RSI, DL 
LEA RSI, qword ptr [RAX] 
CMOVNL EDX, EBX 
CMOVL DI, BX 
XOR DIL, 49 
MOVZX EBX, AX 
BTC RDI, RDX 
OR EBX, EBX 
CWDE  
CMOVNL EBX, ESI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DX, SI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
BSWAP ECX 
BTR RAX, -44 
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RAX 
BTC EDI, ESI 
AND DIL, -12 # instrumentation
NOT SIL 
CMOVNL AX, DX 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EAX 
BTS SI, BX 
XOR RAX, 2065672167 
SETNZ AL 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
STC  
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
TEST AX, 11615 
TEST AL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
