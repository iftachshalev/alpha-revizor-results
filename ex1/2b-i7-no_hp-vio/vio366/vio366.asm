.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ESI, CL 
AND RDX, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RDX] 
CMOVNBE SI, DX 
BTC EDI, 82 
AND DIL, 102 # instrumentation
SETZ SIL 
SETNL CL 
MOV RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RCX] 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], CL 
SETNBE BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], AX 
CMOVNLE SI, DI 
BTS BX, -74 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], AL 
MOV BL, 8 
CMOVNZ SI, CX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DX, -70 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], 19 
XCHG EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RDI] 
SETZ SIL 
XOR ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RAX] 
MOV AL, DL 
SETLE DL 
AND RSI, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RSI] 
AND AX, 16747 
TEST RAX, -1618520145 
AND RDX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
MOV RAX, qword ptr [R14 + RSI] 
TEST RAX, -1775368168 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
