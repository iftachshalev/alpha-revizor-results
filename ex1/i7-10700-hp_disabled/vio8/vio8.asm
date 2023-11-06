.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA EBX, qword ptr [RDI + RAX] 
BTC EBX, EDI 
AND SIL, -23 # instrumentation
MOV CL, DL 
SETNLE DL 
SETNO SIL 
AND RDI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RCX] 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -93 # instrumentation
CMOVZ RDI, RDI 
BTC RSI, RAX 
CMPXCHG DL, AL 
BTR ECX, 19 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
CDQ  
CMOVBE RDI, RAX 
BTR EDI, EDI 
XOR RBX, -12 
BTC RSI, 64 
AND RCX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RCX], 7 
CMOVNZ BX, BX 
BTR BX, 38 
JMP .bb_main.2 
.bb_main.2:
XADD CL, AL 
AND RSI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RSI] 
XOR AL, 37 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RBX] 
XOR RBX, -28 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], 1429728811 
CMOVNO AX, SI 
CMOVS RAX, RBX 
BT RCX, 52 
AND SIL, -70 # instrumentation
CMOVNL EAX, ECX 
SETP CL 
CMOVNS RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
