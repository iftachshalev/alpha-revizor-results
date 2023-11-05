.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVO RAX, qword ptr [R14 + RAX] 
CMOVP RDI, RCX 
MOVZX DX, CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR DX, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 58 # instrumentation
CMOVNLE CX, SI 
XADD AX, DI 
STC  
BTC RSI, 31 
TEST RAX, 2078567330 
TEST AX, 12466 
SETNS AL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTS ESI, EDX 
CLC  
XOR RAX, -147731048 
AND RAX, -1576121939 
BTC BX, 19 
AND RCX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RCX] 
SETZ SIL 
NOT SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], -119 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
CDQ  
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
CMPXCHG CL, CL 
XCHG RAX, RDX 
SETS AL 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 115 # instrumentation
NOT BL 
CMOVNB AX, BX 
CMPXCHG RDI, RSI 
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 6 
CLC  
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
