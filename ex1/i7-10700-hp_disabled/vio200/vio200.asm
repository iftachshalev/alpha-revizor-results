.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -43 # instrumentation
CMOVNB RDI, RAX 
CMOVP SI, BX 
OR CL, AL 
TEST RAX, 677907203 
SETLE DIL 
OR AX, 79 
NOT RAX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], 6 
CMOVNB BX, BX 
CMOVNS RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RBX] 
CMOVNLE RSI, RBX 
AND DIL, 22 
SETNZ AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC BX, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RCX] 
CMPXCHG DL, BL 
AND EDX, EDI 
AND AL, 91 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP CX, word ptr [R14 + RBX] 
MOVZX DX, SIL 
BTC ESI, -91 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RDI] 
CMOVZ EDI, EAX 
SETP CL 
CMOVZ AX, CX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 7 
AND DIL, 8 # instrumentation
SETNL CL 
CMOVLE ESI, EBX 
SETNO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
