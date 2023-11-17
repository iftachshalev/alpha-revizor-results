.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RBX 
TEST AX, SI 
AND SIL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDI] 
XADD AL, DL 
SAHF  
SETBE AL 
SETS BL 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND EAX, -2073948360 
AND RDI, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RDI] 
SETNZ DL 
AND RCX, RDI 
XCHG RBX, RAX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
BTS BX, BX 
AND RCX, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RCX] 
TEST ESI, 1189089980 
MOV DIL, -112 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], -99 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], DI 
CMOVBE DI, SI 
BTC SI, 120 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RSI] 
XOR SIL, AL 
MOVSX ECX, AL 
NOT RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], EDI 
MOV DIL, -93 
SETS DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDI] 
OR DIL, 85 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
