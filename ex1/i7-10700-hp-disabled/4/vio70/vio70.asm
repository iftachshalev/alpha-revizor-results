.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 1 # instrumentation
XCHG RBX, RAX 
CMOVNO RDX, RDI 
CMOVNB CX, AX 
TEST DL, 126 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ RCX, qword ptr [R14 + RDI] 
CDQ  
AND RDX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RDX], RAX 
OR CL, 54 
MOV CX, -17729 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RDX 
XOR BL, 68 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], EAX 
CMOVNBE RDX, RDX 
XADD ECX, EAX 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EBX, dword ptr [R14 + RDX] 
XOR DX, DI 
MOV BL, 71 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RAX], RAX 
OR EDI, -121 
CMOVB ESI, EBX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RDI 
SETLE BL 
BTC RDI, -74 
AND SIL, 58 # instrumentation
MOV RBX, RBX 
SETNL BL 
CMOVZ EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR RBX, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 1 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
