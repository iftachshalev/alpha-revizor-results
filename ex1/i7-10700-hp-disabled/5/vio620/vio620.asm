.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
MOVZX EDX, DL 
JS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
TEST AL, -121 
BT RDI, 23 
AND SIL, -83 # instrumentation
CMOVNZ RAX, RCX 
CMOVLE RDI, RDI 
BT AX, -44 
OR BL, SIL 
CMPXCHG EDI, EAX 
XCHG EDX, EAX 
SETNB DIL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -85 # instrumentation
CWDE  
CMOVBE EDI, EDI 
XOR SIL, 84 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
MOVSX DI, CL 
MOVZX DX, DL 
SETLE DL 
SETO BL 
NOT BX 
STC  
JNZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR RAX, -338411043 
BT RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RCX] 
CMOVNB RSI, RCX 
MOV SIL, AL 
TEST AL, -119 
CMOVBE CX, CX 
JMP .bb_main.4 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RSI 
XOR CL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
