.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], BL 
MOVZX EDX, BX 
MOV RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], SIL 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RDI 
XOR EAX, 1125371948 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RBX] 
AND BL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], -7 
TEST EAX, 1768995893 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE ESI, dword ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR AL, CL 
BSWAP RSI 
CMOVNS SI, BX 
SETLE BL 
CMOVZ RBX, RBX 
CMOVO RBX, RCX 
CMOVNBE RCX, RAX 
BTS EAX, EDX 
AND RSI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RSI], 3 
SETNBE DIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 5 
OR AX, 18109 
XCHG AX, AX 
BTC EBX, EDX 
AND DIL, 38 # instrumentation
SETLE DL 
CMOVNLE ECX, EDX 
XOR AL, -44 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RAX], EBX 
SETNBE DL 
SAHF  
MOVSX RAX, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
