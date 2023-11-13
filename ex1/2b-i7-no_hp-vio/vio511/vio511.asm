.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR ECX, EBX 
XOR EDX, 124 
TEST AL, CL 
SETNLE CL 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], AX 
AND RDX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDX], 80 
BTS RAX, -1 
SETNBE DL 
MOVZX DI, CL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RAX] 
AND DL, DL 
AND RBX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RBX] 
TEST AX, CX 
MOVSX RBX, DX 
CMOVBE RDX, RCX 
BT EAX, EBX 
JB .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND BL, 28 
SETNO CL 
CWD  
XCHG CX, DX 
SETNP CL 
CMOVNP RDI, RBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RSI], 1 
CMOVZ EDX, EDX 
SETNBE AL 
AND DIL, 27 
AND EDI, 107 
SETNO AL 
AND SIL, -101 
AND RSI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RSI], 3 
AND RCX, 0b1111111111111 # instrumentation
CMOVL RDX, qword ptr [R14 + RCX] 
AND AL, 72 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
