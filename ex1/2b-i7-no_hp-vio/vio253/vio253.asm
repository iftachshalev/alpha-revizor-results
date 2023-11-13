.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 71 # instrumentation
CMOVNL CX, AX 
SETNO DL 
AND ESI, EBX 
BT BX, -8 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], BX 
CWDE  
CMOVLE BX, DX 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], BX 
AND EAX, -4 
XCHG AL, CL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], CL 
CMOVNZ EAX, EDI 
AND RDX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDX] 
XADD ESI, EDX 
TEST EAX, 111915133 
XCHG SI, AX 
CMOVNBE RDX, RDX 
CMPXCHG DL, DIL 
BTS RDX, -121 
AND DIL, -39 # instrumentation
CMOVZ DI, DI 
SETO DL 
BTR RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 51 
MOV DL, -91 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDI] 
BTC RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RDI] 
XOR AX, 25489 
OR RCX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
