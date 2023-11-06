.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], 84 
AND RSI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RSI] 
XOR CX, AX 
TEST CL, AL 
AND AL, 122 
CMPXCHG DIL, BL 
MOVSX BX, SIL 
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 654678775 
CMOVNS RCX, RAX 
MOV AL, BL 
MOVSX DX, CL 
OR EDI, ESI 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], 5 
AND DIL, 37 # instrumentation
CMOVNP RCX, RAX 
OR DIL, BL 
CMPXCHG DI, BX 
SETL CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], AL 
BT ESI, EBX 
CMOVZ RBX, RBX 
BTR BX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], 43 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTR EBX, EAX 
CMPXCHG BL, AL # instrumentation
AND SIL, 17 # instrumentation
LAHF  
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RAX 
AND BX, 61 
XOR RBX, -45 
MOVZX CX, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RBX], DX 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
