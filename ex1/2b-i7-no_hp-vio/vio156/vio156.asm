.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVZ AX, word ptr [R14 + RAX] 
MOVSX EDX, DL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], EDI 
SETP CL 
XCHG CL, BL 
AND RDX, 0b1111111111111 # instrumentation
CMOVP BX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RDX] 
MOVZX RDX, AL 
TEST EDX, -829241146 
SETNO CL 
TEST DL, 17 
CMOVBE RDI, RDI 
AND BL, CL 
CMOVNLE CX, SI 
TEST AX, -22778 
CMOVNB RDX, RSI 
CMOVBE AX, DI 
CMOVNLE ESI, EBX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XOR ECX, EDI 
CMOVNL BX, DI 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], SIL 
CWD  
NOP  
SAHF  
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE AX, word ptr [R14 + RBX] 
TEST ECX, EDX 
CMOVLE DI, AX 
CMOVBE DI, DI 
CMOVNB CX, SI 
AND RBX, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RDX 
AND DIL, 1 # instrumentation
CMOVP SI, AX 
BTC ESI, ECX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
