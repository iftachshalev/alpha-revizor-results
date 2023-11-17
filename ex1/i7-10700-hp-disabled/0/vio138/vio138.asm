.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ECX 
AND SIL, 9 # instrumentation
CMOVNL ESI, ECX 
XCHG BL, CL 
SETP AL 
CMOVNL RBX, RBX 
XADD SI, BX 
CMOVNBE RDI, RBX 
XCHG CX, AX 
OR RAX, RSI 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 13 # instrumentation
SETNS DL 
CMOVNLE RCX, RDI 
CMOVBE SI, CX 
CMOVBE AX, CX 
XOR SIL, 94 
SETNZ SIL 
CWD  
JNLE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BTS CX, BX 
SETNB AL 
SAHF  
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RCX] 
AND SIL, 43 # instrumentation
SETP AL 
CMOVNS RSI, RCX 
CMC  
BTC DI, -92 
XOR AX, 24810 
CMOVP EDX, EDI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], BX 
JNZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX EBX, DL 
OR RDI, -8 
CMOVNBE EDX, EBX 
BTC EDX, 23 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDX], RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
