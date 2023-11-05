.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG DL, AL 
SETBE SIL 
CMOVZ DX, DX 
XOR RAX, 1915467336 
SETL CL 
BT CX, AX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EDI, 35 
AND SIL, 51 # instrumentation
NOT AL 
SETP SIL 
CMOVZ DI, BX 
SETS DIL 
SETNBE CL 
AND RDX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDX], 4 
JZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 0 
AND RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RAX] 
CMOVNO BX, CX 
BTC RAX, -114 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE ECX, dword ptr [R14 + RDI] 
NOT RAX 
AND RDI, RDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RCX] 
JNLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], -38 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RAX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
NOT DL 
AND RDX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RDX] 
CMOVNLE EDI, EDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], CL 
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTS word ptr [R14 + RDI], BX 
BT ESI, -31 
AND DIL, -28 # instrumentation
CMOVNL EDI, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
