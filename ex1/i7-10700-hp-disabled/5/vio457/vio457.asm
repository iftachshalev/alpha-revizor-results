.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DX 
SETB BL 
TEST AX, CX 
TEST EAX, 1551934927 
SETB AL 
AND EAX, EBX 
TEST ECX, 1295981189 
LEA RSI, qword ptr [RDX + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 112 # instrumentation
CMOVNBE EDI, EDI 
BTS RAX, RSI 
CMPXCHG SIL, DL 
AND RSI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RSI] 
CDQ  
XOR RBX, RCX 
OR DL, BL 
MOVZX RDI, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 38 # instrumentation
SETNO DIL 
AND RDX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDX], 5 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -44 
SETP DL 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG DL, BL # instrumentation
AND DIL, -99 # instrumentation
LAHF  
CMOVB EDX, EBX 
MOVZX AX, CL 
BTC AX, 12 
BSWAP EDX 
BT DI, AX 
OR SIL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
