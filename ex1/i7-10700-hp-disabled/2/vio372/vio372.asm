.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -125 # instrumentation
SETBE BL 
CMOVBE EBX, EDX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 24 # instrumentation
CMOVNS AX, DX 
AND SIL, 69 
TEST EAX, 1183110198 
TEST AL, BL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RSI] 
AND DI, 5 
AND EAX, 92 
MOVSX ESI, SI 
STC  
BTS DX, CX 
XCHG RCX, RDX 
XCHG EDX, EAX 
LOOPNE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -3 # instrumentation
CMOVL RDX, RAX 
AND RDX, -94 
MOV SI, AX 
BTS DI, BX 
OR AL, -118 
MOVZX RCX, AL 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 5 # instrumentation
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVBE CX, word ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1529653777 
XOR AX, 10212 
AND SIL, -84 
XCHG DI, DX 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 80 # instrumentation
SETO DIL 
CMOVB ECX, EBX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EDI 
MOV RCX, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RCX, qword ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
