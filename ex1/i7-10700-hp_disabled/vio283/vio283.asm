.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 101 # instrumentation
CMOVZ ESI, EDI 
LEA SI, qword ptr [RAX] 
AND SI, CX 
CMOVNBE ESI, EDI 
MOVZX ECX, AL 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
SETS BL 
TEST EAX, 1712665838 
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
CWD  
CMOVL RBX, RDX 
TEST BX, BX 
MOV AL, AL 
CMOVNBE RCX, RDX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DX, -32 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RAX] 
CMOVNBE RDI, RCX 
BTR RSI, RBX 
BTR BX, -48 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RCX] 
XCHG DL, BL 
TEST EDX, EBX 
BTR EDI, -68 
BTR EDX, 118 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], RAX 
AND SI, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RCX, qword ptr [R14 + RSI] 
BTC EBX, ECX 
AND SI, -19 
CMOVZ RAX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
