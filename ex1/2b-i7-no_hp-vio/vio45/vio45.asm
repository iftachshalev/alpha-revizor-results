.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
CMOVL SI, SI 
CMOVNZ RSI, RAX 
BTC EAX, ECX 
AND DIL, 65 # instrumentation
SETNLE DL 
BTR CX, 1 
SETNZ CL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EDI, dword ptr [R14 + RSI] 
AND SIL, 77 # instrumentation
SETNP DIL 
CMOVS ECX, ESI 
TEST AX, 5722 
CMPXCHG AL, BL 
AND RDI, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], AL 
SETNBE BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RSI, 35 
AND DIL, 81 # instrumentation
SETNP DL 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
OR RSI, RAX 
SAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RBX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
NOT RDX 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RBX] 
CMOVLE CX, AX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE RSI, qword ptr [R14 + RCX] 
SETP BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
