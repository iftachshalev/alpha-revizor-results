.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -116 # instrumentation
CMOVLE RBX, RDI 
MOV BL, AL 
BT RDX, RBX 
BTR SI, AX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
OR RAX, RSI 
CMOVZ RDX, RSI 
CMOVS EDX, EAX 
LEA ESI, qword ptr [RDI + RDX + 19523] 
CMOVZ AX, DI 
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
CMOVS BX, AX 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 112 # instrumentation
CMOVNS CX, DX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO ECX, dword ptr [R14 + RBX] 
MOVSX BX, DL 
CMOVNL AX, AX 
BTC EDI, EAX 
MOVZX DI, BL 
CMOVNB RAX, RCX 
XCHG RAX, RAX 
XOR AL, -115 
MOVSX RSI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
MOV BL, DIL 
TEST DL, -58 
SETBE DL 
OR AL, -121 
BTS DX, 102 
BTR EAX, EBX 
TEST SIL, -14 
CMOVO EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
