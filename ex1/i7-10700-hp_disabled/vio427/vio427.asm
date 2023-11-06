.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -124 # instrumentation
CMOVBE RDX, RBX 
CMOVNL EAX, ECX 
CMOVL RDX, RDI 
XOR RBX, 19 
AND EDX, ECX 
SETLE BL 
XOR SIL, 23 
SETNL DL 
SETZ DIL 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], SIL 
TEST SIL, DL 
SETB BL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDI, -21 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], AX 
NOP  
CMOVNS EAX, EBX 
LEA DI, qword ptr [RBX] 
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
AND SIL, 35 # instrumentation
SETNLE DL 
CMOVNS CX, BX 
AND RAX, -496481043 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -89 # instrumentation
CMOVZ RCX, RSI 
SETNLE AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RCX], 4 
AND SIL, 68 # instrumentation
MOVZX EBX, AX 
CMOVNZ RSI, RCX 
CMOVNBE DI, SI 
CMOVO EDX, EDX 
XCHG DX, AX 
LEA EBX, qword ptr [RAX + RSI] 
CMOVNS RCX, RSI 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
