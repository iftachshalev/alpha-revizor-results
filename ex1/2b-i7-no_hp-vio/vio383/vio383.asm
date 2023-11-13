.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], ESI 
NOT RSI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
BT BX, 77 
TEST CL, AL 
CMOVP EAX, ESI 
TEST EAX, 607956034 
CMOVP ECX, EDX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], -1048937404 
CMC  
CMOVO DI, CX 
AND DIL, 22 
AND ESI, -20 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTR qword ptr [R14 + RDI], RAX 
AND SIL, 94 # instrumentation
CMOVNL EBX, EDX 
OR AL, -104 
CMOVLE RBX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 3 
MOVZX DX, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RDX] 
BT RSI, -22 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RAX 
CWDE  
CMOVNBE BX, SI 
SETNS CL 
BSWAP RSI 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RDI, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
