.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EDI, 84 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND DIL, 50 # instrumentation
SETNZ CL 
STD  
MOV BL, 126 
SETNB BL 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EDI 
AND SIL, -72 # instrumentation
CMOVNP SI, AX 
OR RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
TEST CL, -73 
MOVZX ESI, CL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA RCX, qword ptr [RSI + RSI] 
AND AX, 15172 
CLC  
LEA ESI, qword ptr [RSI + RDI + 45469] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE SI, word ptr [R14 + RBX] 
CMOVLE EDX, ECX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], -34 
CMOVBE BX, BX 
SETNZ SIL 
SETNS CL 
XOR AL, AL 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RDI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
AND AX, -26288 
STC  
CMOVBE RAX, RDI 
AND CX, -117 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RDX], EDX 
MOV DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
