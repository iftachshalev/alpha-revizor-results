.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC RAX, -82 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDX, RAX 
AND DIL, 15 # instrumentation
CMOVO ECX, ESI 
NOT DIL 
CMOVO DX, DI 
CMOVNP CX, DI 
CMPXCHG RBX, RDI 
TEST AX, DX 
SETNBE AL 
SETZ CL 
TEST EDX, ESI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT DX 
MOVZX EDX, AL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], AX 
LEA BX, qword ptr [RBX] 
LEA EAX, qword ptr [RSI + RBX] 
CMPXCHG SI, BX 
SETP BL 
XCHG CL, AL 
CMOVNLE RDI, RDI 
SETNLE CL 
XOR SIL, 15 
SETS CL 
CMOVB ESI, ECX 
OR DI, 0b1000000000000000 # instrumentation
BSR AX, DI 
TEST AX, -8141 
XCHG SI, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RSI] 
CMOVNZ ECX, EAX 
XOR BL, DL 
XOR CL, -28 
CMPXCHG CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
