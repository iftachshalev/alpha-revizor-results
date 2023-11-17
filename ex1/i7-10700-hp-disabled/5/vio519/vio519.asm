.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 103 # instrumentation
CMOVBE EDI, EDI 
AND RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
SETNS BL 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
CMOVBE RBX, RDI 
CMOVNZ RSI, RSI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RCX 
CMOVNL EAX, ECX 
MOVSX AX, BL 
BTR RCX, RAX 
BT RSI, RAX 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], -15 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -102 # instrumentation
SETNBE BL 
CMPXCHG SI, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
NOT BL 
BTS RSI, RDI 
AND SIL, 38 # instrumentation
NOT DIL 
JNO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX EAX, BX 
LEA ECX, qword ptr [RDX + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
BTS RAX, -122 
SAHF  
CMOVS DI, CX 
AND BL, 42 
XOR CL, DL 
CMC  
BTS EAX, 55 
AND DIL, 106 # instrumentation
SETLE CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
