.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 79 # instrumentation
XCHG AL, BL 
SETNB CL 
BT RCX, -3 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RDI] 
BTR ECX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -1111721651 
CMOVS RDX, RDX 
OR AX, 28016 
CMOVLE DX, SI 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RCX], RDX 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -57 # instrumentation
SETNB DIL 
AND RBX, 0b1111111111111 # instrumentation
CMOVNP RSI, qword ptr [R14 + RBX] 
TEST DIL, -67 
NOT AL 
CMOVS RAX, RCX 
MOVSX DX, BL 
CMOVP RBX, RAX 
SETNLE DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RSI] 
AND RSI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RSI], 0b1000000000000000000000000000000 # instrumentation
BSR RSI, qword ptr [R14 + RSI] 
JMP .bb_main.2 
.bb_main.2:
BSWAP RDI 
XOR BL, 2 
SETL CL 
XOR RAX, 1527411536 
AND RDI, 0b1111111111111 # instrumentation
CMOVNLE CX, word ptr [R14 + RDI] 
CMOVL EDI, EDI 
AND EAX, 1021170099 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -17 
AND RDX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RDX], 0b1000000000000000 # instrumentation
BSR DI, word ptr [R14 + RDX] 
XOR DI, SI 
AND RDX, 0b1111111111111 # instrumentation
SETO byte ptr [R14 + RDX] 
CMOVL RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
