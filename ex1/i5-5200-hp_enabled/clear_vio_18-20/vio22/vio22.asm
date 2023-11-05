.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG EDI, EBX 
CMOVNO EDX, EAX 
CMOVZ ESI, EAX 
CMOVB SI, AX 
MOVZX CX, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RAX], 4 
CBW  
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
BTR word ptr [R14 + RDI], DX 
XOR RDI, RDX 
CMOVZ DI, DI 
CMOVP RDX, RAX 
CWDE  
BTR ESI, -61 
AND DIL, 127 # instrumentation
MOVZX EDX, SIL 
SETNLE AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RBX], RAX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -91 
CMOVNS EBX, ESI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ESI 
AND SIL, -32 # instrumentation
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG EAX, EDX 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RSI 
AND RDI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDI], 9 
XCHG RCX, RAX 
OR EDI, ECX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], 5 
AND DIL, 117 # instrumentation
MOVSX DI, DL 
SETNLE BL 
AND EDI, EBX 
TEST EAX, 1391566890 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], EBX 
OR AX, -6031 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
