.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT EDI 
OR AL, -16 
MOVZX ECX, CL 
BTC ESI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
MOV CX, DX 
LEA DI, qword ptr [RDI] 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
AND AX, -19476 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RAX], -49 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RCX 
CMOVNS EAX, ECX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -63 # instrumentation
MOV BL, 98 
XCHG CL, CL 
SETBE DIL 
CMOVS EAX, EDX 
XCHG DI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RSI] 
MOVZX EBX, SIL 
CMOVNL RSI, RDI 
XADD EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], BL 
CMOVL RAX, RDX 
AND RSI, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RSI] 
CMOVO AX, SI 
BT DX, 76 
MOVSX EDX, BL 
BT ESI, EAX 
TEST RAX, -178107496 
CWD  
XOR DL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
