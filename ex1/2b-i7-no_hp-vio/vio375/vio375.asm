.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT RDI, RAX 
AND SIL, 104 # instrumentation
CMOVS RCX, RCX 
XADD DX, AX 
XOR EBX, ECX 
OR EAX, 18 
SETS AL 
CMOVZ RBX, RDX 
SETNZ CL 
CMOVZ BX, SI 
SETNZ DL 
SETLE CL 
SETO AL 
BT ESI, 81 
AND RAX, -1204619080 
CMOVNL EAX, EDI 
SETLE CL 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDI], 0 
MOVZX RDX, AL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG ECX, ECX 
AND DI, 10 
MOVZX EBX, BL 
CMOVZ CX, CX 
CMOVNS DI, BX 
XOR RAX, -1206911569 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
XCHG EAX, ECX 
BTC AX, 126 
AND RBX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RBX], BX 
AND RAX, 0b1111111111111 # instrumentation
MOVSX RCX, byte ptr [R14 + RAX] 
XCHG RDI, RAX 
CMOVNL RDI, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
