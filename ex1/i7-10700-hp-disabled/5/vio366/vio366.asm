.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
CMOVS ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], 4589 
SETNZ DL 
OR CL, 80 
CMOVBE RAX, RSI 
NOT BL 
AND RDI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RAX 
XCHG EDX, ECX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RAX] 
CMOVP AX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], -107 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RDI] 
BTS EDX, EAX 
XOR CL, 51 
XADD BL, DL 
SETBE DL 
CMOVLE RCX, RCX 
OR DI, 0b1000000000000000 # instrumentation
BSF BX, DI 
MOVZX EBX, DIL 
AND RSI, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RCX] 
OR SIL, SIL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 93 # instrumentation
SETS CL 
XCHG AL, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE EBX, dword ptr [R14 + RAX] 
SETB BL 
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
OR RDX, qword ptr [R14 + RDX] 
XCHG RBX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
