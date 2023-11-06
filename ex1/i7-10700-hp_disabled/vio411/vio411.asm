.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -53 # instrumentation
CMOVNZ RAX, RSI 
AND DIL, 54 
NOT AX 
SETNP CL 
CMOVNS RDI, RDI 
JP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDI 
BT RCX, -7 
CMPXCHG DIL, BL # instrumentation
AND SIL, 110 # instrumentation
SETNB BL 
CBW  
LAHF  
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND SIL, 96 # instrumentation
CMOVLE EDX, EDX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XADD DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTR word ptr [R14 + RSI], DI 
AND RDX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RDX 
SETNB DL 
JNB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR EAX, EDI 
MOVSX SI, DL 
OR EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
JMP .bb_main.4 
.bb_main.4:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RDI 
TEST EDI, 1245197537 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RDI], BX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], DL 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], CL 
XOR AX, 7938 
SETNP BL 
SETNLE DL 
SETLE BL 
MOVZX EDX, DL 
AND RSI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RSI], 5 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
