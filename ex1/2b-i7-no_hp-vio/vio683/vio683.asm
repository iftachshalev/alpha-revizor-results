.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
TEST ECX, EDX 
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], EDX 
CMOVNS RDX, RSI 
MOV DL, DL 
AND RDI, 0b1111111111111 # instrumentation
AND RDI, qword ptr [R14 + RDI] 
OR BX, CX 
AND RCX, 0b1111111111111 # instrumentation
CMOVS CX, word ptr [R14 + RCX] 
SETZ AL 
AND RBX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EDI 
MOVSX AX, CL 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT BL 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, EDX 
TEST RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTC word ptr [R14 + RDI], CX 
XCHG EBX, EAX 
XCHG AX, AX 
SETBE CL 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RBX 
AND DIL, -12 # instrumentation
CMOVS ESI, EDX 
CMOVNLE RAX, RAX 
CMOVBE EDI, EAX 
CMOVNLE RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], -1858218596 
BTR RDI, RSI 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BTC dword ptr [R14 + RDX], ESI 
SETB CL 
AND RDX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RDX] 
CMPXCHG AL, BL 
CMOVB EBX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
