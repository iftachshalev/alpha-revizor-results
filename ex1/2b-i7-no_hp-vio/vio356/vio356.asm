.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, 21 
CMOVL RDX, RDX 
CMOVNO EBX, EAX 
CMOVNL RDX, RDI 
OR AL, -3 
OR DIL, -99 
XOR AL, -56 
AND RSI, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RSI] 
CMOVNO EBX, EAX 
SETLE AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE DI, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RBX] 
MOVZX ESI, BL 
AND BL, -41 
MOV DL, -108 
AND AL, 78 
BTR ECX, 26 
AND DIL, -44 # instrumentation
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, 6010 
SETNP AL 
AND RCX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RCX], 107 
OR RAX, -69 
NOT RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RAX] 
CMOVLE DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RDI] 
AND DIL, -124 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 48 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
CMOVBE SI, AX 
MOVSX EAX, CL 
CMOVL RSI, RDI 
BTC RSI, -18 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
