.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT ESI, ESI 
AND SIL, -22 # instrumentation
SETNS DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMPXCHG DL, CL 
BT CX, -4 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDI 
CMOVB CX, AX 
MOV CL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
AND BL, AL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ECX 
NOT RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND SIL, -18 # instrumentation
SETB DL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EDX, ECX 
AND CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RAX], 0 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDX] 
CMOVP RAX, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], DX 
BTS EDI, -96 
MOVZX EBX, DL 
BT SI, -108 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RAX] 
SETNB DL 
MOVZX RCX, SIL 
CMOVL EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RDI] 
BTR EAX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
