.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RDI] 
BT BX, -41 
AND RCX, RBX 
XOR AX, -126 
BTS ECX, 120 
BT DX, 40 
AND DIL, -114 # instrumentation
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 2 
AND RSI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RSI] 
CMOVNBE BX, BX 
CMOVO RDI, RCX 
SETP DIL 
CMOVLE EDI, EDX 
MOV DI, 21896 
CMOVO EAX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 30 # instrumentation
CMOVNZ RAX, RCX 
TEST AL, -63 
BTC EAX, 61 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO DI, word ptr [R14 + RBX] 
CMOVB RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RAX] 
CMOVZ CX, CX 
AND AL, -60 
JMP .bb_main.3 
.bb_main.3:
BTC CX, 47 
OR CL, -100 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], 51 
SETP DL 
MOV DL, BL 
OR EBX, -21 
XADD RBX, RCX 
AND CL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
