.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EBX 
CMOVNP EDI, EDX 
CMOVNL DI, BX 
BT RAX, RDI 
AND RAX, -1785926683 
XOR DIL, SIL 
JNS .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -101 # instrumentation
CWD  
SETP BL 
MOVSX ESI, DL 
AND EAX, 1619633115 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP BX, word ptr [R14 + RCX] 
CBW  
CMOVZ RAX, RSI 
AND RSI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 3 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND SIL, 61 # instrumentation
MOV CL, AL 
SETZ BL 
CMOVNL RAX, RSI 
BTC RDI, RDX 
AND CL, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], CL 
CMOVNZ ECX, ESI 
AND SIL, 35 
LOOPNE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND DIL, -67 # instrumentation
SETNBE BL 
BTC EBX, -96 
BTS RBX, 81 
CMOVBE SI, DI 
JMP .bb_main.4 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 5 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, qword ptr [R14 + RAX] 
SETL CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RCX] 
OR BX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
