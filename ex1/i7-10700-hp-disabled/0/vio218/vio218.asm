.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 99 # instrumentation
XCHG CX, AX 
CMOVNO SI, SI 
CMOVNO EAX, ECX 
CLC  
MOV EBX, EAX 
CMOVS EDX, ECX 
MOVSX RBX, DI 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], -65 
CLD  
MOV RSI, 7987798041103782017 
AND RDI, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR DI, word ptr [R14 + RDX] 
NOT CL 
MOVSX BX, DL 
CMOVNBE AX, DI 
XOR RDI, -71 
CMOVS DX, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT DL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RBX] 
CMPXCHG ECX, ECX 
CMOVNZ DX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RCX] 
TEST DIL, 22 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], -9698 
CMOVBE EDI, EBX 
BTR EDX, -128 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 25 
BTR DI, 121 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
