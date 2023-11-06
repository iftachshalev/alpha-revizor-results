.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 89 # instrumentation
MOVZX ECX, AX 
CMOVNB RAX, RAX 
CMOVL ESI, EBX 
SETP CL 
XCHG EDX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], DI 
TEST EAX, 1756905056 
MOVSX DX, SIL 
AND AL, 2 
LEA CX, qword ptr [RDX + RSI] 
CMOVNB CX, BX 
LEA DI, qword ptr [RBX + RSI] 
XCHG DX, AX 
CWD  
MOVSX SI, DIL 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
AND SIL, -11 # instrumentation
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], DL 
SETNB AL 
BTS EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDI] 
CMPXCHG RDI, RDX 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, ECX 
LEA RAX, qword ptr [RDX + RSI] 
XADD ESI, EBX 
OR AX, 29851 
BTS DX, CX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
CMOVNS EAX, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RBX 
CMOVZ RAX, RDX 
AND RBX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RBX], 14 
BTS EDI, -78 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
