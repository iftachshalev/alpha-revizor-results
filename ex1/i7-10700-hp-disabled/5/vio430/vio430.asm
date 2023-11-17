.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX DI, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], CL 
SETNL BL 
BTC DX, SI 
CMOVNB DI, AX 
CMOVNB RDX, RDI 
MOV BL, BL 
TEST AL, -10 
CMOVB RDI, RSI 
AND RAX, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS AX, word ptr [R14 + RDI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -38 # instrumentation
CMOVO EAX, EDX 
AND RCX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RCX], CX 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], -37 
AND RSI, 0b1111111111111 # instrumentation
CMOVB ECX, dword ptr [R14 + RSI] 
XCHG SI, AX 
TEST SIL, BL 
CMPXCHG DIL, AL # instrumentation
NOT EDI 
SETNLE BL 
MOVZX ECX, DL 
CMOVNL RDI, RBX 
LAHF  
JMP .bb_main.2 
.bb_main.2:
BT EDI, EDI 
BTS DI, CX 
BTC EAX, 110 
XCHG DIL, CL 
TEST SIL, 121 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RSI] 
CMOVBE EAX, EBX 
XOR EAX, -1494355175 
OR CL, 18 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
