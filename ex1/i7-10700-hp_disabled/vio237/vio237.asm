.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVSX BX, BL 
TEST EAX, 612668129 
MOVZX ECX, DI 
TEST CL, BL 
MOV ECX, -296648080 
AND EAX, 665125038 
SETNBE BL 
CMOVNL SI, AX 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 109 # instrumentation
SETNBE DL 
CMOVNP ESI, ECX 
MOVSX RAX, AL 
MOVZX EBX, DIL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], AL 
SETS AL 
JNLE .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND DIL, 17 # instrumentation
CMOVL RDX, RCX 
SETNZ BL 
XOR RDX, RBX 
OR RAX, -837980175 
CMOVNZ RBX, RSI 
CWDE  
SETNLE SIL 
XOR AL, -8 
JNP .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
CWD  
CMPXCHG BX, BX 
AND EDI, 116 
AND AL, -39 
JMP .bb_main.4 
.bb_main.4:
AND SIL, 83 # instrumentation
CMOVNLE BX, AX 
CMOVS BX, DX 
XADD EAX, ECX 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RDI], -56 
AND ECX, EBX 
BSWAP RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
