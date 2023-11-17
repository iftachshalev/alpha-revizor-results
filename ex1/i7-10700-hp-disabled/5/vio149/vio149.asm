.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RDI] 
XOR CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVB AX, word ptr [R14 + RSI] 
OR DIL, DIL 
MOVSX RCX, DI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], SI 
TEST RSI, 1051295680 
JNLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND SIL, 12 # instrumentation
SETZ AL 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
BTR RSI, -88 
CMOVNZ ECX, ECX 
TEST RAX, 330370308 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RCX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RDI, qword ptr [R14 + RDX] 
JNL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 96 # instrumentation
CMOVZ DI, DI 
OR CL, BL 
BTS RSI, RDX 
AND SIL, -34 # instrumentation
CMOVNZ RSI, RAX 
CMOVLE AX, DX 
CMOVLE RCX, RDX 
AND RSI, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RSI], 4 
AND DIL, -55 # instrumentation
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], -101 
CMOVLE EBX, EAX 
CMOVZ AX, BX 
CMOVNBE RSI, RDI 
AND RBX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RBX] 
AND AX, 8924 
BT ESI, -71 
AND AL, 18 
SETNL SIL 
CMOVP CX, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
