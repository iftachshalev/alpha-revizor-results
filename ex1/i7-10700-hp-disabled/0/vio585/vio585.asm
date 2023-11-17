.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BSWAP RCX 
XOR SIL, 78 
AND RAX, RAX 
BTR CX, -12 
AND SIL, 121 # instrumentation
MOVSX ECX, BX 
JNP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDI] 
SETNLE DL 
MOV RDI, RSI 
BTR RBX, RDI 
AND SIL, 101 # instrumentation
CMOVO DI, SI 
XADD RAX, RSI 
SETZ AL 
MOV CX, -10571 
CMOVNO RDI, RDI 
BTR EDX, -122 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RAX, RBX 
AND DIL, 9 # instrumentation
SETO DIL 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -31 # instrumentation
XCHG DL, DIL 
SETNZ BL 
CMOVB RCX, RBX 
MOV SIL, AL 
AND AL, 102 
CMOVNBE ESI, EBX 
OR DIL, 89 
JP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
NOT BX 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE SI, word ptr [R14 + RAX] 
AND RBX, 5 
AND ESI, -22 
CMOVBE RDI, RBX 
CMOVNBE RSI, RDI 
OR AX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
