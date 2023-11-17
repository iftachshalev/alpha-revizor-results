.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RBX 
BTC ESI, ESI 
OR RAX, RCX 
BTR DI, AX 
TEST BX, BX 
OR RBX, -45 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RBX] 
SETNZ SIL 
TEST SIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RSI] 
MOVZX EDI, CX 
LOOP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -13 # instrumentation
CMOVNBE RSI, RCX 
TEST RAX, -352974900 
CMOVO RDI, RDI 
OR BX, 0b1000000000000000 # instrumentation
BSR DI, BX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], AX 
SETLE BL 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -33 # instrumentation
CMOVO EDI, EDI 
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 4 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND SIL, -114 # instrumentation
SETZ DL 
SETNO DL 
CMPXCHG AL, AL 
SETNL CL 
XCHG RDI, RSI 
AND RSI, 0b1111111111111 # instrumentation
OR EDX, dword ptr [R14 + RSI] 
SETS CL 
AND EAX, 53 
AND RDX, 0b1111111111111 # instrumentation
CMOVZ EAX, dword ptr [R14 + RDX] 
LEA DI, qword ptr [RCX + RDX + 38553] 
BTS RSI, 77 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
