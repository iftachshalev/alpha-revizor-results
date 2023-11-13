.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 117 # instrumentation
SETZ AL 
BTC RSI, RCX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RSI], 67 
OR SIL, 73 
AND RDI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RDI] 
TEST CL, -47 
AND RDX, 0b1111111111111 # instrumentation
MOV RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 1 
BT SI, 75 
AND EDI, ECX 
OR BX, SI 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EAX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDX], -39 
CMOVS SI, DX 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
OR AX, 24907 
BTR RSI, -75 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RDI], 101 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, -117 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RBX] 
NOT SIL 
XCHG EDX, EAX 
CMOVZ DX, DX 
AND RAX, -608315292 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RDI] 
MOVZX CX, SIL 
MOVSX EBX, DL 
XADD CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
