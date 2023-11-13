.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG BL, DIL 
TEST RAX, 462073845 
TEST RBX, 641143286 
NOT CL 
CMOVL AX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG AL, DL # instrumentation
MOV AL, byte ptr [R14 + RSI] 
LAHF  
STC  
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], AL 
XCHG BL, AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVP AX, word ptr [R14 + RSI] 
CMOVNS EDX, ECX 
AND SI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RSI] 
OR EAX, 1058179127 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDI, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], -43 
CDQ  
AND AX, 81 
TEST EAX, -2031048160 
MOV DL, CL 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RCX 
AND SIL, -53 # instrumentation
SETO CL 
BTR CX, -74 
SETZ BL 
MOVZX EBX, DIL 
XOR AL, -47 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 5 
AND SIL, -119 # instrumentation
CMOVP EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
