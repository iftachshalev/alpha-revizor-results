.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -117 # instrumentation
SETO CL 
AND RDX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RCX], 1 
XOR EAX, -478072446 
XOR EAX, -339343708 
AND RDI, RBX 
CMOVNP SI, BX 
BT BX, 67 
AND BL, DIL 
JNO .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
XOR AL, 85 
CMOVP RDX, RDX 
BTC RDI, 57 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 6 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], -64 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], SIL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 26 # instrumentation
MOV EDI, 917833424 
CMOVB ECX, EDI 
SETP DL 
BTC SI, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RBX] 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVZX EAX, DIL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
TEST RAX, 686485177 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 89 # instrumentation
CMOVNBE AX, BX 
XCHG CL, AL 
AND RDI, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RDI] 
XOR AL, DL 
BT ECX, -115 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 91 
MOVZX ECX, DL 
XOR CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
