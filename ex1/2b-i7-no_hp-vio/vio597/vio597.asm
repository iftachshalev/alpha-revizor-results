.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EAX, qword ptr [RDI + RCX + 40184] 
AND CL, -34 
XOR EAX, 1869174944 
CMC  
SETO BL 
NOT BL 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
LEA RDI, qword ptr [RDX] 
XCHG AX, AX 
XOR CX, 3 
CMOVO RBX, RBX 
BTC EAX, 95 
SETZ CL 
BSWAP EBX 
CMOVNBE EDX, EDX 
AND RCX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RCX] 
AND RBX, 125 
MOVZX RAX, SIL 
CMOVNO RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RSI], BX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 24 # instrumentation
CMOVNZ RDX, RBX 
MOVZX EAX, CL 
CMPXCHG SIL, DIL 
LEA EAX, qword ptr [RAX + RAX + 25780] 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RSI], 19698 
XOR BL, -102 
CMOVNLE AX, AX 
TEST SIL, DIL 
CMOVZ BX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
