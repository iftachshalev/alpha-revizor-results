.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR RAX, -1728063483 
BTC ECX, EBX 
TEST AL, -128 
TEST EAX, 1079840925 
MOVSX EDX, CL 
SETBE DL 
SAHF  
CMOVNP EAX, EDI 
XOR RDI, 35 
BT DX, CX 
AND SIL, -106 # instrumentation
CMOVL EDI, EAX 
CMC  
TEST BL, -13 
CMOVNBE RCX, RSI 
CMOVBE RBX, RDX 
CMOVNBE EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RCX], RDI 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RAX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR DX, 0b1000000000000000 # instrumentation
BSF SI, DX 
AND RBX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BT dword ptr [R14 + RBX], ESI 
XOR RAX, RCX 
CMOVNB RBX, RBX 
BTR ECX, 120 
OR DL, DL 
SAHF  
CMOVNP DX, AX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], 61 
NOT AL 
MOVZX BX, DL 
CDQ  
CMPXCHG DI, BX 
CMOVNO ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
