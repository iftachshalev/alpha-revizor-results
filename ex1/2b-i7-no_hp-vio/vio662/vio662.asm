.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST RAX, 746286218 
AND RCX, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RCX] 
CMOVP BX, DX 
XOR AX, -24506 
CMOVNL DX, BX 
AND EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
CBW  
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -868926374 
AND RDI, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RDI] 
MOV AL, 39 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDI] 
SETNB AL 
XOR RAX, -1641041594 
LEA EBX, qword ptr [RSI + RDI + 11730] 
SETNB AL 
SETNBE CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RDI 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 117 # instrumentation
MOV CL, -1 
SETO DIL 
SETP CL 
XADD AL, DL 
MOVZX BX, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 45 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RBX] 
XOR AL, -38 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RBX, RDX 
BTC DI, DX 
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], DI 
AND BX, SI 
CMOVNB BX, AX 
AND SIL, -8 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
