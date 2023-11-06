.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR DI, BX 
AND SIL, 71 # instrumentation
CMOVL DX, CX 
XOR CL, -76 
MOVZX EDX, DI 
CMOVZ RSI, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RDI], RBX 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EBX 
JB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
OR ESI, -124 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDX] 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BTC RBX, RDX 
MOVZX RAX, AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RDI 
CLD  
CMPXCHG DI, DX 
CMOVO ECX, ESI 
BT RDI, RCX 
AND SIL, -123 # instrumentation
JNS .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RBX 
CMOVBE DX, SI 
SETNO CL 
XCHG ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], -12 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
CMOVBE BX, SI 
OR EAX, -1245582813 
BTC EDX, EAX 
BTR EBX, ESI 
XOR AX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
CLD  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
