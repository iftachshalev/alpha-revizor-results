.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS BX, -67 
AND SIL, 64 # instrumentation
MOVZX RSI, AX 
CMOVP DX, BX 
MOVSX EAX, CL 
AND CL, BL 
MOV DX, -16063 
CWDE  
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], EDI 
SETB BL 
CLD  
BTR RDI, -111 
AND SIL, 62 # instrumentation
SETL SIL 
AND RBX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RBX] 
MOVSX RAX, BX 
CMOVZ EDX, EDI 
CMPXCHG RDX, RBX 
MOV BL, 38 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 27 # instrumentation
SETL DL 
TEST EBX, ECX 
SAHF  
SETS BL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDI 
AND DIL, 40 # instrumentation
SETLE CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 2 
MOVZX EDI, BL 
CMOVNZ RSI, RAX 
SETNZ DIL 
XOR AX, 14 
TEST BL, DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDX] 
XOR EAX, 1323397115 
CMOVS EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
