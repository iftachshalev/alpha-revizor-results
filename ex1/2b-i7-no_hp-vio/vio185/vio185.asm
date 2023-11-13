.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTS qword ptr [R14 + RCX], RAX 
CMOVBE EDX, EBX 
XOR RAX, -86 
AND RAX, -794377835 
LEA RAX, qword ptr [RDX] 
CMOVNS SI, SI 
AND CX, AX 
MOVZX DI, BL 
TEST SIL, 79 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], -77 
SETNB DL 
OR BX, 0b1000000000000000 # instrumentation
BSF AX, BX 
AND DIL, -1 # instrumentation
CMOVNP AX, SI 
MOVZX RAX, BL 
AND AL, 65 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR RDX, RDI 
SETB DL 
CMOVP RDX, RBX 
XOR EAX, 52 
NOT EBX 
CMOVZ AX, BX 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EAX 
AND RCX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RCX], 107 
SETS AL 
BTS EDI, 76 
BSWAP RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVP ECX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
MOV EBX, 1687267886 
CMOVL ECX, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
