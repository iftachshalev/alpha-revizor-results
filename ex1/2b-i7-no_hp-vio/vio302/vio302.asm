.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, RCX 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], AX 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 0 
TEST SIL, DL 
TEST EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RCX] 
CMPXCHG CL, AL 
CMOVNP RDX, RAX 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], CL 
XADD DL, SIL 
TEST AL, -14 
SETS AL 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], -61 
CMOVP RDI, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RDX] 
MOVSX DI, BL 
TEST RDX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RDX 
AND RBX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RBX], BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD RAX, RBX 
OR CL, BL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RAX] 
SETNP DL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RCX] 
TEST BX, AX 
CMOVP DX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RCX] 
CMOVNB RDI, RDI 
OR EDX, 50 
AND RAX, 1687888632 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], 125 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -38 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
