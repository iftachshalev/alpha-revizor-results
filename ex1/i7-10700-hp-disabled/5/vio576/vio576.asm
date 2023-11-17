.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDI] 
BTR DX, SI 
BTC ESI, ECX 
BSWAP EBX 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], DI 
NOT BL 
NOP  
AND SIL, 23 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR RAX, 164325032 
MOV ECX, 1557238797 
CMOVL EAX, ECX 
CWD  
BTR RCX, 65 
AND SIL, -14 # instrumentation
SETNP DIL 
SETO DIL 
JMP .bb_main.2 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -287309228 
CMOVNBE DI, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], EAX 
MOVSX EDI, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 102 # instrumentation
SETO AL 
TEST SIL, -14 
CMOVL RCX, RDI 
XCHG DL, DL 
TEST EAX, 36050797 
BTS BX, 70 
XCHG DL, BL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], DL 
MOV BL, DL 
MOVSX ESI, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
