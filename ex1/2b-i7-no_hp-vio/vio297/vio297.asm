.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RAX], RDX 
TEST AL, 115 
BTS RCX, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RCX] 
XCHG DL, AL 
CLC  
AND RDI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDI], -113 
SETLE CL 
CMOVZ RCX, RDX 
BTC SI, DX 
AND SIL, 1 # instrumentation
SETNS CL 
CLC  
SETNBE AL 
SETNL DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], 1 
AND DL, -88 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, 1976333798 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 62 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RAX] 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EAX 
AND SIL, -82 # instrumentation
CMOVL SI, BX 
CMOVBE EAX, EDI 
CMOVNZ RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
BTS CX, -38 
XCHG RDX, RSI 
CMOVZ BX, BX 
XOR AL, 111 
AND BX, 34 
AND RSI, 0b1111111111111 # instrumentation
OR RCX, qword ptr [R14 + RSI] 
MOV BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
