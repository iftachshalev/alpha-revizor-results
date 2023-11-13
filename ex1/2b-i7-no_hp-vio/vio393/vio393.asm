.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR AX, 119 
MOVSX RSI, AL 
MOVZX EDX, CX 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
CMPXCHG EBX, EDX 
OR CL, DL 
OR SIL, BL 
SETNS BL 
AND ESI, ECX 
XOR EAX, 1936748057 
TEST DX, -4466 
SETNO AL 
SETNLE CL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST DL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVL EBX, dword ptr [R14 + RDI] 
CMOVS BX, CX 
CMOVNO RDX, RDI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
XCHG DL, DIL 
TEST AL, -11 
BTC RDI, RCX 
CMOVNBE EDX, EAX 
AND RAX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RAX], RSI 
AND DIL, 49 # instrumentation
CMOVP RCX, RDX 
CMOVBE DX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RBX] 
BTS RCX, RDI 
AND DIL, -13 # instrumentation
SETNLE SIL 
BTC EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RBX] 
XOR RAX, -773182904 
CMPXCHG ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
