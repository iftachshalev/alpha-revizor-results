.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -110 # instrumentation
CMC  
CMOVNS CX, SI 
NOT DL 
SETNZ CL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND DIL, -95 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RAX] 
STC  
OR AX, 29337 
XOR RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], 2936 
CMOVZ RAX, RDX 
SETNLE AL 
SAHF  
XOR DL, 54 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RDI], ESI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], 45 
SETNB AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ESI, -82 
SETLE DL 
BT SI, -112 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RAX], AX 
AND SIL, 119 # instrumentation
MOVZX EBX, BL 
CMOVNS EDX, EDX 
TEST CX, SI 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], EAX 
LEA RDI, qword ptr [RDX] 
CMOVNZ BX, DI 
AND RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RAX] 
CMOVBE RDX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
