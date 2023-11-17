.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RAX] 
MOV EDX, EDX 
SETNL CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 2 
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
MOVSX DI, CL 
BTR AX, -30 
AND SIL, -31 # instrumentation
JNLE .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND SIL, -72 # instrumentation
MOVSX RDI, SIL 
CMOVBE RDI, RDX 
XCHG DL, DIL 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, 118 # instrumentation
SETNP AL 
SETNS AL 
SETS DL 
XADD CL, SIL 
CMPXCHG AL, DIL 
CBW  
OR EAX, -524409392 
AND RDI, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
AND SIL, 67 # instrumentation
CMOVP RDI, RSI 
NOT CL 
MOV AX, AX 
SETNO BL 
CMOVB EDX, EDI 
CMOVLE SI, BX 
JNL .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR AL, 126 
CMOVNL CX, DI 
XCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], 13507 
CMOVLE RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RDX] 
SAHF  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
