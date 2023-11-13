.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC EBX, 47 
MOVSX RSI, SIL 
OR AX, 3590 
CDQ  
SETNO DIL 
TEST RAX, -848368449 
CMOVNBE BX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RBX] 
OR CX, CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RSI] 
XOR CX, 86 
CMOVB RSI, RDX 
LEA BX, qword ptr [RDX + RDI + 46873] 
SETLE DL 
XADD BX, AX 
CWD  
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT DI, AX 
MOV DIL, -84 
OR DIL, 37 
MOV RCX, RDI 
MOV BL, CL 
AND RBX, RBX 
BTS ECX, 15 
AND RDX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDX] 
AND RSI, RBX 
XOR RAX, -117 
AND RCX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RCX] 
MOV RCX, RDX 
AND RDX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
MOVSX AX, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
