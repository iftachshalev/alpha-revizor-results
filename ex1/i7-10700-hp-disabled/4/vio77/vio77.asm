.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RCX] 
BT AX, DX 
AND DIL, 7 # instrumentation
SETLE BL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RBX, RBX 
SAHF  
XADD BL, BL 
MOV AL, -94 
CMOVS EAX, EDX 
TEST EBX, -144421578 
OR EBX, 5 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR RAX, 2084788246 
BSWAP RBX 
CMOVNB EBX, EDI 
JMP .bb_main.2 
.bb_main.2:
CBW  
AND RSI, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RSI] 
BTS DI, -34 
AND DL, -47 
TEST BL, CL 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 66 
AND RDI, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RBX], SIL 
SETP DL 
XADD DI, DI 
BT ECX, EAX 
XOR EAX, 500319253 
LOOPNE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
CMPXCHG CL, DL 
BT AX, -3 
AND DIL, -22 # instrumentation
CMOVS AX, CX 
CMOVL ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
