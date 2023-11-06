.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDI, dword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RDI] 
AND RDI, RCX 
SETNBE BL 
MOVZX DX, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 45 
JNP .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DI, word ptr [R14 + RSI] 
MOVSX CX, SIL 
XOR RAX, -1632357149 
TEST ESI, -926893063 
SETNS CL 
OR DL, AL 
AND BL, 74 
OR RAX, -1474446838 
XOR ECX, 5 
BTC AX, -78 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -13 # instrumentation
SETNO AL 
MOV AL, BL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
MOVSX RSI, AX 
AND RDX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDX] 
BTS EDX, 12 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -22 
SETNL CL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], EDX 
XOR AL, 125 
NOT DL 
MOV BL, BL 
JS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND ESI, EBX 
CMOVO EDX, ECX 
CMOVZ DI, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
