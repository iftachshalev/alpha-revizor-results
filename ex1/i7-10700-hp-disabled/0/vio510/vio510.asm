.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT EDX, 1 
BT ESI, -58 
AND DIL, 79 # instrumentation
CMOVL DX, DI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RCX] 
SETBE AL 
CMOVNO DI, DX 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RSI, RDX 
SETNO SIL 
NOT RSI 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDI], EDX 
CMOVZ CX, DX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], AL 
CMOVBE RDI, RDI 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], 84 
AND RDI, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDI] 
MOVSX RDX, SIL 
CDQ  
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
OR RAX, 1697668713 
OR RAX, 859263734 
BTR ESI, -57 
AND RCX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RDX] 
SETNL SIL 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -88 # instrumentation
CMOVNBE RSI, RCX 
CMOVP AX, AX 
SETBE CL 
SETNP CL 
XCHG CL, CL 
MOVSX AX, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
