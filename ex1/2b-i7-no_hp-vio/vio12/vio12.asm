.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -60 # instrumentation
MOV RSI, RDX 
CMOVNS CX, SI 
CMOVS SI, CX 
AND EAX, -171402016 
CMOVNBE EAX, ECX 
CMOVS AX, DX 
SETNZ CL 
BTC RCX, -90 
AND EBX, -75 
BTS BX, -34 
AND RBX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RBX], AX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -63 # instrumentation
SETNBE AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 3 
TEST RDI, -378691475 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
XOR RAX, -2059437398 
OR DL, -118 
CMOVNO DI, DX 
AND RAX, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RAX] 
BT RCX, RDI 
OR BL, -83 
CMOVNB CX, DX 
OR AX, 6872 
SETZ CL 
SETBE AL 
TEST DX, 2451 
SETNL SIL 
XOR AL, AL 
AND AL, DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 2 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
