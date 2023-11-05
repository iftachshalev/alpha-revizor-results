.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 51 # instrumentation
CMOVL EDX, EDX 
CBW  
TEST DIL, CL 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -20 # instrumentation
MOV DL, BL 
MOVZX RBX, AL 
CMOVNZ RSI, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], 2 
AND DIL, -36 # instrumentation
BSWAP RCX 
CMOVNO RDI, RCX 
MOVSX DX, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], -128 
JNZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
SETNO BL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDI] 
CBW  
TEST SI, -31018 
AND RAX, 1368239957 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
CLC  
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDX] 
AND BX, -5 
AND RDX, 69 
CMOVZ ESI, EDI 
CMPXCHG BL, AL 
CMOVO EBX, EBX 
AND RAX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RAX], 9 
CMOVNS RSI, RDX 
BTR ECX, EDI 
AND SIL, -39 # instrumentation
SETNS CL 
XOR AL, BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
