.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR RDI, -67 
MOV AL, -95 
AND RCX, 0b1111111111111 # instrumentation
MOVSX EBX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RAX] 
JMP .bb_main.1 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RDI], 2 
CMOVBE RDI, RCX 
BTS EDI, EDX 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RAX], EBX 
XADD BX, AX 
AND EDI, 119 
BTC CX, 10 
MOV SI, SI 
CMOVB RBX, RBX 
JNBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 109 # instrumentation
MOV AL, 69 
LEA ESI, qword ptr [RDX + RDI + 17889] 
CMOVNZ RBX, RCX 
XADD DX, DX 
CMOVNO EDX, EBX 
AND AL, -28 
AND DIL, -43 
BT AX, -9 
AND SIL, 46 # instrumentation
CMOVNBE EAX, ESI 
XCHG SI, AX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, 29 # instrumentation
CMOVL EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RDX] 
AND SIL, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RAX], 66 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], CL 
CWD  
OR DI, 0b1000000000000000 # instrumentation
BSR DI, DI 
SETNZ DL 
MOV RCX, RDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
