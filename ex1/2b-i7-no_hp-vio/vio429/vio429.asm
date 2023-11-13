.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], -14357 
CMPXCHG CL, CL 
SETNL SIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RBX] 
SETZ CL 
CMOVNLE AX, SI 
MOV CL, AL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], CX 
CMOVBE RBX, RSI 
BTR RAX, -3 
AND SIL, -114 # instrumentation
SETNO DIL 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
XCHG AL, CL 
CBW  
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], -74 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -49 # instrumentation
CMOVNBE RCX, RBX 
XADD ECX, EBX 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND RAX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RAX] 
SAHF  
BTR CX, -49 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], DI 
BTS EDI, -118 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
TEST BL, -15 
BSWAP EBX 
BT DI, -107 
AND EAX, 652412621 
CMOVNS BX, DI 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EDX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
