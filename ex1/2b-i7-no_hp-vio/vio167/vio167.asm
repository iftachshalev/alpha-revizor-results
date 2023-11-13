.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CBW  
OR DL, BL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, ECX 
CMPXCHG BL, BL 
TEST EAX, 1357128921 
CMOVNP EDX, ESI 
XOR CL, 75 
CMOVO ECX, ESI 
AND EAX, 71 
CMOVLE ECX, EDI 
SETNO BL 
SETNO CL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EBX, 107 
CMOVL AX, BX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], 5 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -118 
AND EAX, 2085636920 
AND RBX, -30 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EAX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -26 
SETNZ AL 
CLC  
BTR RCX, RDX 
CMPXCHG CL, CL # instrumentation
AND SIL, -72 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EDI 
CMOVZ BX, DX 
BTC RSI, 93 
CMOVNB EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -90 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
