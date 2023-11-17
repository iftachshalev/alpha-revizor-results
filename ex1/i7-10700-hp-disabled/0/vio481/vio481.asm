.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -61 # instrumentation
CMOVZ RCX, RCX 
BTC SI, 70 
CMOVNBE RBX, RSI 
AND DL, BL 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR AX, 19533 
AND RDI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDI], SI 
NOT ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ ECX, dword ptr [R14 + RCX] 
SETNBE CL 
AND RCX, 0b1111111111111 # instrumentation
MOV DX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], CX 
AND DIL, 95 # instrumentation
CMOVNO EDI, ECX 
BT EBX, EDI 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 101 # instrumentation
CWD  
NOT CL 
SETBE AL 
CMOVB EBX, EDX 
SETNP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE RBX, qword ptr [R14 + RAX] 
CMOVS SI, CX 
CMOVP ECX, EDI 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -62 # instrumentation
CMOVNB BX, SI 
CMOVNBE EAX, EAX 
BT RDX, -92 
NOT AL 
JNB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], EAX 
BT DX, 99 
CMOVB DX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 4 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 4 
AND SIL, -37 # instrumentation
SETLE BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
