.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -45 # instrumentation
SETLE DL 
OR SIL, 9 
SETO DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
CMOVLE ECX, EDI 
BTC ESI, -29 
BTR ESI, ESI 
TEST AL, -108 
AND RSI, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RSI] 
CMOVNLE DI, BX 
CMOVBE RDX, RDI 
OR SIL, AL 
SETBE AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 59 # instrumentation
CMOVNO EBX, EBX 
SAHF  
BT RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RCX] 
XOR AL, -80 
XOR RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
SETNZ AL 
XOR DX, AX 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RSI 
AND SIL, 118 # instrumentation
CMOVNBE RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
BTC EAX, -8 
BTC CX, 73 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RDX], RAX 
BTC EDI, EDI 
AND SIL, -103 # instrumentation
CMOVB AX, BX 
CMOVNO DX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
