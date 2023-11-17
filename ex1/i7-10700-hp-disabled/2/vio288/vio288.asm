.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 118 # instrumentation
CMOVNS RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDX, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
CMOVNS SI, AX 
XOR CL, 119 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 38 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
SETNB DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], CL 
AND CX, BX 
XCHG BL, CL 
SETNS DL 
NOT BL 
AND EDI, -126 
JLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], 1 
AND DIL, 49 
MOVZX ECX, CL 
CMOVNP EAX, EAX 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -100 # instrumentation
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RSI] 
CMOVNO AX, AX 
XCHG EBX, EAX 
CMOVNLE RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -79 
JMP .bb_main.4 
.bb_main.4:
TEST ECX, EDX 
SETL AL 
MOV BL, BL 
CBW  
TEST DX, BX 
TEST RDX, -135738963 
CMOVO DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
