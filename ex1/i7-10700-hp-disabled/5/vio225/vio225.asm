.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 28 # instrumentation
CMOVP RBX, RCX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RCX] 
MOVZX EAX, DL 
CMOVNZ RAX, RCX 
TEST AL, 37 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RSI] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDI 
STC  
BSWAP EDI 
JMP .bb_main.1 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RDI] 
OR RAX, -388116147 
CMOVS SI, BX 
CMOVL RAX, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO ECX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RBX], 2 
BTS RDX, RDX 
BT RDI, 78 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -34 # instrumentation
CMOVNP RDI, RSI 
CMPXCHG DL, AL 
OR EDI, 24 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], AL 
SETB SIL 
SETB SIL 
AND RSI, 0b1111111111111 # instrumentation
XOR ECX, dword ptr [R14 + RSI] 
CMOVNO ECX, ESI 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS RCX, RSI 
AND SIL, 42 # instrumentation
SETNS DL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 37 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
