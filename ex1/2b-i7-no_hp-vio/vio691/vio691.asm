.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR BX, BX 
CMOVS EDX, EDI 
MOVZX RDI, AX 
CMOVNO BX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
CMOVNBE RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], EBX 
BTC CX, DI 
AND SIL, -113 # instrumentation
CMOVNL RSI, RBX 
XCHG BL, SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 1 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], EAX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
TEST AL, 41 
XADD RDI, RSI 
XCHG CL, DL 
XCHG BX, DX 
CMOVO AX, DX 
CMOVNLE EDX, ECX 
TEST AL, CL 
MOVSX EDI, DIL 
XOR AL, 53 
CDQ  
CMOVB RDX, RCX 
XOR RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
CMOVO DX, DI 
CMOVLE RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RSI] 
BTS CX, CX 
CMOVB EBX, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
