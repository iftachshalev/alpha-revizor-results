.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RAX] 
OR EDI, -2 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RBX 
TEST DIL, -19 
BTS RCX, RBX 
AND RAX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RAX] 
TEST DL, -75 
BSWAP ESI 
XCHG CL, AL 
TEST ECX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDX], 1 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, RAX 
LEA DI, qword ptr [RBX + RSI + 40889] 
AND RSI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RSI], RDI 
SETNS CL 
SETB BL 
XOR AX, -19121 
LEA EDI, qword ptr [RDX + RBX + 13100] 
CMOVNB ESI, EBX 
MOV BL, AL 
CMOVNBE SI, BX 
CMOVP RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], DX 
XOR ECX, EDI 
CMOVNO EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RSI, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDX], 1 
MOVZX CX, AL 
OR AL, 108 
MOVSX EDX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 6 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
