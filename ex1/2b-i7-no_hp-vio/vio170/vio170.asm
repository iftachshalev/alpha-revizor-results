.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 119 # instrumentation
SETZ CL 
CMOVNP RCX, RAX 
CMOVNP RBX, RDI 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RDI, byte ptr [R14 + RDI] 
OR AX, -18834 
AND RAX, 111245055 
TEST AX, -8987 
CLC  
SETL DIL 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], DX 
CMOVNP BX, AX 
MOVSX EDI, CX 
MOV EDI, ECX 
CMOVBE DX, AX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND CL, CL 
AND RAX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVP RSI, qword ptr [R14 + RSI] 
TEST CL, CL 
AND AX, DX 
XOR EDX, EBX 
CMOVNZ RAX, RDX 
AND SI, SI 
AND AL, 116 
TEST BX, -31549 
AND RCX, 0b1111111111111 # instrumentation
XOR AX, word ptr [R14 + RCX] 
MOV DL, 95 
AND RBX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RBX], 7 
AND RAX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RAX] 
BT RDI, RAX 
AND SIL, -43 # instrumentation
CMOVNBE EDX, ECX 
SETNS DL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
