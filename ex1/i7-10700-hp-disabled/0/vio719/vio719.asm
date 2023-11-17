.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -44 
NOT DIL 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
CMOVLE AX, CX 
NOT EDX 
SETNP CL 
XADD DL, DL 
SETNO AL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
XOR EAX, 1490143707 
CMPXCHG CL, AL # instrumentation
CMOVO RSI, RCX 
LAHF  
CMOVLE RBX, RBX 
CMOVNZ EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RSI] 
CWDE  
CMOVS ESI, EBX 
CMPXCHG SI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], CL 
JMP .bb_main.2 
.bb_main.2:
OR BL, DL 
OR EDI, 113 
AND RCX, 47 
JMP .bb_main.3 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RBX 
MOV RSI, 3338862480145101495 
CMOVNS DX, SI 
MOVZX ESI, AL 
CMOVO BX, BX 
LAHF  
SETNP DL 
TEST EAX, 952312799 
CMOVLE EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
