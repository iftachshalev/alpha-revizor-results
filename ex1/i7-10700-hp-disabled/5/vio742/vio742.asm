.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CWD  
TEST RAX, 1730785786 
OR AL, -37 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RSI] 
CMOVNLE DX, AX 
CMOVNP EAX, EDI 
MOVZX RSI, SI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDI] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, -214951971 
AND EAX, ECX 
XOR BX, -102 
AND RCX, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RCX] 
OR CX, 0b1000000000000000 # instrumentation
BSR DX, CX 
SETNZ AL 
OR EDX, EDX 
AND EAX, -579341946 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -40 # instrumentation
SAHF  
SETNLE AL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
AND DIL, 36 # instrumentation
CMOVNL RAX, RAX 
AND BL, -119 
NOP  
TEST AL, 65 
XOR RAX, -190583096 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -67 # instrumentation
XCHG SI, SI 
SETB AL 
TEST ESI, -1687407038 
CMOVNLE EDI, EDX 
XCHG RDI, RDI 
SETNLE DIL 
TEST DIL, DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
