.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX DX, SIL 
XOR AX, -38 
MOVZX RAX, AX 
CMOVB RBX, RBX 
CMPXCHG BL, AL 
XOR CX, -8 
AND RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], RAX 
AND SIL, -86 # instrumentation
CMOVP EAX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RBX] 
TEST CL, -60 
NOT CL 
BTS DX, -59 
AND RDX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDX], -128 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
CMOVZ EDX, ECX 
XADD EDX, EAX 
CMOVNZ ECX, ECX 
TEST AX, 22166 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDX] 
MOV CX, CX 
AND BX, AX 
NOT RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], SI 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG BL, BL # instrumentation
MOVSX EDX, word ptr [R14 + RSI] 
LAHF  
CMOVNS ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], DIL 
CMPXCHG RDI, RDI 
MOV EBX, 222967134 
CMOVNP EDI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
