.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RAX] 
OR CX, -44 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], RCX 
CMOVB BX, CX 
MOVSX RAX, DI 
JNL .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 53 # instrumentation
CMOVNP CX, CX 
MOV AL, -16 
AND RDX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RDX] 
XOR AX, -28800 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EBX, dword ptr [R14 + RDX] 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -111 # instrumentation
CMOVNP CX, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE CX, word ptr [R14 + RSI] 
XOR RSI, -88 
SETNB AL 
SETNS BL 
CMOVLE RCX, RSI 
MOV RBX, 8721148368040492391 
NOT CL 
JRCXZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 46 # instrumentation
SETNO DIL 
JP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND SIL, 36 # instrumentation
CMOVL RCX, RCX 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 0 
AND RSI, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RSI], RAX 
SETB DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RBX] 
XOR EDI, -126 
XOR CX, -117 
BT RCX, RAX 
AND DIL, 22 # instrumentation
SETLE DL 
AND RCX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RCX] 
NOT AX 
CMOVBE EBX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
