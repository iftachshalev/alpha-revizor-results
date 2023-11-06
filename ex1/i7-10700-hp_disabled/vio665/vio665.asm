.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 22437 
CMOVNP RBX, RCX 
CMPXCHG DI, SI 
STD  
OR RAX, 1642171739 
MOVZX ECX, CL 
AND RAX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], EDX 
XOR EAX, -1363248430 
SETNLE BL 
CMOVNLE RBX, RAX 
CMOVS DX, BX 
CMOVL EAX, ECX 
CMOVNS RBX, RAX 
SETS CL 
AND RCX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EAX 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
CMOVLE RAX, RCX 
MOV RBX, -7168997791919218281 
CMOVL RAX, RDI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -123 # instrumentation
CMOVNB EAX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
BTC DX, SI 
BTC DI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RSI] 
CMPXCHG BX, SI 
CMC  
BTS RBX, RCX 
TEST RBX, RCX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RSI] 
AND AX, 26134 
LEA EAX, qword ptr [RCX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], -22 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
