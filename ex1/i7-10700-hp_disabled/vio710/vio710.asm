.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSR EBX, dword ptr [R14 + RCX] 
NOP  
AND BL, -8 
CMOVNLE EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], -53 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], EAX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RAX, qword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], AL 
SETNS CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], CL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNO EAX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV SI, word ptr [R14 + RCX] 
TEST DL, CL 
CMOVLE BX, DI 
XOR DI, AX 
BSWAP RDX 
CMOVNLE ECX, EBX 
XOR EAX, -38 
CMOVNO CX, DX 
BSWAP RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RBX] 
CMOVS AX, SI 
JMP .bb_main.2 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
MOVSX EDI, DI 
XOR AL, -15 
AND RDX, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDX] 
CMOVNLE BX, AX 
CMOVP ESI, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BTC qword ptr [R14 + RAX], RAX 
CMOVNB SI, CX 
CMPXCHG AL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
