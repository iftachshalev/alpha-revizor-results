.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RSI] 
AND AL, 44 
SETS SIL 
LOOPNE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -60 
NOT DL 
OR EBX, -68 
CMOVNO RCX, RSI 
SETNL DIL 
AND RBX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RBX] 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RCX 
AND RDX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDX], AX 
CMOVNL RCX, RBX 
OR DL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ESI 
BTC EDI, 80 
AND SIL, -80 # instrumentation
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -31 
AND RAX, 2105567609 
MOVZX DI, DL 
CMOVL ECX, ECX 
XADD CL, AL 
AND RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RSI] 
TEST AX, 3225 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
CMOVL EDX, ECX 
XOR AL, -45 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -128 
JMP .bb_main.4 
.bb_main.4:
MOV RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], CX 
SETNBE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
