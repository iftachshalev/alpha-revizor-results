.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -36 
CLD  
NOT CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 70 
MOV RDI, -8945606466455924286 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
MOV ESI, -370641546 
AND RDI, 0b1111111111111 # instrumentation
AND SI, word ptr [R14 + RDI] 
SETNZ DL 
XCHG DL, CL 
CMOVNL ESI, ECX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR DIL, 116 
CMOVNB AX, BX 
BTS SI, -116 
AND DIL, -33 # instrumentation
SETLE CL 
MOV EAX, -212393781 
AND RBX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -75 
XCHG EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RAX] 
MOV DIL, -35 
BTR RBX, -7 
CMPXCHG RBX, RBX 
OR RAX, -564844522 
OR DIL, -25 
BT AX, CX 
CMOVZ RBX, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RAX], RDI 
MOVZX EDI, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
