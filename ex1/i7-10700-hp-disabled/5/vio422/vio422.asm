.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD DX, CX 
AND RAX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RAX] 
MOVZX ECX, DX 
CMOVNO EDX, EDX 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], CX 
CMOVB EBX, EDI 
NOT ECX 
AND BL, AL 
AND AL, 24 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], ECX 
TEST ESI, -1843169720 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST AX, 8262 
XOR AL, -48 
TEST RCX, 1505360403 
JP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CMPXCHG DL, CL 
CMOVLE EAX, ECX 
CMOVNLE BX, CX 
MOVSX RCX, DX 
XADD DI, DI 
OR AL, -109 
AND RBX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
XCHG EDI, EAX 
MOVZX EDX, DL 
BTR RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 1896100913 
XADD RDI, RAX 
TEST AL, 56 
CMOVZ RDX, RAX 
CLC  
BTS RBX, 60 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
