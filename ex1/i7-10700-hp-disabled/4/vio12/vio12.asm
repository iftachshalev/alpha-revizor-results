.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RSI, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RAX] 
CMOVS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
MOV SI, -1422 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], CL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT RDI 
BTS DX, BX 
XADD RBX, RDI 
CMOVNP EDI, EDX 
AND CL, CL 
SETNS CL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
CMOVNBE DX, DX 
AND CX, 87 
MOV AX, 3427 
JBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -49 # instrumentation
SETNLE DL 
CMOVB ECX, ESI 
OR DI, 0b1000000000000000 # instrumentation
BSF AX, DI 
BTR RCX, -75 
MOV SIL, BL 
MOVZX ECX, DL 
SETNBE CL 
BTS AX, 20 
AND DIL, DL 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RSI 
SETNZ DL 
CMOVNB CX, CX 
NOT BX 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RSI], 5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
