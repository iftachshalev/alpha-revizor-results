.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], BL 
TEST ESI, -193194534 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RDI] 
CMOVL ECX, EDI 
OR AL, -13 
NOT SI 
XOR DIL, -86 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], DIL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RBX] 
CMOVNS RDI, RAX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 4 
AND AX, -10021 
SETLE AL 
MOV EDI, ECX 
SETO SIL 
AND RSI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RSI], RBX 
SETNZ SIL 
BSWAP RCX 
SETS AL 
MOV DL, BL 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RSI], 7 
JMP .bb_main.2 
.bb_main.2:
TEST DI, 20848 
TEST BL, DL 
CMOVZ RDX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
TEST AX, 302 
XOR EAX, -2012870365 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], EDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR RCX, qword ptr [R14 + RAX] 
OR ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
