.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 45 # instrumentation
SETNS AL 
MOV BX, -31381 
TEST EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 0 
AND SIL, -74 # instrumentation
MOVZX RAX, SIL 
SETO BL 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], 393 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC ESI, 56 
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 5 
CMPXCHG EDX, EBX 
XOR AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], BL 
MOV BL, 41 
SETNO DL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 104 # instrumentation
CMOVNBE BX, SI 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], BL 
AND RDX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RAX] 
CMOVZ DI, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RSI] 
BTR SI, CX 
MOV SIL, -33 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], -71 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], RDX 
AND RDI, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDI] 
BTS DI, 5 
OR SI, -74 
SETL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
