.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SI, SI 
SETNO DL 
XCHG ESI, ESI 
CMOVP RCX, RSI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], SI 
CMOVS RCX, RSI 
XCHG DI, SI 
AND RAX, -2089113616 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RCX], SI 
AND RBX, 0b1111111111111 # instrumentation
AND EAX, dword ptr [R14 + RBX] 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 101 # instrumentation
MOVSX EDX, BX 
SETNP DL 
XOR SIL, -90 
MOVZX AX, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDX] 
AND RAX, 1408218521 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 51 # instrumentation
CMOVNP EDX, EAX 
SETNP DL 
SETP BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RSI] 
CMPXCHG CX, AX 
JBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
LEA SI, qword ptr [RBX + RAX] 
OR AX, -15976 
XCHG SI, CX 
SETP AL 
BTS RBX, RDI 
XADD CL, CL 
BTS DI, AX 
JMP .bb_main.4 
.bb_main.4:
SAHF  
XOR DIL, -87 
AND SIL, 65 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
