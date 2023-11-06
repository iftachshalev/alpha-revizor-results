.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RSI, RAX 
AND DIL, 2 # instrumentation
SETO SIL 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], CL 
MOVZX EDX, AL 
OR CL, DL 
CMOVB RDI, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVP SI, word ptr [R14 + RAX] 
AND RSI, 113 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RDX, RAX 
OR AX, 15781 
TEST RAX, RBX 
CMOVNL EAX, EDX 
CMOVNS DX, CX 
XOR SIL, -124 
AND RDX, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDX] 
XOR AL, AL 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
SETNS BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RDX] 
CMOVBE SI, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RAX], 112 
XOR RAX, 1719183283 
JMP .bb_main.2 
.bb_main.2:
XOR RAX, -1489038331 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 3 
AND SIL, -115 # instrumentation
XCHG RBX, RCX 
SETNP CL 
MOV ESI, EDX 
OR RAX, -1847891481 
BT EDI, EAX 
BT SI, AX 
OR EBX, ESI 
NOP  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
