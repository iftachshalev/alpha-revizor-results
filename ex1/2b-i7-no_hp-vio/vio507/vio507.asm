.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG dword ptr [R14 + RBX], ECX 
SETNLE DL 
MOVZX RSI, SI 
TEST EAX, -471403337 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], CL 
BT BX, -128 
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
CMOVL AX, word ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RCX] 
BTC CX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
AND RDX, RAX 
MOVSX EDI, CL 
AND RDI, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDI], -1847238805 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EAX, EAX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], DIL 
TEST RDI, -998145773 
SETNS BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EBX, dword ptr [R14 + RCX] 
CMOVNZ RSI, RBX 
BTR EDX, 111 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RBX] 
CMOVNO BX, DI 
MOVSX DI, DIL 
AND RDX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RDX] 
OR AL, CL 
MOVZX RDI, CL 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RSI], 126 
SETNP SIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RDX] 
MOV BL, -42 
BT EDI, -41 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
