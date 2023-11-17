.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 68 # instrumentation
CMOVB RDX, RDI 
TEST AX, -12902 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RAX] 
CBW  
AND RCX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RCX], EBX 
OR SIL, CL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RBX], BL 
JLE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND DIL, 3 # instrumentation
CMOVNO DX, DX 
TEST DX, DX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], -118 
CMPXCHG CL, CL 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
XADD SIL, CL 
SETBE DIL 
JMP .bb_main.2 
.bb_main.2:
BTS RBX, -68 
BT EAX, 13 
AND RDX, 0b1111111111111 # instrumentation
OR RSI, qword ptr [R14 + RDX] 
BTS RBX, -32 
CMOVBE RAX, RCX 
MOVZX EAX, DL 
TEST AL, -37 
TEST RAX, 1598008349 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDX] 
AND SIL, -59 # instrumentation
CMOVNBE EDX, ECX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR EAX, EDX 
JMP .bb_main.3 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF SI, word ptr [R14 + RBX] 
CDQ  
MOVZX EDX, DX 
AND RDI, 0b1111111111111 # instrumentation
XOR AL, byte ptr [R14 + RDI] 
SAHF  
BT EDX, ECX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
