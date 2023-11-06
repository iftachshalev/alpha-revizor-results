.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
CMOVP CX, SI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
JLE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 77 # instrumentation
CMOVNBE BX, DX 
OR EAX, 1523777034 
TEST RAX, -1211584382 
AND RBX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
CMOVZ RAX, RSI 
OR DIL, DL 
SETNBE CL 
CMPXCHG SIL, BL 
CMOVBE RDX, RBX 
OR AL, 58 
CLC  
OR AL, AL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -105 # instrumentation
CMOVNZ RDI, RSI 
SETS BL 
XCHG CX, CX 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], DX 
OR RAX, 1085177648 
OR ESI, ECX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RSI] 
CMC  
NOT BX 
SETB AL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVO DX, word ptr [R14 + RAX] 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTC dword ptr [R14 + RDI], ESI 
MOV RAX, -7470047095493919088 
MOV CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
