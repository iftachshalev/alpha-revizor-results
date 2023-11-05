.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG SIL, BL 
AND RAX, -118 
AND RDI, 80 
BT RSI, RAX 
BTS EDI, ECX 
AND SIL, -77 # instrumentation
SETB AL 
SETNS CL 
MOV SIL, AL 
OR RCX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RBX] 
SETNLE DL 
MOVZX RDI, CX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RSI 
CMOVNP ESI, EDI 
OR DIL, 22 
CMOVNL RDX, RDI 
AND RAX, -992307356 
MOVSX RSI, DI 
BTS ESI, 66 
AND SIL, 76 # instrumentation
SETNO DL 
STC  
AND RDX, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RDX] 
BTS DI, -17 
OR BL, CL 
CMOVP DX, SI 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDI] 
CMOVL DI, DI 
SETNZ DL 
CMOVNLE ESI, EAX 
AND CL, AL 
NOT DI 
XOR BL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
