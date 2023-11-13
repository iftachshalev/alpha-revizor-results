.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -127 # instrumentation
MOV CL, BL 
SETLE AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RBX 
OR BX, 0b1000000000000000 # instrumentation
BSR CX, BX 
AND DIL, -3 # instrumentation
CMOVLE EAX, EBX 
TEST SI, CX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], -71 
AND RAX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RAX], 7 
MOVSX RSI, DIL 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], BX 
CMOVZ RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RBX] 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -22 # instrumentation
CMOVO EDI, EBX 
SETNZ CL 
MOV ESI, 1859474984 
CMOVLE ECX, ESI 
SETNP CL 
BTR EAX, ESI 
OR AL, 69 
CMOVNB DI, BX 
CMOVNS EDI, ECX 
SETS DL 
BTR RAX, -123 
AND SIL, -51 # instrumentation
SETO AL 
CMOVLE EDI, EDI 
SETNB CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RAX] 
XADD SI, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 7 
XCHG RCX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
