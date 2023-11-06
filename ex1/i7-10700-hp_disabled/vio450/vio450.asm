.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD RCX, RDX 
TEST EDI, EDX 
TEST AX, 1449 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG BL, AL # instrumentation
MOV qword ptr [R14 + RDX], RSI 
LAHF  
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RAX], EBX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], BL 
LOOPE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, -126 # instrumentation
CWDE  
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
NOT DL 
TEST RDX, 98973481 
CMOVNB BX, CX 
BSWAP RCX 
TEST DIL, -107 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 99 
AND AX, 11857 
CMOVS EAX, ESI 
BSWAP RDI 
OR DX, 57 
AND EAX, 245452318 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RCX], EDI 
LEA ECX, qword ptr [RDX] 
JBE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND DIL, -128 # instrumentation
SETNBE BL 
AND DIL, 39 
CMOVNO DX, DX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RSI] 
SETNZ SIL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 52 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE EDI, dword ptr [R14 + RDI] 
MOV RDX, -564087685760350817 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -1677474125 
XCHG SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
