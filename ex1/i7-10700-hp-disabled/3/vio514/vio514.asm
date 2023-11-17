.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG CL, DL 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RBX 
CMOVNL RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], DX 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 6 
JBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -50 
NOT DX 
TEST RAX, 1943809681 
XCHG SI, DI 
SETS BL 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
OR DL, BL 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AL, 85 
SETL CL 
XCHG CX, AX 
MOV EDX, -149450473 
SETBE AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDI] 
CMOVNS DX, DI 
NOT AL 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EDI 
SETNO AL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR AL, 63 
XCHG BL, AL 
SETNBE DIL 
XOR AL, -67 
MOVSX EBX, BX 
BTC AX, SI 
AND DIL, -49 # instrumentation
CMOVNB ECX, EDI 
SETBE DL 
SETNLE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
