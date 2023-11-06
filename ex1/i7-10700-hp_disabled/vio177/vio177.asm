.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 72 # instrumentation
SETNBE AL 
CMOVL EDX, EDX 
BTR CX, -110 
AND SIL, 54 # instrumentation
SETS DL 
CMOVNBE AX, AX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -17 
JL .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, -63 # instrumentation
CMOVNBE DI, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDI], 54 
BSWAP RAX 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND AL, -88 
CMOVZ ECX, EAX 
SETBE BL 
BT EBX, 99 
XOR BL, AL 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RSI], DI 
TEST SIL, -126 
AND AL, CL 
CMOVNLE SI, BX 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 7 
JMP .bb_main.3 
.bb_main.3:
NOP  
XOR CL, BL 
SETNP CL 
BT RCX, -52 
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RCX] 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -27 # instrumentation
CMOVNLE RAX, RAX 
BTC RAX, RBX 
AND DIL, -121 # instrumentation
MOVZX EDX, DL 
CMOVNLE RDI, RSI 
NOT SIL 
TEST AL, BL 
BSWAP RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
