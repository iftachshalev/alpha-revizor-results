.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -31 # instrumentation
CMOVLE SI, CX 
CLD  
NOT BX 
SETP DL 
CMOVL EAX, ECX 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], AL 
MOVSX EDX, CX 
SETNL BL 
XCHG CL, SIL 
CWDE  
CMOVNS RDX, RCX 
XCHG RBX, RAX 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -104 # instrumentation
NOP  
CMOVNS DX, BX 
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], ESI 
OR RAX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], -1256200860 
NOP  
CMOVNL CX, DI 
CMOVL DI, DI 
TEST EAX, ECX 
TEST EAX, -1652781780 
XOR BX, CX 
XADD DL, CL 
JB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR AL, DIL 
SETNZ SIL 
TEST RDI, RDX 
SETNS CL 
CMOVNLE CX, CX 
XOR RAX, -73 
XOR DL, CL 
XADD EDX, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
