.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE AX, word ptr [R14 + RDX] 
STD  
SETNLE AL 
MOV RCX, -4256199145253428646 
NOP  
BTR CX, SI 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], EDI 
CMOVNBE EDI, EDX 
CMOVNLE RSI, RBX 
AND RCX, 0b1111111111111 # instrumentation
MOV EDI, dword ptr [R14 + RCX] 
BT DI, -96 
AND RCX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RCX], 0b1000000000000000 # instrumentation
BSR SI, word ptr [R14 + RCX] 
BTS SI, SI 
AND DIL, -101 # instrumentation
CMOVNL BX, AX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
CMOVNS RCX, qword ptr [R14 + RAX] 
TEST RAX, -879126828 
XOR SIL, -64 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], EDX 
AND RDI, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDI], 67 
BTS RSI, RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], DL 
OR ECX, ESI 
OR BL, -15 
XOR DL, DL 
CMPXCHG DL, SIL # instrumentation
SETBE CL 
LAHF  
MOV RSI, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RCX], 0 
AND RDX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RDX] 
MOVZX EDX, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
