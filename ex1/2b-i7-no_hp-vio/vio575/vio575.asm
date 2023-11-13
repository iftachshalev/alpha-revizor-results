.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR CX, CX 
CMOVLE ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
XOR RAX, -1133803492 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], -117 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDI] 
STD  
AND RAX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RAX] 
CMOVB ESI, EAX 
CMPXCHG EBX, EDI 
CMOVO EDX, ESI 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RSI] 
CMOVNZ DI, DI 
XOR AL, -122 
CBW  
AND RBX, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RBX] 
STC  
JRCXZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], DX 
MOV ESI, 140623780 
CMOVNLE SI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDX], ECX 
MOVSX DI, DL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDX], 125 
NOT CL 
CMOVNO AX, DX 
SETNS DL 
CMOVNLE RSI, RDX 
CMPXCHG RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RDI], 3 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
TEST RAX, -8713723 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
