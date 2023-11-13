.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RDI] 
MOVZX DI, AL 
OR AL, BL 
SETNLE DL 
XOR EDI, -98 
CMOVS SI, DX 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
TEST BL, AL 
CMOVNP RDX, RCX 
CMOVO DX, CX 
SETBE DL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
CMOVBE RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], BX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RSI] 
CMOVNO CX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], CL 
SETS BL 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], BL 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], 0 
CMOVBE SI, AX 
CMOVNS EDX, EDI 
TEST AL, 53 
OR SIL, 95 
XADD DL, SIL 
BT EDX, 51 
TEST EAX, -1800033158 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
