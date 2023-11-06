.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RDI] 
AND SIL, -40 # instrumentation
SETL DIL 
SAHF  
LOOPE .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND DIL, -115 # instrumentation
SETS BL 
SETLE BL 
AND RDX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RDX], 0 
CMOVNBE EDX, ESI 
XADD RDI, RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDI] 
CDQ  
BTC RAX, 1 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 43 # instrumentation
SETNLE CL 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
SETL AL 
STD  
XADD EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RCX], AX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 75 # instrumentation
SETNB CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
BTS RDI, RBX 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
CDQ  
BSWAP ECX 
JMP .bb_main.4 
.bb_main.4:
AND AX, -2773 
AND RDI, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RDI], 6 
AND RCX, RBX 
BTR EAX, -123 
TEST RDX, 1595257679 
AND RSI, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RSI], 0 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
