.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST BL, 68 
BTS RDX, -41 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], AL 
TEST AL, -64 
AND RBX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RCX 
AND SIL, 84 # instrumentation
CMOVNLE SI, DI 
BTC RDX, -42 
AND RBX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -115 
CMOVB RAX, RBX 
MOVZX EDX, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 7 
JNB .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST AX, -29831 
XOR DIL, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RAX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
OR CL, -69 
CMOVL RBX, RSI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 108 # instrumentation
CMOVNP RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDX] 
XOR RAX, RDI 
CBW  
JMP .bb_main.3 
.bb_main.3:
AND DIL, -36 # instrumentation
CMOVO EDX, EAX 
XCHG SIL, DL 
BTC RDI, 42 
JMP .bb_main.4 
.bb_main.4:
XCHG DX, AX 
XADD RBX, RCX 
SAHF  
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, EDX 
AND SIL, 73 # instrumentation
CMOVP RSI, RDX 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
