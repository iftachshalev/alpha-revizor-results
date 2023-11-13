.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
NOT AX 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], -734833685 
AND AX, 14722 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RBX] 
AND DI, -82 
TEST EAX, -323402627 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 0 
CMOVNZ EAX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
CMOVNO ECX, EBX 
CMPXCHG EBX, EAX 
BTC EBX, EBX 
XCHG BX, BX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], 95 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RAX], 0 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 91 
AND CL, DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
CMOVBE RSI, RCX 
BT CX, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RBX], 5 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RSI], 20 
SETL BL 
BTS SI, DI 
AND SIL, -58 # instrumentation
CMOVNLE CX, SI 
SETLE CL 
BTS AX, 13 
AND RBX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RBX], 0 
AND RAX, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
