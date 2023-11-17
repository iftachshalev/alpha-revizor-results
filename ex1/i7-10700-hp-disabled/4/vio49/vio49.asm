.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RSI] 
CMOVNO EAX, EDX 
MOVZX EDI, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
BTC RDX, RCX 
SETZ CL 
AND RDX, 0b1111111111111 # instrumentation
AND DIL, byte ptr [R14 + RDX] 
CMOVZ RAX, RAX 
CMOVNP CX, CX 
CWDE  
JBE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 33 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDX] 
BTR RBX, RAX 
AND SIL, -43 # instrumentation
CMOVNP AX, BX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
AND SIL, 117 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], -18 
XOR ESI, -36 
CMOVZ RDX, RAX 
SETS SIL 
AND RSI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], RBX 
AND RSI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RSI] 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND AX, 45 
SETZ SIL 
CMOVL RAX, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], EBX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -71 # instrumentation
SETNLE DIL 
OR AX, 26931 
BT AX, -9 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RBX, qword ptr [R14 + RCX] 
MOV RAX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
