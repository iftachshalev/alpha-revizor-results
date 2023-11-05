.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDI], RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], -76 
XOR RBX, 33 
XOR EBX, -69 
TEST BL, DL 
CMOVB ESI, EAX 
NOT AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], BX 
CWDE  
JNO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], CL 
SETP CL 
AND DL, BL 
SETNP BL 
CMOVB RSI, RDX 
XADD RDX, RDI 
JMP .bb_main.2 
.bb_main.2:
BTR EDI, 69 
AND SIL, -56 # instrumentation
CMOVS DX, BX 
CMOVBE SI, DX 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR AX, word ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RSI] 
JNB .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, word ptr [R14 + RSI] 
CMOVLE RDX, RDI 
BSWAP RCX 
CMPXCHG AL, BL 
MOVZX CX, CL 
AND DIL, 49 
JMP .bb_main.4 
.bb_main.4:
OR AX, 0b1000000000000000 # instrumentation
BSF BX, AX 
AND SIL, 47 # instrumentation
CMOVNP DI, CX 
SETNZ CL 
NOT EDX 
TEST EDI, EDX 
CMOVB RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
