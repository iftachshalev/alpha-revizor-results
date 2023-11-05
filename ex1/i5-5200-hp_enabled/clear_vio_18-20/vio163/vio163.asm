.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RCX], DI 
CMPXCHG CL, CL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], 63 
SETNBE AL 
SETNBE SIL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RDI 
CMPXCHG EBX, ESI 
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND DIL, -103 # instrumentation
CMOVNS RBX, RDX 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], 46 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], BL 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTS dword ptr [R14 + RSI], EAX 
AND RDI, RSI 
LOOPNE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
XADD BL, DL 
MOVZX ECX, CL 
BSWAP RBX 
AND SIL, DL 
OR RSI, RSI 
JMP .bb_main.3 
.bb_main.3:
XOR AL, -11 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 12591 
BT EDI, -12 
AND RDI, 0b1111111111111 # instrumentation
MOV RSI, qword ptr [R14 + RDI] 
XCHG RSI, RDX 
TEST BL, BL 
SETS AL 
XADD DL, SIL 
CMOVZ RBX, RCX 
JLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], BL 
AND RDI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 6 
XOR EAX, 128050162 
OR DIL, -15 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
