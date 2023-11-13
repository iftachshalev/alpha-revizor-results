.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XOR SI, word ptr [R14 + RDI] 
BT EAX, -114 
AND EDX, 7 
AND RAX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
CMOVO EDX, ESI 
TEST SIL, -7 
SETNLE CL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDI 
OR CL, DL 
AND RSI, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RSI] 
MOVSX SI, DIL 
OR DL, DIL 
MOV RAX, RDI 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
AND RSI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RSI], CL 
CMOVZ RDI, RAX 
AND CL, 46 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -65 # instrumentation
SETBE CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
OR EAX, 93 
BTR RDX, -8 
AND RBX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RBX] 
CMOVNS BX, AX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RSI] 
BSWAP RSI 
SETZ SIL 
AND RAX, 174549568 
CMOVNO RAX, RBX 
MOV RDI, RCX 
BTR RSI, RCX 
MOV AL, 84 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
