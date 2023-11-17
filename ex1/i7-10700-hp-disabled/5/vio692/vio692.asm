.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 6 
BTS EDI, EBX 
XOR EDI, 24 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
CLC  
AND SI, DI 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 2 
LEA BX, qword ptr [RAX + RAX + 45157] 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
XOR AX, -9183 
MOVZX CX, CL 
CMOVNLE RSI, RDX 
OR DX, 65 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
CMOVP BX, BX 
SETBE SIL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RAX] 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -8 # instrumentation
BSWAP ECX 
MOV BL, AL 
MOVZX ECX, BL 
SETNZ AL 
AND EDI, 46 
SETS AL 
SETL CL 
CLD  
XCHG CX, DI 
BTS EAX, -3 
AND SIL, 49 # instrumentation
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT ESI, EDX 
AND DIL, -74 # instrumentation
CMOVL AX, AX 
XOR RAX, 94018585 
CMOVNZ DI, CX 
BT DI, -76 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
