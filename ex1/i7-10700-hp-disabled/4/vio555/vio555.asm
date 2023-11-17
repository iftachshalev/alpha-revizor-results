.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EAX, AL 
XADD DL, AL 
JMP .bb_main.1 
.bb_main.1:
CWDE  
AND RBX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RBX] 
MOV AX, -1338 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE DI, word ptr [R14 + RDI] 
CMOVNL EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RBX] 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -124 # instrumentation
SETP CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RAX] 
CMOVZ DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
CMC  
CMOVNB DX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RBX] 
SETNLE AL 
NOT CL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DX, AX 
AND EAX, -1878418872 
SETP DL 
CMOVP RCX, RCX 
CMOVNS RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDI] 
XCHG AX, DX 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 41 
BTR EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RAX], 2 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDI], RBX 
MOVZX RAX, BL 
CMOVP CX, DI 
BTS CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
