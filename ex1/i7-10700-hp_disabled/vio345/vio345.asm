.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -45 # instrumentation
CMOVL RDI, RAX 
CWD  
TEST SIL, 48 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RDX] 
AND SIL, BL 
BTR RCX, 14 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV ECX, EBX 
AND SIL, DIL 
OR DL, 121 
CMOVO RAX, RDX 
OR ESI, 114 
SETBE DL 
AND RAX, 1511539314 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], 3 
CMOVZ BX, SI 
MOV BL, BL 
OR RSI, 56 
BT RAX, 57 
AND SIL, -124 # instrumentation
CMOVNBE RDX, RBX 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AX, 2239 
MOVZX RAX, AX 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
TEST BX, 1883 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG DIL, BL # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
CMOVNLE EAX, EDX 
LAHF  
TEST AL, 70 
CMOVP EDI, EDI 
MOVSX EAX, CL 
NOT EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
