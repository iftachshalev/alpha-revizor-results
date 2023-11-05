.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DX, word ptr [R14 + RAX] 
CMOVZ DI, AX 
CMOVNB EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 71 
SETNBE DL 
JZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND ESI, ECX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], 19 
BTR AX, -42 
SETNB BL 
AND CL, DL 
XOR CL, DIL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -16 # instrumentation
NOP  
CLC  
SETNL AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RDI, qword ptr [R14 + RDI] 
MOVZX SI, SIL 
JMP .bb_main.3 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RCX] 
CMOVBE EBX, ECX 
NOT RCX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -59 # instrumentation
CMOVZ DI, CX 
CMOVL RAX, RSI 
CMOVO RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RBX] 
XOR RAX, 1947513501 
STC  
LEA ECX, qword ptr [RBX + RDX] 
AND RAX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RAX] 
AND ECX, EDI 
CMOVNBE EAX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
