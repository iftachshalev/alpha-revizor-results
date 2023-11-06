.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], -89 
AND RBX, 0b1111111111111 # instrumentation
CMOVNL EDI, dword ptr [R14 + RBX] 
MOV CL, -84 
AND RBX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RBX] 
OR CL, DL 
BT ECX, ESI 
BTS DI, 4 
AND RDI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RDI] 
SETNLE SIL 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], AL 
AND RDX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RDX] 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, ECX 
BT RDX, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 1 
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDI, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR BX, DI 
XOR EAX, 809153662 
CMOVBE RBX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
CMOVNS EBX, EDX 
CMOVNLE RDI, RBX 
CMOVZ ESI, EDX 
AND RDI, 0b1111111111111 # instrumentation
XOR DI, word ptr [R14 + RDI] 
CBW  
OR AL, -26 
MOVSX BX, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
XCHG DL, DL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RSI], RBX 
SETNL DL 
AND AL, 52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
