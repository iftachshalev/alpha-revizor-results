.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RAX], -51 
CMOVS DX, DI 
XOR RAX, -1803488222 
MOVZX AX, AL 
CMOVBE RSI, RDI 
CMOVO RCX, RDI 
BT CX, 110 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], AL 
SETNL BL 
MOVZX EBX, CL 
CMOVO ESI, EDI 
SETO CL 
TEST AL, CL 
XCHG CX, AX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RAX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR CX, DI 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RSI], 67 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB ECX, dword ptr [R14 + RAX] 
TEST RSI, -1560227831 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
CMOVNO CX, CX 
TEST RAX, 1245174716 
MOVSX RCX, BL 
SETBE CL 
CMOVNLE CX, SI 
BTC SI, CX 
BT ESI, 95 
SETNB DIL 
AND RDI, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDI], CX 
BTR EDX, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
