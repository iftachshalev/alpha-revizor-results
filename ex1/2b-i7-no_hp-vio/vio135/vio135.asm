.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND ECX, 52 
TEST AL, 54 
AND RBX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RBX] 
SETNS AL 
MOV EDI, -656151111 
CMOVB EAX, EDX 
TEST AL, SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
XOR SI, -99 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP DI, word ptr [R14 + RCX] 
AND RBX, 59 
MOV DL, BL 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], 36 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -36 # instrumentation
CMOVNP DX, BX 
BTS RSI, RDX 
MOVZX ECX, BL 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RCX 
SETLE CL 
MOVZX ESI, CL 
MOV DX, -28269 
BTC DI, DI 
AND RCX, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RCX] 
CMPXCHG BL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
SETP AL 
CMOVNL DX, BX 
CLC  
MOVSX ESI, DL 
BTC BX, AX 
AND SIL, -104 # instrumentation
CMOVL ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
