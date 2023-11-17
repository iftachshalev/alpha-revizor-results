.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ECX, 26 
BT EDI, -27 
AND SIL, 42 # instrumentation
CMOVS RAX, RSI 
SETB CL 
SETZ DL 
CMPXCHG DL, AL 
SETBE BL 
SETNB DIL 
JMP .bb_main.1 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 123 
XOR EAX, -977271705 
CMOVL DI, AX 
BTC RBX, RDX 
CMC  
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDI], DX 
CMOVBE SI, BX 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RCX] 
BSWAP EBX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
JO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
BTS DX, -48 
AND SIL, 9 # instrumentation
CMOVS RDX, RSI 
MOVZX RCX, DI 
JMP .bb_main.4 
.bb_main.4:
BTS EAX, EBX 
BSWAP RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RAX], 5 
XOR EAX, -1369545931 
AND RDX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RDX], SI 
CMOVNZ RBX, RDX 
BTS EDI, 86 
CMPXCHG SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
