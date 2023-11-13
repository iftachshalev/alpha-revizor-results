.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RBX 
SETNL CL 
SETNL CL 
TEST BL, CL 
TEST AX, -19727 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], SIL 
XOR AX, 18769 
MOVSX RBX, AL 
CMPXCHG EAX, EDX 
SETP SIL 
XOR BX, -40 
AND RDI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDI], AL 
BT EAX, -52 
CMPXCHG DIL, DIL # instrumentation
AND DIL, -66 # instrumentation
LAHF  
BTC ESI, 60 
NOT DL 
NOT ESI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS word ptr [R14 + RDI], 5 
AND RDI, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RDI], 5 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], 443427680 
TEST EAX, 549828120 
TEST AL, 51 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], BL 
CMOVNO EAX, EDI 
SETS CL 
BT ESI, EDX 
AND SIL, -122 # instrumentation
SETLE DIL 
CMOVS EDI, EAX 
BTR RSI, RAX 
XCHG RAX, RDX 
OR DI, -89 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
