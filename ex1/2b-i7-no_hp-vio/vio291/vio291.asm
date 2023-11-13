.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RDX] 
OR AL, AL 
AND RDX, 0b1111111111111 # instrumentation
AND DI, word ptr [R14 + RDX] 
BTC RDI, 1 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 3 
TEST AX, AX 
XCHG DL, CL 
SETP AL 
OR DX, 0b1000000000000000 # instrumentation
BSF AX, DX 
BTC EDI, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DIL 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RCX] 
BTC SI, 126 
AND DIL, -23 # instrumentation
SETS AL 
XOR EAX, ECX 
TEST BX, DI 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
MOVZX EDX, CX 
NOT RDX 
OR BL, 33 
AND RAX, RBX 
BTC SI, CX 
BTR ECX, EAX 
XOR BL, DIL 
TEST ECX, 1208330049 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RDI], RDX 
AND RSI, 0b1111111111111 # instrumentation
MOV BX, word ptr [R14 + RSI] 
SETB AL 
AND RDX, 0b1111111111111 # instrumentation
XOR DIL, byte ptr [R14 + RDX] 
LEA EBX, qword ptr [RAX + RSI + 17662] 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
