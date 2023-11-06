.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX ESI, SIL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RCX], CX 
CMOVO ESI, EBX 
CMOVNP EDI, EAX 
XCHG EAX, EAX 
CMOVNL RBX, RSI 
NOT AL 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RDI 
BT BX, -113 
SETZ CL 
OR RDX, 65 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC RSI, 1 
LEA ESI, qword ptr [RSI] 
AND RSI, 0b1111111111111 # instrumentation
MOV CX, word ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RBX] 
OR SI, 0b1000000000000000 # instrumentation
BSF CX, SI 
AND DIL, 57 # instrumentation
SETNLE SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], 23 
OR BL, AL 
SAHF  
AND DI, 58 
SETB AL 
BTS EDX, EDI 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 89 # instrumentation
CMOVNO EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX SI, byte ptr [R14 + RDI] 
OR AL, -73 
CMOVNB EBX, EBX 
BTR ECX, 126 
OR DX, 0b1000000000000000 # instrumentation
BSR AX, DX 
CMPXCHG DIL, BL # instrumentation
AND SIL, 91 # instrumentation
CMOVNBE RDI, RDI 
SETNZ CL 
LAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
