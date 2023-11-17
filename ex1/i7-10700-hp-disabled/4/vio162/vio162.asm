.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, -131311828 
NOT CX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EDX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RDX] 
CMOVS EBX, EDX 
CMOVP EBX, ESI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RSI] 
MOV AL, AL 
MOVZX RBX, CL 
CBW  
MOVZX DX, CL 
XOR AX, 12701 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RAX, -1243398110 
CMOVS AX, DI 
MOV SIL, -68 
BTS EAX, -93 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
BTS AX, AX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RSI 
MOVSX RDX, SI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], CL 
AND RBX, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], CX 
OR BL, 11 
AND RDI, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RDI] 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTC RSI, RDI 
TEST AX, -1877 
BT RDI, -110 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
XCHG RDI, RDI 
MOV DIL, AL 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
