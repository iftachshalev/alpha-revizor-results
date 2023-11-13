.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, -20060 
CMOVNL DX, BX 
SETNP AL 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], 26 
TEST AX, 23838 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
MOVSX SI, DL 
CMOVNS RBX, RDX 
OR RBX, RCX 
MOVSX ESI, DX 
CMOVS DI, SI 
CMOVP RAX, RBX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], 1016218137 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
MOVZX ECX, BL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 71 # instrumentation
CMOVZ EDX, EAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EBX 
XCHG RCX, RBX 
AND RDI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RDI] 
XOR EDI, 15 
BTC EAX, 3 
CMPXCHG EAX, ECX 
CMOVNZ CX, CX 
CMOVO BX, SI 
XOR EDI, -105 
XCHG BL, AL 
MOV EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], DL 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RSI] 
MOVZX EDI, BX 
AND RSI, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
