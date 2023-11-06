.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RAX] 
CMOVNLE RSI, RDI 
BTR RDI, RDI 
AND RCX, 0b1111111111111 # instrumentation
XOR CL, byte ptr [R14 + RCX] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOVZX EDX, AL 
AND RSI, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RSI], 44 
CMOVNBE CX, DI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RSI, qword ptr [R14 + RCX] 
MOV CL, -63 
CMOVZ SI, DX 
JRCXZ .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CMPXCHG BX, DI 
SETP SIL 
CMOVLE RDI, RDI 
MOVZX ECX, CL 
OR EDX, -116 
AND RSI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RSI], EBX 
XCHG RBX, RAX 
BTR ESI, EDI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -69 
AND RDI, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RDI] 
JNBE .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
OR RCX, -31 
TEST EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RAX, qword ptr [R14 + RSI] 
CMOVNO DX, SI 
SETS CL 
JMP .bb_main.4 
.bb_main.4:
AND SIL, -41 # instrumentation
BTR EDI, ESI 
SETNB DIL 
XCHG RDX, RAX 
CMOVNBE RDI, RCX 
AND EAX, 894080073 
AND RDX, 0b1111111111111 # instrumentation
MOV ECX, dword ptr [R14 + RDX] 
MOV DL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
