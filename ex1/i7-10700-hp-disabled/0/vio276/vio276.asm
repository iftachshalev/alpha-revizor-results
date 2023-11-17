.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
CMOVNL DX, SI 
XOR CL, 2 
SETNLE DL 
BTR DX, 95 
CMOVBE RDI, RSI 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], AL 
BTS EAX, ESI 
AND SIL, -74 # instrumentation
CMOVO SI, DX 
STC  
AND RCX, 0b1111111111111 # instrumentation
CMOVB EDI, dword ptr [R14 + RCX] 
BSWAP EDX 
XOR DI, AX 
STD  
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RCX 
BTC RSI, 62 
XCHG EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RBX], EBX 
JMP .bb_main.2 
.bb_main.2:
MOVZX ESI, CL 
CMPXCHG DX, DX 
MOVZX EAX, CX 
BTS RSI, RDI 
AND DIL, -109 # instrumentation
CMOVS RBX, RCX 
SETNLE BL 
BTC RSI, -43 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
CMOVL RAX, RSI 
MOVSX EAX, BL 
NOT CL 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], -73 
MOV BX, -22761 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
