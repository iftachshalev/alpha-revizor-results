.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND word ptr [R14 + RDI], CX 
LEA EDI, qword ptr [RDI] 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], 12016 
MOV CX, -31032 
SETNP AL 
LEA ECX, qword ptr [RCX + RBX + 26052] 
CMOVLE DX, DX 
JMP .bb_main.1 
.bb_main.1:
AND DIL, -38 # instrumentation
XCHG RSI, RAX 
SETO DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RSI] 
SETNB DL 
CMOVBE EBX, ESI 
BT EDX, EDX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], -79 
CMOVNL RBX, RDX 
JMP .bb_main.2 
.bb_main.2:
TEST EAX, -245181692 
AND RDI, 45 
MOV AL, CL 
CMOVNBE EDI, ESI 
CMOVB DX, AX 
OR AL, DIL 
SETZ AL 
JLE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], SI 
BTS EDX, -77 
AND DIL, 40 # instrumentation
SETO DL 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 80 # instrumentation
CMOVZ CX, DI 
XCHG RAX, RCX 
AND RDI, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDI] 
CWD  
AND RDI, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -107 
XADD SIL, SIL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
