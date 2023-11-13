.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 1064116187 
AND RCX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RDX] 
SETNZ DL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RAX 
MOVSX ECX, BL 
BTC DI, 108 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RBX], CX 
CMOVP ESI, EAX 
TEST EAX, 1525188593 
XCHG BX, CX 
NOP  
BTS AX, DX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], EDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -126 # instrumentation
CMOVNB RCX, RDI 
BTR BX, SI 
AND SIL, 3 # instrumentation
SETLE DIL 
MOVSX EAX, DIL 
SETNO SIL 
XOR RAX, -262421374 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
MOVSX CX, AL 
OR BX, 0b1000000000000000 # instrumentation
BSF DX, BX 
XCHG CX, AX 
TEST EAX, -1505038028 
AND DIL, -63 
CMOVNLE SI, BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RCX, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RBX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], -24 
XOR AL, -27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
