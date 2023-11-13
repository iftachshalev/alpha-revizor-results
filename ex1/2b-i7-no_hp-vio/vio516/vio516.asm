.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR AX, -58 
CWDE  
XOR AX, 32519 
XOR EAX, 28 
CMOVS ECX, ESI 
CMC  
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
BTC ECX, 93 
XOR AX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
BTC CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDX], 5 
AND DIL, 47 # instrumentation
CMOVO SI, SI 
TEST RDI, RAX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -70 # instrumentation
SETBE AL 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS ECX, dword ptr [R14 + RCX] 
CMOVNB RCX, RDX 
CMOVNO RDX, RAX 
XOR DI, DI 
TEST RAX, 1704389499 
SAHF  
AND RDI, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RDI], 0 
AND SIL, -122 # instrumentation
XCHG DI, SI 
SETNLE DL 
CMOVNLE RDX, RCX 
CMOVNBE SI, DX 
LEA EDX, qword ptr [RSI] 
TEST EBX, EDI 
AND RDI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RDI], 4 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
