.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AL, 44 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
CMOVZ DI, BX 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RBX], EDI 
CMOVNLE BX, CX 
BTC EBX, EAX 
AND RAX, 0b1111111111111 # instrumentation
MOV DI, word ptr [R14 + RAX] 
OR AL, 2 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EDX, EDX 
TEST EAX, -1613013826 
AND EAX, 1921912876 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVNB RAX, RDI 
SETP CL 
SETNP CL 
AND CL, DIL 
AND RCX, 0b1111111111111 # instrumentation
BTR qword ptr [R14 + RCX], 1 
AND DIL, -38 # instrumentation
CMOVP DX, AX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AL, BL 
SETNP DIL 
XOR AL, 102 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RCX], DIL 
XCHG DI, AX 
CMOVO DX, AX 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RSI] 
CMOVNB RBX, RBX 
BTR RDI, -128 
OR AX, 0b1000000000000000 # instrumentation
BSF AX, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
MOV CL, byte ptr [R14 + RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
