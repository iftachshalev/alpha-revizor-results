.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -55 # instrumentation
MOVZX DI, CL 
MOVZX EAX, AL 
SETNBE DL 
CMOVNO RCX, RAX 
TEST RSI, 1439171409 
TEST RDI, -1952716338 
TEST SIL, BL 
JMP .bb_main.1 
.bb_main.1:
NOT EAX 
MOV CX, -26882 
CDQ  
BT RDI, -35 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 16 # instrumentation
SETNP CL 
AND RSI, 37 
OR ESI, ESI 
BT ECX, EAX 
AND DIL, -54 # instrumentation
CMOVLE RCX, RDI 
TEST BL, 19 
SETNB CL 
MOVSX EDX, BX 
JNBE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 95 # instrumentation
STC  
CMOVO RDX, RCX 
MOVSX RSI, DX 
BTS ESI, -52 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RBX], 7 
AND RSI, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BT word ptr [R14 + RDI], CX 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], -5 
AND BL, SIL 
JNZ .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
OR ECX, EBX 
CMOVNS ECX, EDI 
BTR EAX, EDX 
XOR RDX, 55 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
