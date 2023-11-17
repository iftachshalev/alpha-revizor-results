.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RCX, RBX 
SETNP DL 
BT RAX, RBX 
AND RBX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RBX] 
CMOVB CX, AX 
SETLE SIL 
MOVSX EBX, AX 
LEA CX, qword ptr [RBX] 
AND EAX, 90 
AND EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RSI], AL 
MOVSX RDX, DX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], 1543473722 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
XOR CL, SIL 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDX 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RAX 
AND SIL, -9 # instrumentation
SETS SIL 
CMOVLE DI, BX 
XCHG BX, AX 
BSWAP ECX 
NOT RDI 
CMOVB ESI, EDI 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -15 # instrumentation
CMOVB EBX, EAX 
SETZ DL 
AND BX, -26 
CMOVNB RDX, RCX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RAX] 
TEST RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RBX], BL 
BSWAP RBX 
TEST DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
