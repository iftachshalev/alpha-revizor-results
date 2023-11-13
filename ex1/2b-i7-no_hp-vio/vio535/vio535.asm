.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD CX, BX 
OR RAX, 403135966 
OR BX, 0b1000000000000000 # instrumentation
BSF BX, BX 
AND DIL, 44 # instrumentation
XCHG RDI, RAX 
CMOVS RDX, RDX 
OR EAX, -40 
CMOVB RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RBX], EDX 
BTC RCX, RDX 
OR SIL, 32 
BSWAP RSI 
MOVSX EDI, DI 
SETLE CL 
CMC  
XADD ESI, EBX 
OR EAX, -543824552 
CMOVNBE EAX, EDX 
AND AL, -1 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST RSI, -47526921 
MOVSX RSI, AX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], DL 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
OR RSI, -88 
CMOVS RDX, RBX 
AND RDI, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDI], RDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EBX 
MOV CL, BL 
AND RAX, 1301617699 
AND BL, -66 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 5 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
