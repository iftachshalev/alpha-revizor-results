.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 110 
XOR EDX, 30 
CMPXCHG EDX, EDX 
OR EDX, -59 
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
TEST SIL, -44 
CMOVZ ECX, ECX 
CMPXCHG CL, CL 
BTC CX, BX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, -115 # instrumentation
BTR DX, 70 
SETNZ AL 
AND RCX, -18 
BTC RSI, -79 
AND RAX, 0b1111111111111 # instrumentation
MOVSX SI, byte ptr [R14 + RAX] 
MOVZX EDX, DI 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -83 # instrumentation
CMOVL EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
BTS ECX, 85 
OR ESI, ECX 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDI] 
SETS BL 
SETB AL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 1177621666 
SETP CL 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
SETNBE BL 
TEST RDI, RDI 
BTR ECX, EDI 
SETB CL 
JZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RSI], RAX 
SETZ CL 
SETNZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
