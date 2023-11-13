.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDI], RCX 
SETP DL 
XADD RBX, RBX 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
MOV AL, 10 
CMOVB DI, SI 
CMPXCHG RDI, RAX 
OR RDI, 61 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
TEST BL, BL 
SETNS BL 
CMOVNLE DX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO EBX, dword ptr [R14 + RDI] 
TEST EAX, ESI 
AND RAX, 113 
SETZ CL 
TEST AX, 15771 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -32 # instrumentation
SETNS SIL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 126 
CMPXCHG CL, CL # instrumentation
LAHF  
CBW  
SETNZ AL 
XCHG EDX, EAX 
AND RCX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ ECX, dword ptr [R14 + RSI] 
BTS BX, -119 
AND RSI, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], ESI 
CMPXCHG DL, BL # instrumentation
LAHF  
CMOVLE DX, SI 
CMOVLE ESI, EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
