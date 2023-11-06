.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RAX], ECX 
TEST SIL, 27 
MOVZX EBX, DIL 
BT RBX, 106 
AND RAX, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RAX], 7 
CMOVNZ DI, SI 
AND RSI, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
BTC word ptr [R14 + RSI], DI 
AND AL, 17 
AND AX, -20290 
SETNS CL 
CMPXCHG DI, BX 
MOV RCX, 5253101363497698686 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDX], AL 
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 75 
AND RDX, 0b1111111111111 # instrumentation
OR ESI, dword ptr [R14 + RDX] 
XOR EAX, EDI 
AND EAX, 30909209 
JMP .bb_main.2 
.bb_main.2:
BTC BX, DI 
AND DIL, -57 # instrumentation
SETO AL 
AND EAX, 738363474 
MOV CX, -20960 
BT EDX, 21 
OR CL, DL 
XOR AL, 36 
SETL DIL 
CMOVP ESI, EAX 
CMOVL RDI, RSI 
SETL CL 
XADD CX, BX 
JMP .bb_main.3 
.bb_main.3:
AND DIL, 50 # instrumentation
CMOVL RCX, RDX 
SETNBE DIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
