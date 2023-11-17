.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDX] 
CMOVNO RBX, RSI 
XOR AL, 58 
CMOVNBE BX, BX 
NOT DI 
JMP .bb_main.1 
.bb_main.1:
BTC EDX, EDI 
AND SIL, 57 # instrumentation
CMOVNLE BX, DX 
SETNS CL 
OR RAX, 1757534226 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], AL 
TEST AX, 4158 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
OR AL, 124 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDI] 
JP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RDI 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RCX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND DIL, -30 # instrumentation
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT RBX, -14 
AND SIL, -95 # instrumentation
LEA RAX, qword ptr [RDX] 
SETNLE AL 
BTS EDX, EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], DL 
CMOVNL RCX, RCX 
TEST EAX, 1999024223 
MOVSX AX, AL 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -15 # instrumentation
CMOVNP RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 3 
BTR EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
MOV SIL, AL 
CMPXCHG EBX, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
