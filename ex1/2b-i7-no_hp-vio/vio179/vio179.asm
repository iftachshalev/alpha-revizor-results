.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CX, BX 
BTS DI, 124 
BTS DI, 28 
AND SIL, -21 # instrumentation
SETBE DL 
SETNL CL 
CMOVNLE ECX, ECX 
TEST SIL, 0 
SETNB DIL 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], EAX 
XOR AL, -1 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 24 # instrumentation
SETNB SIL 
SETO BL 
LEA RBX, qword ptr [RBX] 
SETS DIL 
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
AND AX, -28892 
BTS RDX, 61 
XOR AX, 9205 
AND RAX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RAX] 
CMOVBE ECX, EDX 
AND DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RDI] 
BTC BX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RBX], 1 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RAX] 
CMOVNB ESI, ECX 
MOVZX CX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDX] 
CMOVO RBX, RAX 
CMC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
