.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTS RCX, RSI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -70 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], EDI 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 7 
CMOVB DX, CX 
XOR AL, SIL 
CMOVNB DI, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
CMOVO DX, DI 
XCHG CL, BL 
CMOVP SI, CX 
LEA ESI, qword ptr [RBX] 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], RDI 
XOR DL, CL 
CMOVNB DX, CX 
CMOVZ EDI, EBX 
CMOVZ DI, DI 
SETBE DL 
SETZ DIL 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RBX] 
TEST CL, DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], CL 
SETO BL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -64 
OR AL, 122 
CWDE  
BTS RDI, -110 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
BT RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
