.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 65 # instrumentation
SETNB AL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDX 
XOR EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RDX 
AND AX, -29135 
XADD EDX, ECX 
XOR RAX, -1320993245 
CMOVNS EDI, ECX 
OR RCX, 127 
AND DIL, 103 
XADD RCX, RSI 
TEST SIL, -70 
CMOVZ RBX, RSI 
AND RDI, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDI], BX 
MOVSX RDX, DI 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -111 # instrumentation
CMOVNB RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], 0 
XCHG DL, AL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], 30 
NOT AL 
XCHG DL, CL 
MOVSX DI, DL 
BTR EBX, 48 
AND DIL, 114 # instrumentation
CMOVNLE AX, DI 
SETNL CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX DI, byte ptr [R14 + RAX] 
AND AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDI] 
SETNZ DL 
SETNB DL 
MOVSX SI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
