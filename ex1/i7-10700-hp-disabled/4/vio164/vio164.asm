.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 49 # instrumentation
CMOVNO EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RCX] 
MOVSX RBX, DX 
SETB AL 
BTR RBX, RDI 
CMPXCHG EDI, EDX 
CMPXCHG DI, BX 
CMOVB RDX, RBX 
LAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
SETNLE AL 
BTR EDI, 22 
AND DIL, 106 # instrumentation
SETNLE AL 
AND RDX, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RDX] 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 9 # instrumentation
SETNP DL 
BTC ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -27 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RSI], EBX 
OR DI, 0b1000000000000000 # instrumentation
BSF CX, DI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RSI], ECX 
OR DI, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 44 
TEST RSI, -1736042737 
AND RAX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RAX], AL 
OR AX, -25395 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
AND DIL, 110 # instrumentation
SETO BL 
SETNS CL 
BTS AX, AX 
BT EBX, -39 
TEST EDX, ECX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
