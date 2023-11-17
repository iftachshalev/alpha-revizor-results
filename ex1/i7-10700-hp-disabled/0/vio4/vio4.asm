.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RBX, RCX 
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], ESI 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 244309732 
MOV CL, 74 
OR AL, -27 
CMOVNZ RSI, RCX 
BT ECX, 119 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RDI] 
SETNL DIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RBX, qword ptr [R14 + RDI] 
XCHG SIL, BL 
MOVZX DX, BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], 18 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 1074464410 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RSI] 
CMOVNS RAX, RBX 
AND RDX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RDX] 
AND AX, -23256 
TEST ECX, -659306489 
CMOVZ DX, CX 
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RBX], CX 
XOR EAX, -1504118953 
AND AL, 116 
TEST SI, AX 
AND CL, 105 
OR SI, 0b1000000000000000 # instrumentation
BSF DX, SI 
AND SI, -43 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
