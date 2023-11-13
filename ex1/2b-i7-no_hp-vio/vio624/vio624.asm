.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -90 # instrumentation
CMOVNP DX, CX 
STC  
NOT EBX 
XADD RBX, RDI 
MOVZX RBX, CL 
XOR AL, DL 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RBX] 
AND SIL, 53 # instrumentation
CMOVNO DX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RBX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], 114 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RCX 
XOR DL, CL 
NOT DI 
CMOVO RDI, RBX 
MOVZX DI, AL 
MOVZX EAX, SI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE DX, word ptr [R14 + RSI] 
CBW  
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RDX], RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], DL 
CMOVNB RSI, RSI 
OR AL, BL 
MOVZX EAX, CL 
MOV DIL, DIL 
XCHG RCX, RAX 
MOV DIL, 75 
XOR RAX, 2040573151 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ESI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDI], 6 
AND RDI, 0b1111111111111 # instrumentation
CMOVS DX, word ptr [R14 + RDI] 
XOR AX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
