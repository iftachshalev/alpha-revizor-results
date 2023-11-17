.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 2 # instrumentation
SETNBE AL 
NOP  
AND RCX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RCX] 
TEST ESI, 1473719326 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 125 
AND RDI, 0b1111111111111 # instrumentation
MOV SIL, byte ptr [R14 + RDI] 
JNP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
OR DI, 0b1000000000000000 # instrumentation
BSR CX, DI 
AND RAX, 596055054 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RAX, byte ptr [R14 + RBX] 
CMOVNO RSI, RCX 
CMOVO ESI, ESI 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDX] 
XOR RBX, 95 
JNS .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RBX], 0 
XADD EDX, EDI 
MOVZX DI, SIL 
AND BL, -16 
TEST AX, -19137 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
TEST EAX, -1639204053 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR RBX, 127 
CMOVP ESI, EDX 
CMOVNS RSI, RBX 
CMOVNL DI, AX 
MOVZX RAX, DX 
CMOVNBE EDX, EAX 
JMP .bb_main.4 
.bb_main.4:
XOR DIL, 118 
SETP DL 
AND RAX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RAX] 
BTR DX, 83 
MOV EDI, 272692588 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
