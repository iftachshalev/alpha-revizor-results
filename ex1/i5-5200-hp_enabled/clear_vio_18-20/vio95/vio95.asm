.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -92 # instrumentation
CMOVZ DI, BX 
CMOVNLE AX, DI 
AND RDI, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RDI] 
CMOVS RDX, RBX 
SETP DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RDX] 
OR AX, -59 
LEA EBX, qword ptr [RDX] 
OR AL, -78 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTR dword ptr [R14 + RCX], ECX 
JMP .bb_main.1 
.bb_main.1:
XCHG AL, DL 
OR SIL, 64 
CMOVNB RDX, RDX 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], DL 
CWDE  
AND RAX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
AND ECX, dword ptr [R14 + RBX] 
LOOP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CWD  
OR CL, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RSI] 
NOT DX 
OR RBX, RAX 
CBW  
JMP .bb_main.3 
.bb_main.3:
XOR EAX, 1252534783 
BTS EBX, 48 
TEST RAX, -1740811642 
AND RDX, 0b1111111111111 # instrumentation
CMOVL ECX, dword ptr [R14 + RDX] 
CMOVLE ECX, ESI 
XOR RCX, RAX 
CMOVNLE AX, CX 
AND RSI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RSI] 
AND DIL, 63 # instrumentation
CMOVLE RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
