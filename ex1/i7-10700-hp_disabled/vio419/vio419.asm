.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -125 # instrumentation
SETNLE SIL 
TEST AL, 5 
TEST RAX, RAX 
MOV RDI, 3463268418747391500 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RDI] 
SETO BL 
BTR EAX, 6 
CMOVB AX, DI 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
JMP .bb_main.1 
.bb_main.1:
AND DL, AL 
CMOVBE RDX, RBX 
AND CX, -63 
TEST RAX, -430610381 
BTC RDX, 50 
MOVZX EDI, BX 
AND BL, AL 
TEST EDX, EBX 
MOVSX SI, BL 
CMOVNLE DX, AX 
OR DL, DIL 
SETO BL 
CMOVNO EBX, EDX 
JNS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -49 # instrumentation
SETNS DL 
XOR AX, 15184 
NOP  
TEST RSI, RDI 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
SETNL DL 
BTC SI, -78 
AND RDX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDX] 
SETNO SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
