.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX RSI, SI 
BT DI, AX 
AND SIL, -53 # instrumentation
CMOVNLE CX, CX 
SETNP AL 
CMOVP CX, CX 
OR AX, -15817 
XCHG CL, AL 
CMOVNLE SI, DX 
MOV AL, BL 
MOV SIL, DL 
SETB CL 
AND RBX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RBX] 
CMOVNZ RDX, RAX 
BT EBX, EAX 
MOVZX DX, BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDX], -101 
SETNB CL 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND EAX, -1563049036 
MOVZX BX, DL 
XOR RAX, -2064261560 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
SETB AL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], SIL 
OR RAX, -149643416 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ BX, word ptr [R14 + RAX] 
BT EBX, -66 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], SI 
AND DL, 35 
SETZ SIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], RCX 
MOVZX BX, AL 
CMOVS DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
