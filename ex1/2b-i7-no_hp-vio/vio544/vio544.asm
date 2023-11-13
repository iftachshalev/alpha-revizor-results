.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -18 # instrumentation
SETNBE AL 
BTR EBX, EBX 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], DX 
CMOVO CX, SI 
BT CX, 106 
AND SIL, -54 # instrumentation
CMOVNO EAX, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR qword ptr [R14 + RCX], 5 
AND SIL, -125 # instrumentation
CMOVS RAX, RAX 
OR AL, 93 
AND RAX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RAX], CL 
CLC  
AND RSI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RSI] 
XOR AX, -10114 
XOR BL, CL 
CMOVNBE RDX, RAX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 59 # instrumentation
CMOVS CX, CX 
SETNL DL 
OR AL, CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO ESI, dword ptr [R14 + RDI] 
MOVZX RDI, SIL 
AND RSI, 0b1111111111111 # instrumentation
MOVZX RDX, byte ptr [R14 + RSI] 
TEST RSI, -477484597 
TEST DIL, BL 
BT EBX, EAX 
BT CX, SI 
AND DIL, -79 # instrumentation
SETNBE DL 
SETNBE AL 
MOVZX EDX, BL 
CMOVNP DX, BX 
SETL DIL 
AND AX, DI 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
