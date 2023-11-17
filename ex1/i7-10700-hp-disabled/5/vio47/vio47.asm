.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC AX, DI 
AND SIL, 8 # instrumentation
SETS AL 
MOVSX CX, BL 
BTR BX, DI 
AND DIL, 74 # instrumentation
SETB AL 
XCHG EDI, ECX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RSI, RAX 
AND RDX, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RDX] 
BTS SI, DX 
XCHG DIL, BL 
BTC AX, 37 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
MOVSX AX, CL 
JMP .bb_main.2 
.bb_main.2:
AND SIL, 52 # instrumentation
SETB SIL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], DI 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 86 
SETBE BL 
CMOVS EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP SI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 2619 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RSI] 
XOR EBX, -8 
BTS AX, 119 
SETNZ DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RBX] 
SETZ AL 
JNLE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 116 # instrumentation
CMOVO AX, DI 
MOVZX EBX, BL 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ESI 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
MOVZX DI, DIL 
CMOVNP RSI, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
