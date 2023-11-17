.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RCX, AX 
AND RCX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RCX], 7 
CMOVBE RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RDX] 
AND SIL, AL 
CMOVO DX, CX 
AND RSI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RSI], 3 
XOR RDX, 73 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], DI 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, -76 # instrumentation
SETS SIL 
OR AL, 76 
AND RDI, 0b1111111111111 # instrumentation
MOVZX ECX, word ptr [R14 + RDI] 
BTS RDX, RDI 
AND DIL, -30 # instrumentation
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND SIL, -15 # instrumentation
CMOVNZ RBX, RSI 
BT RDX, -76 
AND DIL, 45 # instrumentation
CMOVNO RDI, RCX 
CMOVNS EBX, EDX 
CWD  
CMOVBE ECX, ESI 
OR RAX, 1189990269 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RAX] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -128 # instrumentation
MOV BL, -81 
CMOVP ESI, EBX 
OR RSI, -73 
TEST EBX, -1750948998 
MOVSX EBX, CL 
AND EDI, -42 
OR AL, 33 
SETZ DL 
BT ESI, ECX 
SETNBE SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
