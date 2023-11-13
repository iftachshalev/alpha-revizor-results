.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD SI, CX 
CMPXCHG AL, BL 
TEST EDI, 2143599650 
BTR ESI, 107 
XOR BX, 32 
MOVSX ECX, DIL 
CMPXCHG DL, CL 
CMOVB AX, DX 
BTS EAX, -77 
OR AX, 0b1000000000000000 # instrumentation
BSR DX, AX 
AND DIL, -52 # instrumentation
XCHG SIL, SIL 
SETNBE CL 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 80 # instrumentation
MOV AL, -38 
SETNP CL 
MOV AL, -24 
CMOVBE RDI, RAX 
CMOVL AX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
OR SI, 0b1000000000000000 # instrumentation
BSF BX, SI 
AND DIL, 18 # instrumentation
CMOVBE RDX, RDI 
SETNBE BL 
AND RSI, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RSI], AL 
MOVZX EDI, AL 
CMOVZ EBX, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], RSI 
BTR RSI, -113 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, ECX 
OR AL, -34 
MOV AL, 55 
NOT EDX 
MOVSX RDI, SI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
