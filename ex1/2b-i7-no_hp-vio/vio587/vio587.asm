.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC DI, DX 
XOR DIL, 94 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RCX, qword ptr [R14 + RSI] 
SETL BL 
TEST SIL, 76 
CMOVS RCX, RSI 
MOV CL, DL 
BSWAP RDX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RBX], 5 
AND DIL, -47 # instrumentation
CMOVNLE RBX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
XCHG SIL, SIL 
AND ECX, -92 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR CX, 0b1000000000000000 # instrumentation
BSR BX, CX 
AND DIL, 116 # instrumentation
NOP  
CMC  
XOR AX, 28040 
AND RAX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
OR DX, word ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 23 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RAX] 
XADD RSI, RSI 
XOR ECX, EBX 
MOV DX, AX 
CMOVNZ EDX, EAX 
CMOVNZ EDI, EAX 
CMOVLE ESI, EDX 
BT AX, BX 
TEST EAX, 283450093 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
MOVSX AX, AL 
XOR CL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
