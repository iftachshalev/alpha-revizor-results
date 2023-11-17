.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], 120 
MOVSX EDX, SIL 
LEA BX, qword ptr [RBX + RBX + 17361] 
SETL BL 
MOVSX RSI, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDI], -17 
SETNO DL 
AND RAX, -1452505827 
AND AX, 13635 
SETL DL 
MOV EDX, ECX 
SETNLE CL 
CMOVO DI, DI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RSI] 
MOVZX RCX, DX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 73 # instrumentation
SETNZ SIL 
SETP DIL 
BTR BX, 1 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
BTS RCX, -116 
XOR RDI, RDI 
BT EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RDX] 
CWDE  
AND DIL, 123 
TEST EAX, 307732145 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BT qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 7 
OR BX, SI 
CMOVZ DX, SI 
BTC RCX, -28 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 2 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
