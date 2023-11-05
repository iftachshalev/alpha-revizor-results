.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDX], 3 
CMC  
AND RBX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ESI 
CMOVBE ECX, EAX 
CMPXCHG ESI, EBX 
CMOVNB RBX, RCX 
OR AL, -24 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 4 # instrumentation
MOV ESI, 1462421257 
CMOVNLE RBX, RAX 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -84 # instrumentation
XCHG RDX, RAX 
NOT RCX 
CMOVB RDI, RDX 
XOR SIL, 103 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RBX 
SETNZ DL 
OR ESI, -17 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RCX] 
AND RAX, 1390354436 
CMOVNB DX, CX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RSI 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -100 # instrumentation
CMOVNL EDX, EDX 
BTC RSI, RCX 
OR RSI, -29 
CMOVNLE CX, DX 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR CL, DIL 
AND EAX, 465061457 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
SETB BL 
XOR BX, -55 
AND RAX, 1633963445 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
