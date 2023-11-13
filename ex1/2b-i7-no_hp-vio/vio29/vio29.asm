.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
CMOVO RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
OR AX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], -56 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 1 
AND RCX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RCX] 
SETB DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
SETZ DL 
MOVSX EAX, CL 
AND EAX, 1942273581 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -63 # instrumentation
CMOVS AX, DX 
SETNLE BL 
NOT SIL 
CMOVBE RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 1 
AND DIL, -39 # instrumentation
CMOVNO RSI, RDI 
BTC DX, BX 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RCX], AX 
BTS CX, -70 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
BTR DI, 65 
OR BL, 11 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RBX] 
SETS BL 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 0 
AND DIL, -119 # instrumentation
SETNL CL 
BTC RDX, 43 
BTR BX, DX 
AND RAX, 1535726215 
XOR CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
