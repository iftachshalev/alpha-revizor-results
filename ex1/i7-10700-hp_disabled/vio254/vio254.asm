.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX EBX, CL 
AND RCX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RCX] 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -5 # instrumentation
CMOVBE EDX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVB DI, word ptr [R14 + RSI] 
CMOVLE RDI, RBX 
CLD  
MOV DIL, DIL 
JP .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
TEST AX, BX 
OR RAX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
MOVSX EDI, CL 
NOT CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
SETZ SIL 
SETNP CL 
SETNBE BL 
JMP .bb_main.3 
.bb_main.3:
BTC RAX, -31 
NOT RSI 
BT RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], -40 
JB .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RBX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RBX] 
MOV BL, -119 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RSI] 
BTS EDI, 24 
MOV AL, BL 
MOV AL, -18 
MOVZX ESI, BL 
XOR DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
