.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 90 # instrumentation
SETBE BL 
AND RDX, 0b1111111111111 # instrumentation
MOV ESI, dword ptr [R14 + RDX] 
NOT AL 
TEST DX, -4846 
MOV RDI, -8126509282788633940 
XOR AX, 15407 
CMOVNLE SI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RCX] 
BTS RDI, -98 
XADD AL, CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 0 
MOVSX EBX, CX 
AND AX, -16926 
CMPXCHG BL, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RAX], DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT EBX 
TEST CL, CL 
MOVZX RDI, CL 
AND AL, 107 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
BTS RDX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EDI, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
NOP  
NOT AL 
SETNS DL 
XCHG DI, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], 122 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 9205 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 3 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
