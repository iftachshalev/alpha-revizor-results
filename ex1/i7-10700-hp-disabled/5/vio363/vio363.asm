.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, EDX 
AND DL, -6 
SETNB CL 
LEA RAX, qword ptr [RDX + RBX + 1686] 
CMOVNBE ESI, ECX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ RDX, qword ptr [R14 + RSI] 
CLD  
BTS DI, 81 
AND DIL, 15 # instrumentation
SETNO DL 
MOV CL, 7 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RDI] 
BSWAP EDX 
MOV BL, DL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -1 # instrumentation
CMOVBE EAX, ECX 
MOVZX EBX, BX 
SETLE AL 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -115 # instrumentation
SETNP BL 
TEST RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], CL 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 48 # instrumentation
CMOVNLE BX, AX 
CMOVNO RBX, RDI 
CMOVNLE CX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RDX] 
SETZ AL 
JO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -1 # instrumentation
CMOVNBE RDX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
XOR RBX, RBX 
XOR AX, 15 
XCHG ECX, EAX 
CMOVNP ESI, EDI 
TEST DIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
