.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RDI] 
MOVSX ESI, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], 7 
TEST DL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RSI] 
CMOVP RAX, RSI 
TEST DX, SI 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], BX 
CMOVO ECX, EAX 
XOR BX, 17 
SETNBE AL 
AND RSI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RDI 
BTC RDX, 69 
TEST AX, -24082 
CMPXCHG RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG DL, AL # instrumentation
CMOVB ECX, dword ptr [R14 + RDX] 
SETB BL 
LAHF  
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 21690 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CX, DX 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], SI 
SETNO AL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], RAX 
CMOVP RSI, RCX 
AND RDI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RDI], CX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], ECX 
BT AX, -71 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
XOR AL, 19 
BTC BX, -86 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
