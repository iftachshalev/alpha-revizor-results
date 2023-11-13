.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, CL 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
BTR AX, -38 
SETB BL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], SIL 
CLC  
OR AL, 63 
AND DI, -96 
AND RSI, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RSI], ESI 
BTR DI, DI 
AND SIL, -116 # instrumentation
SETNL AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 4 
AND SIL, -39 # instrumentation
CMOVNLE RDX, RSI 
TEST RCX, RBX 
AND EAX, 935000146 
LEA EBX, qword ptr [RDX + RDI] 
OR CX, DX 
SETS BL 
MOV CL, -43 
CMPXCHG DI, DI 
XOR SI, 109 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RAX] 
SETNP CL 
XADD RDI, RDX 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTS dword ptr [R14 + RAX], ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RCX], ECX 
BSWAP RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], SIL 
CMOVNLE ESI, ESI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EAX 
XOR RSI, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
