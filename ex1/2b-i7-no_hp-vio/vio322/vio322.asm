.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTC DI, -22 
CMPXCHG SIL, DIL # instrumentation
AND SIL, -84 # instrumentation
LAHF  
SETZ AL 
CMOVL RDX, RDI 
CMOVNP RBX, RDI 
SETNB DL 
BT CX, 124 
TEST CL, CL 
AND AL, 67 
SETB DIL 
SETNP CL 
CMOVNZ ECX, EDI 
OR CL, CL 
CMOVO EDX, EDX 
TEST RAX, 1552326992 
JZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CMPXCHG EAX, EAX 
AND ESI, 40 
AND RBX, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RBX] 
XCHG EDI, ECX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], DL 
SETZ SIL 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EAX 
CMOVB BX, DI 
XOR ECX, ESI 
SETNL CL 
TEST ESI, 2028035535 
CLC  
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND SIL, 83 # instrumentation
CMOVL DX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], DL 
BTS CX, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
