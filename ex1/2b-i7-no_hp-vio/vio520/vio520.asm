.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 52 # instrumentation
NOP  
CMOVNB CX, BX 
SETNB AL 
OR DL, -112 
XCHG EAX, EDX 
TEST RSI, RCX 
TEST DIL, 1 
XCHG ECX, EDX 
CWDE  
SETNZ DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RDI] 
XOR EAX, -844584676 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], CX 
CMOVLE RBX, RDI 
MOV CX, DX 
CMOVNLE DI, AX 
TEST AL, 60 
CMOVNL EBX, EBX 
AND RSI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RSI], -813493010 
CMOVNZ ESI, ESI 
AND RDI, 0b1111111111111 # instrumentation
OR EBX, dword ptr [R14 + RDI] 
CMOVB RAX, RBX 
XOR EAX, EDI 
MOV AL, 88 
XOR EAX, 1083417438 
SETNO DIL 
SETB CL 
OR EAX, -798429507 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], -108 
XADD CL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
