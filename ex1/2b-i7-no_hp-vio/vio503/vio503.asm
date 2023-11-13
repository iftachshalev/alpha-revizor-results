.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA ESI, qword ptr [RBX] 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RDX] 
AND SIL, 95 # instrumentation
CMOVP RBX, RSI 
XOR BL, BL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RBX] 
MOVSX AX, DL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ RDI, qword ptr [R14 + RCX] 
MOVZX RBX, AX 
OR DX, BX 
XCHG EBX, EDX 
BT SI, 32 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB RBX, qword ptr [R14 + RDI] 
BT DI, 62 
BTC EDI, -36 
BT BX, BX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], BL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND BL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
SETZ BL 
MOV RBX, 2495682728192161126 
MOVSX DI, AL 
MOV CL, -105 
SETNO DL 
BTR DI, AX 
MOV BL, -43 
XCHG BL, DL 
BTR EDX, -63 
CMOVZ EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
