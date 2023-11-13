.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 67 # instrumentation
XCHG DI, AX 
SETLE AL 
MOV EBX, 1871678333 
SETP AL 
BTC AX, -81 
AND SIL, 80 # instrumentation
SETNL DL 
AND RBX, 28 
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RDI 
AND EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], DL 
OR EDX, -4 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], 117 
XCHG CL, DL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RBX, 530056453 
CMOVNB EAX, EDI 
CMOVB RSI, RDI 
MOV DIL, 8 
MOVZX AX, CL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], CL 
CMPXCHG CL, DL 
MOV DIL, DL 
XCHG AX, AX 
MOVZX SI, CL 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RCX] 
MOV RDI, -8058330944673194737 
CMPXCHG DX, BX 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
MOV DI, CX 
SETO AL 
CMOVNL RDX, RAX 
CMOVP BX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ AX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
