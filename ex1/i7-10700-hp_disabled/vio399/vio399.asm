.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 72 # instrumentation
CMOVNZ BX, AX 
SETNZ DL 
XCHG DX, SI 
TEST AL, 51 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -48 # instrumentation
CMOVNBE DX, AX 
TEST BX, 16201 
AND RDX, -9 
MOVSX SI, SIL 
SETNL BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDX] 
MOV CX, DI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RAX] 
LEA RDX, qword ptr [RBX + RAX] 
AND EAX, 1260160140 
JMP .bb_main.2 
.bb_main.2:
BTR RBX, 76 
AND DIL, 13 # instrumentation
BSWAP RCX 
SETL DL 
OR DX, 0b1000000000000000 # instrumentation
BSF DI, DX 
BTR RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS BX, word ptr [R14 + RDX] 
MOV AL, -88 
LEA RSI, qword ptr [RDI] 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], 1628515656 
MOVZX RBX, AX 
MOVSX EDX, DIL 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 124 # instrumentation
SETNO CL 
XADD AX, AX 
AND RCX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RCX], -14203 
TEST BL, -46 
SETNS CL 
SETNBE AL 
AND RSI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
