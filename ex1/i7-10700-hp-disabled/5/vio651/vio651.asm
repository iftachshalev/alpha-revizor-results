.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -51 # instrumentation
SETNLE CL 
BTC RBX, RAX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EBX, dword ptr [R14 + RAX] 
MOVZX CX, BL 
CMOVBE EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RSI], -60 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
CMOVNL CX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDX], 2 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RBX, qword ptr [R14 + RCX] 
CMC  
SETL SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], -28 
CMOVLE RSI, RDX 
JNZ .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -70 # instrumentation
CMOVNLE RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
OR CL, byte ptr [R14 + RCX] 
TEST AL, DL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE EDX, dword ptr [R14 + RSI] 
NOT ESI 
TEST EDX, ECX 
SETL DL 
CMOVNB ECX, EDX 
XCHG RCX, RBX 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -116 # instrumentation
CMOVO RAX, RDI 
XCHG EDI, ESI 
MOV RAX, RDX 
CMOVNB SI, CX 
BTR AX, -74 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
