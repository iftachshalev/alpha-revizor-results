.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
NOT DIL 
OR AL, DL 
TEST RAX, 1012367470 
CMOVNZ RCX, RCX 
TEST SI, -29941 
NOT EAX 
CMOVNO RCX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RDI] 
XOR EAX, -223816234 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], ESI 
XADD RSI, RBX 
XOR SI, DX 
SAHF  
BTR RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 7 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 15 # instrumentation
MOVSX BX, DIL 
CMOVP RDI, RSI 
CMOVNZ SI, BX 
CLC  
CMOVNLE EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDX, dword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], AL 
SETZ CL 
NOP  
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RDI] 
AND DIL, 115 # instrumentation
CMOVB EBX, ECX 
XOR SIL, DL 
BT EDI, -77 
TEST EDI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
