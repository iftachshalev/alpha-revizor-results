.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1352363331 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RDI] 
CMPXCHG DL, DL 
BSWAP RDX 
BSWAP RSI 
JO .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
LEA RAX, qword ptr [RSI] 
OR AX, -15855 
CMOVBE DX, AX 
AND RCX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RCX], 0 
BTS SI, -35 
BTR EDX, EDI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], DI 
XCHG RDX, RBX 
JMP .bb_main.2 
.bb_main.2:
AND SIL, -85 # instrumentation
SETBE CL 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
XOR DIL, CL 
BT RBX, -103 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], RAX 
CMOVNZ RDX, RAX 
CMOVP EDI, EDX 
OR CL, AL 
JMP .bb_main.4 
.bb_main.4:
OR AX, 17613 
AND RDX, 0b1111111111111 # instrumentation
CMOVP CX, word ptr [R14 + RDX] 
BTR EDX, ECX 
AND DIL, -37 # instrumentation
SETNO BL 
CMOVBE EDI, EAX 
SETB DL 
SETNBE DL 
BTC ECX, ESI 
XADD BL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
