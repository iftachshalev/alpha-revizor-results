.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE BX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 5 
OR RBX, -92 
CMOVS DI, SI 
AND RAX, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDI], 0 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RCX] 
BTS RCX, RSI 
BTS RCX, RSI 
CBW  
JMP .bb_main.1 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RBX], DI 
OR AX, -30000 
TEST SIL, -33 
XOR SIL, 31 
AND RCX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RCX] 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND RDX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDX] 
SETNLE AL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RCX] 
NOP  
XOR SIL, DIL 
CMOVNLE RCX, RDI 
BTR EDI, -33 
JMP .bb_main.3 
.bb_main.3:
AND AL, -60 
BT DI, BX 
CMC  
SETNZ SIL 
MOVZX RDI, BX 
NOT AL 
OR AX, 32116 
BTS RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
