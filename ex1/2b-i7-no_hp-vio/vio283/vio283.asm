.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -72 # instrumentation
SETO AL 
MOVSX SI, CL 
SETBE DL 
XCHG RAX, RAX 
CMOVLE RCX, RAX 
SETS DL 
CMOVNO RCX, RAX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EBX 
XOR SIL, 119 
CMOVB RBX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EAX, word ptr [R14 + RBX] 
OR SI, -100 
AND BX, 25 
CMOVS RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RDX] 
LEA EDX, qword ptr [RCX + RDI + 13437] 
BT RAX, RBX 
MOVZX SI, BL 
CMOVNBE RBX, RBX 
JNB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -108 # instrumentation
CMOVNP CX, DI 
MOV SIL, DL 
MOV RCX, -2446164120325595327 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], AL 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RCX], BL 
AND RSI, 0b1111111111111 # instrumentation
MOV RBX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RDI, qword ptr [R14 + RBX] 
BTC RBX, 8 
XCHG DX, AX 
BTR RCX, RDI 
MOV CL, 45 
BT AX, CX 
AND DIL, 97 # instrumentation
CMOVS DX, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
