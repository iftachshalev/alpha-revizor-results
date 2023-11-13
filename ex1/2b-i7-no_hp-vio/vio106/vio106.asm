.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
CMOVL RBX, qword ptr [R14 + RBX] 
CMOVB DI, SI 
SETB DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], EAX 
SETNLE AL 
CMOVZ AX, AX 
TEST DIL, 67 
NOT ESI 
CMOVL ECX, ECX 
CMOVNBE RAX, RBX 
AND EAX, -234565263 
MOV AL, DL 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], -5950 
BT ESI, ECX 
AND EBX, -128 
MOV RSI, RDI 
XOR AX, SI 
BTC CX, -3 
SETNB SIL 
BT CX, SI 
MOV SIL, SIL 
CMPXCHG RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RCX] 
MOVSX EDX, DX 
BTS EDI, 17 
AND DIL, 32 # instrumentation
SETNLE SIL 
AND RCX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RCX] 
AND SIL, -90 # instrumentation
MOVZX RDX, AX 
CMOVNP DX, AX 
CMOVNL CX, DI 
BTS BX, -52 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
