.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST ESI, EAX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RSI] 
AND SI, -104 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], BX 
CMOVO EDX, ECX 
SETB SIL 
XOR SI, 49 
AND RBX, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RBX], 5 
JMP .bb_main.1 
.bb_main.1:
OR RCX, RCX 
AND RCX, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RCX] 
OR EBX, 9 
SETNS DL 
AND RDX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDX] 
CMOVNP SI, DX 
MOV ECX, -432828212 
AND RBX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RBX], SI 
AND DIL, 14 # instrumentation
XCHG EAX, EAX 
CMOVL ECX, EBX 
AND RSI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RSI], -220393747 
AND RDX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RDX] 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDI] 
XCHG RSI, RAX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNO SI, word ptr [R14 + RCX] 
AND AX, 9200 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RCX] 
OR AX, 15905 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RSI] 
BTR DX, CX 
OR CX, BX 
CMOVNLE EBX, EAX 
BSWAP RDX 
MOV SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
