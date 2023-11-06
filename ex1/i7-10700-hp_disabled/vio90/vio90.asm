.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], RCX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RAX] 
MOVZX SI, AL 
TEST AL, -57 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -18 # instrumentation
SETO DL 
AND RDI, 0b1111111111111 # instrumentation
XOR RDX, qword ptr [R14 + RDI] 
NOP  
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDX], SI 
CMOVZ RBX, RDI 
OR DX, 0b1000000000000000 # instrumentation
BSR DI, DX 
AND DIL, -84 # instrumentation
CMOVBE EDI, EAX 
XCHG EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
XCHG CL, CL 
MOV CL, AL 
BT DI, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 4 
AND SIL, 15 # instrumentation
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -128 # instrumentation
CMC  
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF AX, word ptr [R14 + RCX] 
BTR EDX, 87 
AND SIL, -61 # instrumentation
CMOVNS RSI, RDX 
MOVZX RAX, SI 
TEST AL, 126 
CMOVB EAX, ESI 
BTC SI, BX 
CMOVNB EDX, EBX 
JMP .bb_main.3 
.bb_main.3:
XOR DX, AX 
CMOVNL EBX, ECX 
CMOVO EBX, EDX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
LEA ESI, qword ptr [RCX + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
