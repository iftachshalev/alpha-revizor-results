.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 75 # instrumentation
CMOVNLE DX, AX 
CMOVZ DI, BX 
CMOVL ECX, EDI 
AND RDI, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDI], BL 
AND RBX, 0b1111111111111 # instrumentation
XOR DX, word ptr [R14 + RBX] 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BT dword ptr [R14 + RBX], EBX 
CMPXCHG BL, BL 
OR DI, CX 
CMOVNL RCX, RAX 
TEST AX, 26135 
SETLE CL 
SETB SIL 
OR AL, AL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO CX, word ptr [R14 + RBX] 
SETNL DIL 
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], DI 
CMOVNL AX, DX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, 11315 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
AND RCX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RCX] 
AND AX, -21345 
CMPXCHG DX, CX 
CMOVNO EDI, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RSI] 
MOV CL, DL 
BT CX, CX 
LEA DX, qword ptr [RSI] 
SETBE SIL 
XOR RAX, 461030420 
AND EBX, EDX 
AND RDI, 0b1111111111111 # instrumentation
AND BL, byte ptr [R14 + RDI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
