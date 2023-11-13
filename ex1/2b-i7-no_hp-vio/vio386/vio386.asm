.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RDX, RSI 
XOR EAX, 1086062329 
CMOVNBE RDX, RCX 
SETL CL 
XOR BL, AL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB ESI, dword ptr [R14 + RAX] 
CMOVNZ EBX, ESI 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], RDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RAX] 
XADD AL, CL 
NOP  
TEST RBX, 658876534 
BTC CX, 106 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], 4 
AND DIL, -7 # instrumentation
CLC  
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA ECX, qword ptr [RDX] 
BTR DI, -108 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RDI] 
OR DI, 0b1000000000000000 # instrumentation
BSR SI, DI 
AND SIL, 58 # instrumentation
SETNP DL 
CBW  
CMOVNZ RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RBX] 
CMOVBE SI, AX 
CMPXCHG BX, DX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND DIL, 49 # instrumentation
MOVSX CX, BL 
LEA CX, qword ptr [RSI] 
SETNBE CL 
BTR EAX, ECX 
OR SI, 0b1000000000000000 # instrumentation
BSF SI, SI 
AND SIL, 35 # instrumentation
CMOVNS RBX, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
