.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA CX, qword ptr [RDI] 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 0b1000000000000000 # instrumentation
BSF CX, word ptr [R14 + RSI] 
AND SIL, 13 # instrumentation
SETB DIL 
BTC RBX, -125 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RDI] 
AND DIL, -31 # instrumentation
CMOVS RSI, RCX 
CMOVNB AX, AX 
AND RDI, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDI], 4 
AND DIL, -24 # instrumentation
CMOVL EBX, ESI 
BTS ECX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
CMOVZ EAX, ECX 
BT ECX, EAX 
AND RSI, -40 
SETS BL 
AND BL, AL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 108 # instrumentation
SETLE AL 
SETO SIL 
AND RSI, 0b1111111111111 # instrumentation
AND EBX, dword ptr [R14 + RSI] 
CMOVNBE RCX, RAX 
CMPXCHG AL, AL 
BTR EBX, -77 
OR DI, 0b1000000000000000 # instrumentation
BSF BX, DI 
AND SIL, 122 # instrumentation
CMOVO RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], SIL 
AND RAX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RAX], -1533441148 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 35 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE EAX, dword ptr [R14 + RDX] 
CMOVNP AX, DX 
CMOVNP EDX, EDI 
MOV RSI, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
