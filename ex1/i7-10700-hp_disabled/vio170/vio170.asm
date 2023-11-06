.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 80 
BTC EAX, -87 
XCHG DI, AX 
MOVSX RDI, DIL 
AND SIL, DL 
AND RCX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RCX] 
XOR AL, -37 
AND RSI, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RSI] 
JS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
OR RAX, -638398424 
CMOVZ BX, AX 
XOR DL, BL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -113 # instrumentation
CMOVNO EDI, ECX 
BTC CX, BX 
MOVSX RAX, CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL ECX, dword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BT word ptr [R14 + RSI], DI 
XOR SI, BX 
CMOVNLE DI, SI 
CMOVBE RDX, RCX 
TEST AL, -56 
TEST BL, DL 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -103 # instrumentation
CMOVO RSI, RSI 
MOV AL, AL 
NOT EDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RBX] 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
TEST EDX, ECX 
STC  
XCHG AX, BX 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], 1093 
AND AL, BL 
AND CL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
