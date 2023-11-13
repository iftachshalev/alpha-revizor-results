.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RSI, qword ptr [R14 + RAX] 
CMOVNS EDX, ESI 
XADD EBX, ESI 
SETNB BL 
CMOVB RBX, RDX 
NOT EAX 
BT RDX, RBX 
MOVSX ECX, AL 
CMOVZ SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -111 
AND BX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RAX] 
XCHG RDI, RAX 
BTR RBX, RDX 
NOT BL 
CMOVNB SI, DI 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], SIL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -108 # instrumentation
BTS BX, -79 
SETNZ DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RAX], 5 
CMPXCHG CL, BL 
BTR ESI, ESI 
MOVSX DI, BL 
AND RSI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RSI] 
CBW  
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, qword ptr [R14 + RCX] 
CMOVBE ECX, EDI 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], BL 
BTR RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
