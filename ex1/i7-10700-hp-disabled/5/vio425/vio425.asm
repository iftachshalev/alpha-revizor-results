.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 62 # instrumentation
CMOVB RDX, RSI 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 5 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RCX, qword ptr [R14 + RDI] 
OR CX, -98 
SETNO CL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RDX] 
MOVZX AX, DL 
CMOVNS DX, CX 
CWD  
AND RCX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RCX], AX 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RAX], CX 
AND SIL, 109 # instrumentation
JLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTC DX, -87 
BTR EBX, 66 
BT RCX, RDX 
AND DIL, 101 # instrumentation
SETP AL 
TEST EAX, EAX 
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
MOVSX DX, DIL 
AND BX, DI 
TEST RAX, 1852954561 
SETP BL 
SETNP SIL 
SETNZ AL 
XOR AL, -69 
CLC  
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
JMP .bb_main.4 
.bb_main.4:
AND AX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDI 
CMOVL EAX, EBX 
MOVSX ECX, CL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
SETBE AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
