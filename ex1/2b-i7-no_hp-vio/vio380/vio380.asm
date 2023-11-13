.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, BL 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 0 
CMOVNBE SI, DX 
MOV DL, 75 
MOVZX EDI, BX 
CMOVB EDI, ECX 
BT CX, -27 
BT ECX, 97 
BT RDX, 78 
AND DIL, 90 # instrumentation
CMOVNLE SI, AX 
NOT BL 
SETP BL 
CMOVO ESI, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], DI 
CLD  
BTR RSI, RDI 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -94 # instrumentation
CMOVL ESI, EDI 
XOR CX, CX 
TEST EAX, -403430243 
OR CL, CL 
CMOVLE ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RBX] 
BT EBX, ECX 
SETNB BL 
OR RDX, 56 
AND RAX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RAX] 
MOV AX, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], -115 
CMC  
TEST BL, 16 
MOVZX RCX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
