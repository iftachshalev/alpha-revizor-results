.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 56 # instrumentation
MOV ECX, EAX 
SETB DL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], -105 
MOVZX EAX, DIL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 101 # instrumentation
SETNZ BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], 106 
AND RDX, -120 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EDX 
JMP .bb_main.2 
.bb_main.2:
MOVSX BX, DL 
XOR RAX, 531109271 
AND AL, 25 
AND RAX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RAX], RCX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RDI] 
BT EDX, 46 
AND DIL, -17 # instrumentation
CMOVS RAX, RAX 
OR SI, 0b1000000000000000 # instrumentation
BSR AX, SI 
AND DIL, 75 # instrumentation
SETS DL 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], -32 
BT RDX, -4 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 67 # instrumentation
SETL DIL 
SETLE AL 
SAHF  
CMOVL ECX, EDX 
BTS EDX, -120 
TEST DIL, 16 
BTR BX, DX 
AND DIL, -107 # instrumentation
CMOVNL EBX, ECX 
AND RCX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RCX], RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
