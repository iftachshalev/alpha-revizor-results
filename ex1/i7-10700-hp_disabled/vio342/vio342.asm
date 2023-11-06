.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -92 # instrumentation
SETNO AL 
BT RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RBX] 
CMOVNB RCX, RDX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX EAX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 1 
XADD BX, SI 
BTS EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RSI], EBX 
SETNB BL 
OR ESI, EAX 
CDQ  
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RDX 
AND SIL, 57 # instrumentation
CMOVO ESI, ECX 
CMPXCHG AL, AL 
JMP .bb_main.2 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RCX], 5 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], -31621 
BTR EAX, -101 
AND DIL, -94 # instrumentation
CMOVNP RSI, RBX 
SETS DL 
BTS DX, -126 
OR CX, 0b1000000000000000 # instrumentation
BSF DI, CX 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 29004 
XADD AL, DL 
JS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOVSX RSI, AX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RCX] 
XOR AL, 112 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RSI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RDI, 0b111 # instrumentation
BTR qword ptr [R14 + RDX], RDI 
XADD BL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE DX, word ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
