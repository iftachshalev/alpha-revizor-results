.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CDQ  
AND RSI, -13 
AND RBX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RBX] 
SETNS AL 
MOV RSI, -6468949643892902784 
AND RBX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RBX] 
LEA RDI, qword ptr [RCX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE RDI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], CX 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDX], CL 
CMOVB BX, DX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BSWAP RAX 
BTS BX, BX 
AND RDI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], ECX 
CMPXCHG CL, AL # instrumentation
AND SIL, 70 # instrumentation
SETNBE DL 
LAHF  
MOVZX ESI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ DI, word ptr [R14 + RDX] 
SETNS DL 
CMOVLE RSI, RDI 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, 47 # instrumentation
MOVSX SI, BL 
SETB AL 
XOR ECX, 26 
MOVZX EBX, DIL 
CMOVNS RSI, RSI 
BTR BX, DX 
AND DIL, 31 # instrumentation
CMOVP EBX, EDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL RDI, qword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ EBX, dword ptr [R14 + RBX] 
SETNZ DL 
AND EAX, -97 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RBX], ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
