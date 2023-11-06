.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 99 # instrumentation
LEA DX, qword ptr [RBX + RSI] 
CMOVNBE RAX, RBX 
AND RSI, 0b1111111111111 # instrumentation
AND CX, word ptr [R14 + RSI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
TEST AX, 25602 
BTS ESI, ECX 
AND SIL, 116 # instrumentation
CMOVLE ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], 24 
AND AL, 7 
XCHG DL, AL 
NOT SI 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RAX], EDI 
XCHG SI, AX 
BTR SI, 24 
AND DIL, 110 # instrumentation
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG RAX, RDX 
CMOVB SI, CX 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
BTR RDX, -97 
AND DIL, 112 # instrumentation
MOVSX EDX, BL 
SETNP DIL 
XOR AX, -86 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RBX 
AND RDI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTR word ptr [R14 + RDI], DI 
SETNZ BL 
CMPXCHG EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RDI] 
OR EDX, ESI 
MOV RSI, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
