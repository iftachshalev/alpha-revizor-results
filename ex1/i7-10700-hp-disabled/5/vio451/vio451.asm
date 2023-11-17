.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DI, word ptr [R14 + RDX] 
CMOVNBE RDX, RCX 
XOR EDX, EDI 
BTS DI, -126 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 89 # instrumentation
XCHG ECX, EAX 
MOVSX EDX, BX 
CMOVZ CX, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EDX, dword ptr [R14 + RDX] 
XADD CL, DL 
XCHG EDX, EAX 
MOVZX DI, AL 
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -120 # instrumentation
SETNB BL 
CMPXCHG AL, BL 
OR BX, 0b1000000000000000 # instrumentation
BSR AX, BX 
CMPXCHG DL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
NOT RDI 
MOVSX ESI, AX 
MOV DI, -11622 
CMC  
MOVZX EDI, SIL 
BTS RDX, 122 
AND SIL, -61 # instrumentation
NOT RSI 
CMOVNO RSI, RSI 
CMOVNB RDI, RDX 
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RDX], CX 
SETZ DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
