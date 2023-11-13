.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 101 # instrumentation
BSWAP EAX 
CMOVNLE ESI, EAX 
CMOVLE RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RCX] 
CMOVNL RDX, RDX 
BTR ECX, EAX 
MOVZX RDI, SIL 
NOT AX 
AND RCX, -77 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
CMOVZ EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], 96 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], 121 
MOV EAX, EAX 
BT CX, SI 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO DX, word ptr [R14 + RAX] 
CMOVNO EBX, EDX 
CMOVNP AX, DI 
BTS EBX, EDX 
AND RSI, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RSI] 
CMOVNB RSI, RAX 
CMOVNS BX, SI 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RCX], RAX 
OR RSI, -15 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RDI, RBX 
MOVZX SI, SIL 
XOR CX, 68 
CLD  
MOV RBX, RBX 
CMC  
SETLE DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
