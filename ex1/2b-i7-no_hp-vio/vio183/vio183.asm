.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, DL 
SETP CL 
AND RDX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDX], 0 
OR AX, -18758 
NOT EAX 
XCHG EDX, EAX 
SETNL BL 
STC  
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
CMOVNL BX, AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL AX, word ptr [R14 + RAX] 
CMPXCHG RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDX 
XOR BL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], DX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -18 # instrumentation
SETL CL 
AND RDX, 0b1111111111111 # instrumentation
MOVSX EDX, word ptr [R14 + RDX] 
AND DL, DL 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
CMOVS RAX, RBX 
BT EDX, 42 
AND SIL, 9 # instrumentation
SETS DL 
OR SI, 0b1000000000000000 # instrumentation
BSF DI, SI 
OR AX, 0b1000000000000000 # instrumentation
BSR CX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], 6 
AND RDX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDX] 
CMOVS RBX, RAX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RSI], EDI 
AND EAX, -435889642 
OR RAX, -117662707 
BTC AX, DX 
AND SIL, 75 # instrumentation
SETP SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
