.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 3 # instrumentation
CMOVNL RBX, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], ECX 
TEST EAX, -1665495685 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RAX] 
XCHG EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RAX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 63 # instrumentation
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], ESI 
BTS CX, SI 
AND SIL, -116 # instrumentation
CMOVL AX, CX 
TEST AX, 25303 
NOP  
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RSI 
XADD DIL, DIL 
MOVSX EDI, CL 
STD  
AND RDI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RDI] 
CMOVNB RCX, RAX 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 3 
AND SIL, -78 # instrumentation
SETP BL 
XCHG AL, CL 
BTR EAX, EDX 
AND DIL, 96 # instrumentation
SETNP SIL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, -61 # instrumentation
CMC  
CMOVNLE RAX, RDI 
CMOVNP DI, SI 
BTS RSI, RCX 
CMOVZ RDX, RDI 
MOVZX EBX, SI 
CMPXCHG DX, DX 
CMOVNBE ECX, ECX 
CMOVNZ RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
