.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 9 # instrumentation
CMOVNL RCX, RAX 
LEA CX, qword ptr [RSI] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
OR CX, 16 
TEST AL, -59 
BT DI, -83 
XOR CL, BL 
OR SIL, -13 
NOP  
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 22 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RAX], RAX 
CMPXCHG SIL, DIL # instrumentation
AND DIL, 48 # instrumentation
NOT EDX 
CMOVO RAX, RAX 
CMOVB RDI, RAX 
SETNLE BL 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 31 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CX, AX 
CMOVS DX, BX 
OR RAX, RSI 
AND RDX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDX] 
CMPXCHG AL, AL 
MOV BL, CL 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], RCX 
XOR RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
TEST SI, -4959 
NOP  
AND RDX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDX] 
CMOVNS EDI, EAX 
OR RCX, -42 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RBX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
