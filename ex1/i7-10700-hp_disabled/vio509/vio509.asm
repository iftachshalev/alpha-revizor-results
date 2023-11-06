.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EBX, 127 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 6 
AND SIL, -122 # instrumentation
SETNO DL 
XCHG AL, DIL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], CL 
AND AX, -95 
SETNLE BL 
XOR AL, 99 
JS .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
LEA RSI, qword ptr [RDX + RSI + 13265] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 4 
AND SIL, -21 # instrumentation
SETL AL 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], AX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG EBX, EAX 
XOR BL, 32 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], DX 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1622402211 
CMOVS RBX, RSI 
MOV DL, 56 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
SETNBE AL 
SETNL DL 
XOR EAX, -653635407 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], BX 
TEST SIL, -20 
XCHG CX, AX 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BT BX, AX 
TEST AX, -27327 
LEA RDX, qword ptr [RDX + RBX] 
CMOVNP AX, CX 
MOV ECX, -1690246739 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
