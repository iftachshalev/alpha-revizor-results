.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RCX] 
BTS CX, SI 
MOV CX, CX 
XOR RAX, -111 
CMOVNL SI, SI 
CMOVNZ AX, BX 
CMOVS RDX, RCX 
MOVZX ESI, BX 
MOVSX SI, BL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RAX] 
MOVSX RCX, AL 
MOVZX EAX, DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
AND RAX, 138367129 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 36 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RAX 
MOVZX EAX, DI 
JMP .bb_main.2 
.bb_main.2:
TEST AX, -32574 
OR AX, 22234 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
BT BX, -42 
AND DIL, 25 # instrumentation
SETP AL 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
CDQ  
JMP .bb_main.3 
.bb_main.3:
MOV RDX, RSI 
BTC BX, -30 
CWDE  
OR DIL, -47 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, -1 # instrumentation
SETNB DIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RAX] 
OR RSI, 93 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
