.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RDX, RCX 
XOR BL, -11 
CMOVO RAX, RAX 
LOOPNE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR ESI, EBX 
MOV ECX, EDI 
XOR BX, -56 
CMOVBE AX, DI 
CMOVO RCX, RAX 
OR BL, AL 
OR AL, 60 
BTC BX, AX 
AND SIL, 38 # instrumentation
CMOVNLE AX, CX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
TEST DIL, SIL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RAX 
CMOVO DI, SI 
CMOVNP RDI, RDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDX, qword ptr [R14 + RSI] 
TEST RAX, 1087290288 
CWDE  
JMP .bb_main.3 
.bb_main.3:
BTS RSI, RAX 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RAX], CX 
AND DIL, 115 # instrumentation
CMOVZ DI, DI 
SETLE CL 
CMOVP EDX, ESI 
TEST RDI, -236777524 
JNO .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -108 # instrumentation
CMOVZ RAX, RSI 
SETNO SIL 
SETBE SIL 
STD  
CWDE  
AND EDX, ESI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
