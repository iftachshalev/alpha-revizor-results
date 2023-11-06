.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RAX] 
SETB AL 
BTC SI, BX 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
TEST AL, AL 
BTS SI, 36 
AND SIL, 69 # instrumentation
SETNL DL 
SETNO BL 
BTR RBX, RBX 
AND BL, AL 
CLD  
XOR RAX, 2001343592 
AND RDX, 0b1111111111111 # instrumentation
OR ECX, dword ptr [R14 + RDX] 
SETNLE BL 
XOR EAX, -846975344 
OR DL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], CX 
CMOVNS ECX, EBX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -31 # instrumentation
NOP  
SETS CL 
XOR BX, DI 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT word ptr [R14 + RDX] 
XOR RAX, -8 
CMOVNZ BX, BX 
TEST RAX, -1769136367 
AND RDI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDI], RSI 
AND RSI, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RSI], EDI 
AND RDI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDI], DL 
SETNZ DL 
XOR RAX, -456063788 
AND EDI, EBX 
BTC DX, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
