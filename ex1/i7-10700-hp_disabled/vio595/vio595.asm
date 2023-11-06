.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RBX], SI 
SETNBE AL 
MOVZX EBX, DI 
CMOVZ RDI, RAX 
MOV BL, -56 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RBX] 
NOT BX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -70 # instrumentation
SAHF  
CMOVO RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
MOVZX SI, AL 
CMOVNO RDX, RBX 
BT ESI, 45 
OR BX, AX 
CMOVZ EBX, EAX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -70 # instrumentation
XCHG BL, DL 
CMOVNB DI, SI 
BSWAP RDX 
AND RSI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RSI] 
MOVSX RDI, DX 
CMOVNZ ECX, ESI 
CMOVNBE DI, DX 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
JNBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EAX 
MOVZX ESI, CL 
BTS ESI, 90 
SETNZ CL 
AND RAX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RAX], 5 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], EBX 
SETNL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
