.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], EAX 
OR DI, 0b1000000000000000 # instrumentation
BSF DI, DI 
TEST AL, 94 
AND DIL, -84 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 3 
CMPXCHG ECX, EDI 
MOVSX RSI, SI 
MOV CX, 27199 
AND RDX, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RDX] 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -13 # instrumentation
SETO BL 
SETNL CL 
CMOVL RDX, RCX 
MOVSX SI, DL 
XCHG RSI, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RDX], BX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -29 # instrumentation
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 4 
XOR BL, DL 
CMOVO EDI, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], EAX 
CMPXCHG CL, AL 
JMP .bb_main.3 
.bb_main.3:
MOVZX EBX, BX 
BT CX, -6 
AND RSI, 0b1111111111111 # instrumentation
CMOVL BX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], -80 
XOR SIL, -34 
MOVZX BX, BL 
XOR ESI, 24 
XCHG CL, CL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDX] 
CMOVB EAX, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
