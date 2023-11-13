.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -103 # instrumentation
SETBE BL 
CMOVNZ EAX, EDX 
CMOVS SI, AX 
OR AX, 18660 
TEST EAX, -202701810 
AND BL, 19 
XCHG RDI, RAX 
BT DX, SI 
AND DIL, -60 # instrumentation
SETP BL 
XOR DIL, 22 
SETBE BL 
CMOVO CX, DI 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
XADD AL, BL 
CMOVNP EBX, EDX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EAX, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
XOR AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
SETB AL 
CDQ  
SETNS BL 
CMOVNO AX, CX 
AND AX, 19922 
CMOVP ESI, EBX 
CMOVNZ DI, DX 
CMOVNO CX, SI 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], 55 
CMOVL RSI, RDI 
BTC RBX, RBX 
XOR AX, -26328 
XOR EAX, -174361732 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
