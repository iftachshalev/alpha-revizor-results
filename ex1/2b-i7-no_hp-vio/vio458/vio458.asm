.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RDX, RDX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTR dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RCX] 
SETZ DIL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EAX, byte ptr [R14 + RDI] 
XADD SIL, SIL 
BT CX, BX 
TEST AL, -12 
MOVZX DI, AL 
BTS EAX, 107 
AND SIL, -54 # instrumentation
SETNL AL 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RCX], -4 
CWD  
SETP BL 
SETLE CL 
BTC EBX, EDI 
XOR RAX, -852030990 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EAX, 1366556809 
BTR DX, -38 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RDI] 
CMOVZ RBX, RBX 
XCHG DIL, BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
AND DIL, 118 # instrumentation
CMOVNBE ESI, ESI 
AND RAX, -110 
TEST AX, 6216 
SETP DIL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], 2125511533 
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTC word ptr [R14 + RDI], BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
