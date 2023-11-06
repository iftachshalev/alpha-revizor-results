.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
CMOVNS BX, word ptr [R14 + RCX] 
CMOVNBE CX, DX 
AND RDX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RDX] 
TEST DL, -96 
SETL BL 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], EDX 
CMOVB CX, BX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR EDI, 90 
BT RDX, RDI 
XOR CX, BX 
AND RBX, 0b1111111111111 # instrumentation
NOT word ptr [R14 + RBX] 
BTS CX, AX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EBX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF ESI, dword ptr [R14 + RBX] 
JMP .bb_main.2 
.bb_main.2:
AND DIL, 64 # instrumentation
NOT BX 
CMOVNBE DI, DX 
CMOVNO RAX, RCX 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDX 
AND SIL, 80 # instrumentation
CMOVNZ EDX, EDX 
CMOVL RDI, RCX 
XOR EBX, -24 
AND RDX, 0b1111111111111 # instrumentation
XOR RSI, qword ptr [R14 + RDX] 
TEST ESI, -1003286080 
LOOPNE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XOR DIL, 31 
OR DI, SI 
MOV RSI, RAX 
CMOVNO CX, AX 
CMOVS DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], CL 
XCHG RDI, RDI 
JMP .bb_main.4 
.bb_main.4:
MOVSX EBX, CX 
XOR ESI, 108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
