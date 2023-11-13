.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ESI, dword ptr [R14 + RSI] 
BTR ESI, 41 
BT RDX, RSI 
CMOVNBE CX, SI 
OR ESI, ECX 
MOVZX SI, BL 
OR AX, -13522 
OR ECX, ECX 
SETZ CL 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RDI] 
SETS BL 
TEST RDX, 1870027160 
BT EBX, EDX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
BTS dword ptr [R14 + RAX], 2 
CMOVNZ EDX, EAX 
SETB BL 
SETZ CL 
XCHG RCX, RAX 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], CL 
SETB CL 
BTC RBX, -45 
AND AL, -77 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], RDI 
SETNB DL 
AND EDI, -124 
CMOVNZ EDI, ESI 
SETNO DL 
CMOVB RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RBX], 7 
AND RAX, -1953787346 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
