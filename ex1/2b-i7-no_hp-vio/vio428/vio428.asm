.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, BL 
MOV DL, CL 
XOR EDX, EAX 
NOT BL 
CMOVNS ECX, ECX 
SETNL DL 
AND DL, -119 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RAX 
SETNZ AL 
TEST DX, CX 
TEST DL, AL 
CMPXCHG RBX, RSI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RBX] 
MOVSX EAX, SIL 
TEST ESI, 1650953024 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
MOVSX EAX, BL 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RAX] 
SETLE CL 
CMOVNLE SI, SI 
MOV AL, DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RBX] 
MOV ESI, 10911980 
AND RCX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RDX 
AND EDX, -81 
CMPXCHG BL, AL # instrumentation
LAHF  
CLD  
MOVZX AX, BL 
MOVSX EBX, AL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RAX, word ptr [R14 + RDI] 
XOR SIL, 45 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
