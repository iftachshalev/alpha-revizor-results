.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 58 # instrumentation
CMOVNZ RBX, RSI 
XCHG RCX, RAX 
CMPXCHG DI, SI 
BTR RAX, RCX 
XADD DL, DL 
XCHG AL, DL 
XOR RAX, -740267516 
SETNL CL 
CMOVNZ DX, SI 
BTR RCX, RBX 
AND SIL, -50 # instrumentation
SETBE AL 
SETZ DIL 
SETNL BL 
NOT DL 
MOV DIL, SIL 
SETO DIL 
XCHG EAX, EAX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XCHG EDX, EAX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DX, word ptr [R14 + RBX] 
CMPXCHG ECX, EDI 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE RDI, qword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE ESI, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RSI] 
SETO CL 
CMOVNLE DI, DX 
CMOVNS EDX, EBX 
SETNBE DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RDI] 
MOVSX RDI, CL 
OR SIL, 109 
CMOVNZ AX, DX 
XCHG DI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
