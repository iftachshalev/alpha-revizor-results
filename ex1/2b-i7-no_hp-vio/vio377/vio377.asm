.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], EDX 
SETNBE DIL 
TEST AL, 71 
CMOVNZ ECX, EDX 
CMOVL ESI, EDI 
LEA DX, qword ptr [RBX + RBX + 48591] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDI], ESI 
OR DX, -97 
AND RSI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RSI] 
XCHG RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDX] 
CMOVBE RDX, RBX 
SETNB BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], 2 
AND SIL, -103 # instrumentation
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVSX RBX, DIL 
AND RAX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RAX], 0b1000000000000000 # instrumentation
BSR BX, word ptr [R14 + RAX] 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], DX 
SETO BL 
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], 98 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], 102 
XCHG AL, BL 
XCHG EDI, EAX 
BTR EAX, EAX 
AND DIL, 20 # instrumentation
CMOVNO BX, DX 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
CMOVZ RAX, RDX 
XOR RBX, -40 
TEST AX, 5182 
SETNB DL 
BTC EDX, 42 
BTS RDI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
