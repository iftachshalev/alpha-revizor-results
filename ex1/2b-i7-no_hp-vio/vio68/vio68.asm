.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -12 # instrumentation
MOVZX DI, AL 
CMOVNBE EDI, ESI 
XADD CX, BX 
SETP AL 
AND RDI, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RDI] 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB ESI, dword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL SI, word ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RDX], -79 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 68 # instrumentation
CMOVO RAX, RDX 
CMPXCHG AX, CX 
CMOVB CX, SI 
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], BX 
SETNS BL 
CMOVO RAX, RCX 
NOT RDX 
CMOVNBE AX, AX 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], BL 
CMOVL RCX, RAX 
SETL AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RSI 
AND SIL, -39 # instrumentation
CMOVLE DI, CX 
MOVSX ESI, CL 
OR SIL, DL 
STD  
CMOVLE RSI, RAX 
LEA ESI, qword ptr [RCX + RDX + 42309] 
CMOVNB ECX, EBX 
AND RCX, RCX 
CMOVNLE RDI, RCX 
TEST AL, BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
