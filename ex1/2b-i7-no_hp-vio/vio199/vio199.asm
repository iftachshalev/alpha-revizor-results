.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR EAX, 17 
AND BX, 60 
CMOVZ RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ CX, word ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], -23 
BTC EBX, -72 
AND DIL, 123 # instrumentation
CMOVO EBX, EAX 
SETO BL 
BSWAP EAX 
NOT DL 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], -56 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, 13 
CMPXCHG DIL, DL # instrumentation
LAHF  
OR AL, -41 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTR dword ptr [R14 + RDI], EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RAX] 
CMOVBE EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RAX] 
MOVZX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVL RAX, qword ptr [R14 + RAX] 
CMOVB RSI, RDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RSI] 
XADD EDX, EDX 
BTS RSI, RBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB RDX, qword ptr [R14 + RDX] 
TEST EAX, 719677540 
AND RDX, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], EAX 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], AL 
MOVZX RDI, AX 
SETNB AL 
XOR RAX, 267302550 
CMOVNLE ECX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
