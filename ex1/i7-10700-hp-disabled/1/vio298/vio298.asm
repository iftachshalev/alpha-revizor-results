.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 6 
CMC  
BTR EBX, 17 
JBE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
TEST BL, CL 
SETNBE DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RBX] 
CMOVNS DI, BX 
AND BL, -25 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], BL 
JLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RCX, qword ptr [R14 + RBX] 
SAHF  
AND RSI, 0b1111111111111 # instrumentation
CMOVZ ESI, dword ptr [R14 + RSI] 
OR SIL, 20 
SETNZ AL 
TEST SI, CX 
SETLE DIL 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RBX] 
XOR DIL, 42 
TEST AX, DX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDX, qword ptr [R14 + RDI] 
CMOVZ RSI, RCX 
BTS RCX, RSI 
CMPXCHG RDX, RAX 
BTR DI, -18 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 97 # instrumentation
CMOVNO RAX, RSI 
CBW  
CMOVNL CX, AX 
XCHG AL, BL 
XOR SIL, AL 
MOVZX ESI, AL 
XCHG SIL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
