.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -12 # instrumentation
SETNB CL 
BTC ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RDI 
AND DX, BX 
CMOVLE ECX, ECX 
SETS CL 
AND EAX, -1658433080 
OR RAX, -318119712 
CMOVNP CX, DX 
SETNZ DIL 
CMOVP EBX, EAX 
STD  
CMOVO RSI, RAX 
BT AX, 51 
XOR BL, -53 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -93 # instrumentation
CMOVNLE EDX, EDI 
AND AX, -1385 
XCHG RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 1 
XCHG AL, AL 
NOT RSI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RDI 
AND CL, -76 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RCX 
AND RDI, RCX 
SETNO CL 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EAX, dword ptr [R14 + RSI] 
AND DIL, -89 # instrumentation
MOVSX ESI, SI 
SETNO BL 
XOR EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
