.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTC word ptr [R14 + RSI], AX 
TEST AL, CL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -48 # instrumentation
MOV RSI, 6434533408834281935 
SETS DL 
CMOVB RDX, RDI 
MOV BL, CL 
MOVSX RAX, DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDI] 
AND SIL, DL 
CMOVLE ESI, EDI 
AND BL, 4 
XADD RDX, RDI 
MOVSX SI, DL 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RDX] 
OR DL, -103 
BTC BX, -27 
AND RBX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RDX] 
AND SIL, -38 # instrumentation
CWD  
CMOVL RCX, RCX 
BTR CX, DI 
BTR RDI, 75 
XOR RAX, 915929212 
BTS RCX, RDX 
MOV ECX, -60555806 
JMP .bb_main.3 
.bb_main.3:
XADD DL, DL 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], AL 
OR AL, 28 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
SETNLE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
