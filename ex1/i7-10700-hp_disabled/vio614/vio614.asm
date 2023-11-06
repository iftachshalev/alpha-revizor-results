.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
BTR EDI, -59 
AND DIL, 61 # instrumentation
CMOVNS ESI, EDI 
SETLE SIL 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 4 
SETNB DL 
JMP .bb_main.1 
.bb_main.1:
AND DIL, 104 # instrumentation
CMOVNO DX, AX 
CMOVNB RCX, RDX 
CMOVZ ECX, EBX 
CMOVNB DI, CX 
AND RSI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], RBX 
AND AL, -46 
XCHG RSI, RBX 
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XOR ECX, EAX 
TEST EAX, EDI 
MOV CX, -31313 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 5 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RSI] 
BTS ESI, ESI 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
BT AX, 105 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RAX] 
MOVSX ESI, DL 
OR SI, CX 
AND AL, -77 
AND DIL, -58 
TEST EAX, -1321460455 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BT RAX, -78 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RBX 
SETNL DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
