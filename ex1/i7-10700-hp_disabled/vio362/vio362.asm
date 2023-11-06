.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -119 # instrumentation
SETNO AL 
BTS SI, DI 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG SIL, AL # instrumentation
CMOVLE RDX, qword ptr [R14 + RBX] 
LAHF  
BTC DX, BX 
OR SIL, -34 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
MOV AL, 13 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
XOR CL, AL 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], EBX 
CMOVO RDX, RCX 
OR BL, CL 
CDQ  
CMOVNO RCX, RAX 
MOV DIL, 127 
SETNP SIL 
JNB .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND AL, 22 
SETNL AL 
NOT DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE EAX, dword ptr [R14 + RBX] 
XCHG CX, DX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RBX] 
SETO BL 
TEST BL, 5 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDI 
XOR AX, -10463 
BTR ESI, ESI 
STC  
BTC AX, 103 
AND DIL, 48 # instrumentation
XCHG AX, AX 
CMOVO DI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
