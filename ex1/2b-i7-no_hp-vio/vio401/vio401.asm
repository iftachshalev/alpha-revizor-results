.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX EDX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDI] 
AND BL, -25 
SETP DL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
CMOVNLE BX, SI 
AND EDX, EDX 
XCHG BL, AL 
CMOVP RBX, RDX 
XOR DIL, -89 
SETP SIL 
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, RSI 
NOT RBX 
MOVSX EAX, DIL 
CMOVNL SI, AX 
NOT ESI 
CMOVNLE ESI, EAX 
XADD RBX, RAX 
AND AL, -58 
AND CL, BL 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RDX 
AND RDI, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RBX, qword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RBX] 
MOV AL, -109 
SETLE DL 
SETLE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
