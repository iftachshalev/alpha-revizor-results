.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], CX 
SETNL AL 
AND RCX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BTC dword ptr [R14 + RCX], EDI 
LEA EDI, qword ptr [RDI] 
BT ESI, 45 
AND DIL, -88 # instrumentation
MOV EAX, 28665355 
CMOVO CX, SI 
TEST ESI, EDX 
BSWAP RCX 
SETO DIL 
CMOVZ ESI, ECX 
STD  
BTS RDX, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR word ptr [R14 + RSI], 7 
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
CMOVNZ RAX, RAX 
SETNS CL 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
CMOVL RBX, RBX 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RSI, RDX 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSF RDX, RAX 
XOR RAX, 1253441256 
CMOVBE DI, SI 
BTS BX, 103 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], CL 
OR AX, -122 
XOR EBX, 32 
CMOVNO RSI, RDX 
OR EAX, -1557319588 
CMOVNLE DI, DX 
OR EAX, 2039413114 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
