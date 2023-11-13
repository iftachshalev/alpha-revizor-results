.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -10 # instrumentation
CMOVLE RBX, RDX 
AND RSI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RSI], ESI 
CMOVNB BX, SI 
SETO BL 
XADD BL, BL 
XADD RBX, RCX 
MOV CL, 27 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, ESI 
MOV AL, AL 
CMOVZ SI, SI 
BTS RDI, RDI 
TEST BL, CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -49 
MOVZX EDX, BL 
BSWAP ECX 
MOVZX RDX, AL 
AND RDI, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDI], BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], SI 
AND RBX, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RBX] 
NOT AX 
BTS RAX, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RBX 
AND DIL, -100 # instrumentation
SETB DL 
MOVZX SI, DL 
CMOVLE ECX, EBX 
XOR AL, 31 
AND RBX, 0b1111111111111 # instrumentation
CMOVS SI, word ptr [R14 + RBX] 
MOVSX RAX, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
BTS EAX, -53 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDI] 
BSWAP EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
