.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RSI] 
TEST DIL, 29 
AND RDI, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDI] 
MOVZX DI, CL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], BL 
TEST RAX, 1584464628 
TEST BL, DIL 
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, 64 # instrumentation
SETNBE BL 
AND RDI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RDI], RCX 
AND DIL, -56 # instrumentation
CMOVNLE AX, CX 
TEST EAX, -695726750 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVS DI, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RBX] 
XCHG BX, AX 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST AX, 27046 
CMOVBE RCX, RSI 
OR RAX, 438650303 
SETNBE BL 
MOVSX RDI, CX 
MOVZX EDX, AL 
CMOVNL AX, AX 
MOVSX CX, BL 
XOR DI, 73 
JMP .bb_main.3 
.bb_main.3:
AND SIL, -50 # instrumentation
SETO DL 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RAX 
MOVZX BX, DL 
TEST RDX, RBX 
CMOVNS BX, AX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDX, byte ptr [R14 + RDI] 
BT AX, DI 
XADD DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
