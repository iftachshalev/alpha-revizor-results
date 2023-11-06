.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -42 # instrumentation
CMOVNZ RSI, RBX 
BTS EBX, 45 
XOR AX, 11268 
CMOVNO RBX, RSI 
SETO DL 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RDI] 
OR BL, -11 
MOVZX RBX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDX] 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
MOV EAX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], -126 
CMOVNB CX, SI 
OR RAX, -1118440876 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RBX, qword ptr [R14 + RBX] 
MOV ECX, EBX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
MOVZX RSI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RSI] 
BTC BX, DI 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -107 # instrumentation
CMOVZ ECX, ECX 
AND RAX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RAX], DI 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
TEST RAX, -1718551801 
CMPXCHG BL, AL 
SETL BL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, 80 # instrumentation
XCHG EDI, EDX 
CMOVNZ EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
AND DIL, -60 # instrumentation
SETNL AL 
TEST ESI, EDX 
XOR DIL, 123 
CMOVNP EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE EBX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
