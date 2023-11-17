.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND BX, SI 
SETL SIL 
SETS AL 
CMOVLE RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ DX, word ptr [R14 + RDI] 
CMOVZ BX, AX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], ESI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 4 # instrumentation
CMOVB RDX, RCX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EDI, EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -4359 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDX], RAX 
CMOVNBE RSI, RCX 
BTR ECX, EAX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -68 # instrumentation
CMC  
AND AX, 17118 
BTS RAX, -94 
BT CX, -27 
TEST AX, -7457 
AND RAX, -2134345869 
OR AL, -74 
SETL AL 
MOVSX RAX, AL 
AND ESI, 65 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -39 # instrumentation
CMOVLE RSI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], CL 
CMOVNL EAX, EDX 
BTR DX, AX 
MOVSX ECX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB RSI, qword ptr [R14 + RSI] 
SETNO AL 
OR AL, -79 
AND SI, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
