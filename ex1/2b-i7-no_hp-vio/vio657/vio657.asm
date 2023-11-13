.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR SIL, 91 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RDX] 
TEST RAX, 2014445320 
CMOVS RBX, RSI 
MOV EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RCX 
CMOVBE RDX, RDX 
XADD EAX, EAX 
AND EAX, 73 
CMPXCHG SIL, SIL 
CMOVP RCX, RDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RDI] 
CMOVNLE EDI, EDI 
XOR CX, DX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], 126 
MOVZX DI, DL 
SETNLE AL 
CMOVNP DX, CX 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -36 # instrumentation
CMOVZ DX, SI 
CMOVNLE BX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
LEA DI, qword ptr [RSI + RCX] 
TEST AL, CL 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 6 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DL 
CMOVZ AX, CX 
XCHG RSI, RAX 
AND RCX, 82 
MOV BL, -41 
XCHG SIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
