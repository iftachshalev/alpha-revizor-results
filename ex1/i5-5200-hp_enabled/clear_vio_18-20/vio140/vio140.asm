.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND ECX, EAX 
AND EBX, 92 
MOV DIL, DIL 
CMPXCHG DL, BL 
SETNB DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDI], AX 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
CMC  
OR ECX, 62 
MOVZX EBX, DL 
BTR SI, DX 
AND BL, 86 
CMOVNP RBX, RBX 
TEST BX, CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RDX], CX 
MOVSX EAX, DX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RDX], -119 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR SIL, -121 
XOR RSI, -35 
XCHG DIL, BL 
AND RAX, 0b1111111111111 # instrumentation
BTC dword ptr [R14 + RAX], 5 
AND DIL, 9 # instrumentation
NOT BL 
SETL DL 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
MOV BL, 6 
CMOVNS SI, CX 
BT EDI, EDX 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RSI], 4 
CMOVB RSI, RAX 
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], ECX 
SETNP DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
