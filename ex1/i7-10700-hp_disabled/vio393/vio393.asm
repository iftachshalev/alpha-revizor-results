.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST AL, -101 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDX] 
TEST SIL, 25 
CMOVL CX, DX 
LEA RCX, qword ptr [RDI + RDI + 61278] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RBX], RAX 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
BTS RAX, RCX 
XOR DL, -103 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
TEST SIL, 46 
AND RCX, 0b1111111111111 # instrumentation
CMOVO DI, word ptr [R14 + RCX] 
SETP DL 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XCHG ECX, EAX 
MOVSX EDI, SIL 
AND DL, 9 
CLC  
AND AX, -30128 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RSI, qword ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF BX, word ptr [R14 + RCX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, ESI 
JMP .bb_main.3 
.bb_main.3:
TEST EAX, 1923612153 
OR RCX, 31 
SAHF  
BT EBX, -68 
JMP .bb_main.4 
.bb_main.4:
TEST AL, 42 
OR DIL, CL 
BTC RDI, -50 
AND SIL, -18 # instrumentation
CMOVLE RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 7 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
