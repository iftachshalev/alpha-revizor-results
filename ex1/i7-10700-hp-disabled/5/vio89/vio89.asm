.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV CL, CL 
MOVZX RDI, DIL 
XOR AL, -89 
XOR AL, -110 
CMOVO DX, DI 
XCHG RBX, RDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RSI] 
MOVSX EDX, DIL 
CMOVS ESI, EDI 
CMOVNZ RDI, RSI 
BT EDI, EDI 
AND DIL, -49 # instrumentation
CMOVNS EAX, EDX 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RSI] 
CMOVNBE DI, DX 
LEA EDI, qword ptr [RCX + RSI + 9223] 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, 31 # instrumentation
CMOVNS RBX, RBX 
XOR RBX, 36 
MOVZX RSI, SI 
TEST AL, 50 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], SI 
CBW  
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RAX] 
TEST EAX, ECX 
JMP .bb_main.4 
.bb_main.4:
BSWAP EBX 
AND DI, -108 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RCX] 
CMOVNS AX, DI 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
NOT AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
