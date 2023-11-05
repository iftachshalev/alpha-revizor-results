.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -74 # instrumentation
LEA ECX, qword ptr [RDX] 
SETP BL 
TEST AL, 70 
SETS DL 
CMOVNO RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE RDX, qword ptr [R14 + RBX] 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], BL 
SETNLE CL 
AND ECX, EBX 
SETNBE BL 
XADD DL, AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
MOV CL, BL 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BT DX, -87 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RSI], DI 
TEST AX, -9526 
XCHG EDX, ECX 
MOVSX RSI, AX 
MOV RDI, 4954028991754109374 
CMOVBE RBX, RBX 
TEST RDX, -978122397 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR RAX, -2 
BTR RDX, 102 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP DX, word ptr [R14 + RSI] 
SETZ DL 
SETNL DIL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], DI 
CBW  
XOR BL, 97 
BTR ESI, 105 
AND DIL, 48 # instrumentation
SETO CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
