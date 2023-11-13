.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -6 # instrumentation
CMOVNLE ESI, EBX 
XOR CL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RBX] 
CMOVO DI, SI 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], AX 
CMPXCHG DL, AL 
AND RBX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RBX], CX 
AND RSI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTC qword ptr [R14 + RSI], RSI 
XOR RBX, 103 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE ECX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EDI, dword ptr [R14 + RBX] 
CMOVLE EAX, EAX 
MOVSX CX, AL 
CMOVNP RDI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RCX] 
XCHG DX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RAX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR AL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -85 
BTS EDI, ESI 
XCHG AX, SI 
BTR EAX, EBX 
AND DIL, -72 # instrumentation
CMOVNP RAX, RBX 
CMPXCHG RDX, RSI 
BT RCX, RBX 
MOVZX EDX, DL 
XOR SI, 108 
CMOVL AX, DX 
OR AL, AL 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
