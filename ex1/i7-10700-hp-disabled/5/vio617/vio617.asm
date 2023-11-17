.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EBX, -109 
BTR RBX, 69 
AND DIL, -108 # instrumentation
CMOVS DX, DX 
XADD DI, DX 
MOV DIL, DL 
AND EDI, 104 
CMOVB RBX, RBX 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], CX 
JP .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RAX], 3 
XCHG RBX, RDI 
CMC  
OR CX, -117 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], 109 
MOV SI, BX 
AND EDX, 21 
AND RAX, 88 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 83 # instrumentation
CMOVNO ESI, EDI 
SETP AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RBX] 
SETP CL 
XADD AL, BL 
AND RBX, 0b1111111111111 # instrumentation
BTC qword ptr [R14 + RBX], 2 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RSI], EAX 
CMPXCHG AL, SIL 
OR RBX, -67 
BTS CX, DX 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], AL 
MOVZX RBX, DI 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -108 # instrumentation
SETZ CL 
AND BL, 103 
CMOVNP EDX, EAX 
BTC DI, 27 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
