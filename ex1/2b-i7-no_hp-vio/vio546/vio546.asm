.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -23 # instrumentation
SETNL DL 
MOV EAX, ECX 
CMOVP RSI, RCX 
SETLE CL 
CMOVO DX, SI 
MOVSX DX, AL 
SETNL SIL 
XOR RAX, 1348510015 
AND CL, -112 
CMOVNS RAX, RDX 
BT DX, -32 
AND DI, 119 
BSWAP RBX 
MOVSX RCX, BX 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], AL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 64 # instrumentation
CMOVO SI, BX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], -112 
CMOVO DI, CX 
MOV CL, -94 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RDI], EDI 
AND RAX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -19 
TEST RAX, -1413272312 
XOR AL, -13 
BT RDI, RCX 
AND DIL, -29 # instrumentation
CMOVNO ESI, EDI 
TEST RCX, -7964120 
OR RSI, 28 
MOV DL, 0 
AND RDX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
