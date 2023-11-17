.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -116 
XADD CL, AL 
AND EAX, -673219288 
CMOVO AX, DX 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RDX 
CMOVNP ESI, ECX 
XOR EAX, -269384499 
MOVSX AX, BL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RBX] 
XOR SI, DX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -93 # instrumentation
SETNL DL 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
OR CL, 71 
CMOVS DX, BX 
AND RCX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RCX] 
SETB DL 
SETNZ AL 
MOV RSI, 1948743945042965012 
XOR AL, 91 
SETNBE CL 
JZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, 51 # instrumentation
CMOVNB EBX, ECX 
CMOVNBE DI, AX 
SETNZ AL 
AND DL, CL 
MOVZX EAX, CL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT DX, AX 
CMOVNB CX, CX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], EBX 
SETNL DIL 
BTS EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RAX], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
