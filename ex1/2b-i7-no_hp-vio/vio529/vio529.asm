.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -111 # instrumentation
BTC BX, -9 
SETNZ SIL 
TEST AL, -11 
CMOVO BX, DI 
AND AX, -28432 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 3 
XADD EDI, EAX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RDX] 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -122 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RCX] 
AND AL, -110 
TEST AL, AL 
SETNP DL 
BT RCX, RAX 
AND SIL, 14 # instrumentation
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, -92 
OR RAX, 1700109154 
AND RBX, 0b1111111111111 # instrumentation
XOR RBX, qword ptr [R14 + RBX] 
CMOVNZ EBX, ECX 
TEST AX, 31950 
MOVZX AX, AL 
SETNBE CL 
BT RBX, -61 
TEST RAX, 1104355981 
CMOVNS DX, AX 
CMOVNP EDX, ESI 
XOR RSI, RSI 
XOR RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], -2023249559 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
