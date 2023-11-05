.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -41 # instrumentation
CMOVNL CX, CX 
OR RAX, RAX 
XOR EAX, -1068635350 
AND RCX, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RCX] 
BTR ECX, -57 
TEST SI, CX 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RAX], EBX 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -92 # instrumentation
SETNBE AL 
OR RBX, -96 
MOVSX SI, AL 
AND RDI, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RDI] 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RSI], -36 
AND RBX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RBX] 
SETP DL 
CLC  
SETNO DL 
XOR AX, DX 
SETNP BL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDX, dword ptr [R14 + RDX] 
AND DIL, -107 # instrumentation
CMOVNL RSI, RDX 
JRCXZ .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND SIL, -86 # instrumentation
XCHG RCX, RBX 
CMOVNO RDI, RDX 
SETNS CL 
CMOVL RAX, RBX 
CMOVNB RAX, RAX 
CMOVB BX, DI 
JMP .bb_main.4 
.bb_main.4:
AND DIL, -95 # instrumentation
XCHG CL, CL 
SETBE BL 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RCX] 
BT BX, CX 
MOV DI, CX 
MOVSX RDI, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
