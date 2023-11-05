.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX AX, DL 
MOVSX RSI, AL 
TEST AL, 46 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RCX] 
CMOVNO BX, AX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -69 # instrumentation
SETNZ AL 
CMOVBE RDI, RBX 
SETNS DIL 
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RCX, RBX 
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], CX 
XCHG AL, DL 
MOVSX EDX, DI 
TEST RDI, 1670351098 
STC  
JMP .bb_main.3 
.bb_main.3:
AND SIL, 121 # instrumentation
CMOVBE CX, SI 
CMOVBE EDI, ESI 
SETNZ BL 
SETP DL 
CMOVP EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], 42 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 0 
OR DL, DL 
CMOVL AX, CX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX BX, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], CL 
CMPXCHG DIL, DL # instrumentation
LAHF  
CMOVO DI, SI 
CMOVNB RAX, RAX 
BTS DX, DI 
XOR SI, DX 
XOR DIL, -127 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
