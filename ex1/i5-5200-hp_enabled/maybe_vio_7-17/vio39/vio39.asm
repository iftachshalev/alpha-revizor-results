.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR RDX, 96 
BTS RBX, RDX 
MOVSX RDI, CX 
XOR AX, 31308 
MOVZX DX, BL 
CMOVBE RBX, RBX 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 123 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR AX, -4270 
SETP BL 
OR DX, -65 
XADD RAX, RDX 
XOR EAX, -59605149 
SETO CL 
SETNS AL 
TEST CL, 119 
AND RSI, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RSI] 
MOVSX RCX, DL 
JMP .bb_main.2 
.bb_main.2:
CMPXCHG SIL, AL # instrumentation
AND SIL, -65 # instrumentation
LAHF  
BSWAP ESI 
AND RAX, -121 
CMOVBE EDX, EDI 
CWDE  
AND RBX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF RBX, qword ptr [R14 + RBX] 
XOR ESI, -48 
CMOVP EBX, EBX 
XADD ESI, EDI 
TEST RDX, RSI 
JMP .bb_main.3 
.bb_main.3:
OR EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RSI] 
MOV EDI, -742805703 
TEST DX, 20055 
CMOVBE RBX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
