.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DL, 81 
SETP DL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 9 
TEST CX, CX 
TEST DL, CL 
XADD CL, BL 
XCHG AX, AX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], -13528 
CMOVNP RBX, RDI 
CLC  
CMOVNS RCX, RBX 
MOV RDX, RDX 
NOT AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV BL, DIL 
NOT CL 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
CMPXCHG SIL, BL # instrumentation
LAHF  
XCHG EAX, EAX 
BTS EAX, EBX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND DIL, -118 # instrumentation
MOVSX ECX, CX 
SETNL SIL 
BTR EAX, 22 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EAX 
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 0 
AND RDX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RDX] 
OR AX, 15907 
NOT CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE ECX, dword ptr [R14 + RBX] 
SETZ BL 
BTR EBX, ESI 
AND RAX, -372499558 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
