.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
CMOVNZ RBX, RCX 
CMOVNP RBX, RDX 
MOV AX, AX 
CMPXCHG EDX, ECX 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
BTC EAX, 97 
AND DIL, 127 # instrumentation
CBW  
CMOVO ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RSI], DL 
MOVSX BX, BL 
XCHG EDX, EAX 
SETO DL 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], ECX 
BTR RDI, RDX 
OR RAX, -83042545 
OR AX, 20538 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], AX 
MOVZX EDX, CL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EAX, -147943841 
XOR CX, DX 
BTR RDI, RCX 
AND DIL, -87 # instrumentation
CMOVNLE EAX, EBX 
SAHF  
AND RAX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RAX], 4 
OR AX, 0b1000000000000000 # instrumentation
BSR BX, AX 
TEST RDI, RSI 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], BL 
CMOVP RAX, RCX 
XOR RDX, -122 
CMOVNL DX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
