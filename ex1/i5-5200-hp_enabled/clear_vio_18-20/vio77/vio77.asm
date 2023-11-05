.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -68 # instrumentation
CMOVL RBX, RSI 
TEST SIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
SETNP DIL 
XCHG RDI, RDX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
CMPXCHG EBX, EAX 
AND RAX, 1834439365 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 66 # instrumentation
SETO DIL 
SETBE BL 
MOV EDI, EBX 
BTC RDI, -11 
BTC EAX, ECX 
XCHG CL, AL 
XCHG RDI, RDI 
XADD BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], RCX 
SETBE AL 
XOR AX, -1117 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST BX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RDX] 
AND EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
XOR CL, CL 
XOR AL, 9 
SETNLE BL 
XOR RDX, 86 
CMOVLE RDX, RSI 
BTR AX, -75 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RDX] 
MOVSX DI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
