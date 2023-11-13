.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BT word ptr [R14 + RDX], DX 
TEST RSI, -1071083147 
SETLE AL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND SIL, 35 # instrumentation
NOT RCX 
CMOVB DX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTR dword ptr [R14 + RDX], ESI 
TEST AX, -17097 
XCHG ECX, ESI 
BSWAP RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], DL 
OR SIL, -50 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDI], ESI 
CMPXCHG CL, SIL 
BTR RCX, RDX 
BT DX, DX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -44 # instrumentation
CMOVLE EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RBX] 
NOT ECX 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RDX], BX 
CMOVB ECX, ESI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
AND DIL, -6 # instrumentation
CMOVNS AX, AX 
OR AX, 0b1000000000000000 # instrumentation
BSR SI, AX 
AND SIL, 85 # instrumentation
LEA SI, qword ptr [RBX] 
CMOVB SI, AX 
CMOVO DI, DX 
BT EDI, EDX 
STC  
BT RDX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RBX], -48 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
