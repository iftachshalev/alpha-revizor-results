.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AX, -10662 
CMOVNS EDX, EAX 
SETBE AL 
BTC AX, 102 
CMPXCHG DL, BL 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], -118 
TEST EAX, 929300909 
TEST RDI, 1073934341 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], 57 
CMOVNS DI, DI 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RDI 
BTC EDI, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], BL 
CMPXCHG DIL, AL # instrumentation
LAHF  
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RDX], EDI 
CMPXCHG ESI, EBX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], DL 
CMOVNP RDI, RAX 
CMOVZ RSI, RBX 
XADD EBX, EBX 
XCHG SI, CX 
XCHG DL, SIL 
SETBE AL 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], SIL 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
