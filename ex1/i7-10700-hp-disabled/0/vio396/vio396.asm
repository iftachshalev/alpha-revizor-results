.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, -38 
XOR ESI, EDX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND DIL, -106 # instrumentation
SETNLE AL 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 4 
CWDE  
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 52 # instrumentation
CMOVO EDI, EDI 
BTR RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 7 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP ECX, dword ptr [R14 + RDI] 
JNP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], 1 
NOT RSI 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
MOV ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 4 
AND DIL, -125 # instrumentation
CMC  
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -57 # instrumentation
SETNP DIL 
XOR RAX, 246130810 
MOVSX ECX, BL 
TEST CL, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], DX 
AND AX, 12888 
MOV DI, BX 
TEST AL, SIL 
CMOVNS ESI, EAX 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -123 # instrumentation
CMOVLE ESI, ECX 
CWD  
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], BL 
TEST EAX, 1559547878 
OR EDX, EBX 
BTC SI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
