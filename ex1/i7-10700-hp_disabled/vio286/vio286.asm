.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, 28294 
BSWAP RBX 
SETZ BL 
XOR AL, 91 
MOVZX RDI, DX 
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
BT EDI, -20 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
XCHG RSI, RDX 
BTS ESI, EDX 
AND SIL, -55 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST EBX, EDI 
BTS DX, CX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RSI] 
BTR RCX, -104 
AND EDX, -60 
CMOVBE RSI, RBX 
TEST DIL, 114 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 122 # instrumentation
CMOVBE EBX, ESI 
BT RDX, 122 
AND DIL, 9 # instrumentation
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -100 # instrumentation
XCHG EDX, EAX 
CMOVP CX, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 0 
AND SIL, 51 # instrumentation
CMOVNP RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RDI] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG RCX, RBX 
XADD DL, DL 
SETB DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], -12140 
OR EAX, -1367286360 
OR BX, -27 
AND SIL, -52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
