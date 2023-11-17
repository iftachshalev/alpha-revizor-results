.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD DX, AX 
OR DI, -33 
CMPXCHG DIL, CL # instrumentation
LAHF  
XOR DL, AL 
SETS AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RCX 
JL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 39 # instrumentation
SETLE AL 
MOV CL, -112 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], -40 
CMOVNLE SI, AX 
AND SI, DX 
SETLE CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RDI] 
SETS DIL 
JMP .bb_main.2 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], -123 
BTR RAX, RDI 
BSWAP ESI 
AND AL, -117 
AND AL, BL 
JMP .bb_main.3 
.bb_main.3:
BTS RCX, 105 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -35261652 
TEST EAX, -704916123 
BTR RSI, -125 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], CL 
LEA ESI, qword ptr [RDX + RAX + 17845] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -22 
MOVSX EBX, BL 
TEST CX, -17921 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -29 # instrumentation
CMOVZ CX, DI 
AND RCX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RCX] 
XCHG SI, AX 
BT RCX, -5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
