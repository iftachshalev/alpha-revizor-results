.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOP  
XCHG EBX, EAX 
XCHG CX, AX 
BSWAP EAX 
AND ESI, 39 
CMOVNZ DI, SI 
SETNLE DL 
JMP .bb_main.1 
.bb_main.1:
MOV RDI, RCX 
OR EDI, 63 
AND RDX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -119 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EDX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
XOR RAX, 212981336 
SETP CL 
MOV CL, 116 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RBX, byte ptr [R14 + RCX] 
SETNP CL 
XADD ESI, EBX 
AND AL, 110 
CMOVB DI, DX 
JMP .bb_main.3 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
CMOVO RSI, qword ptr [R14 + RSI] 
BTR EAX, 78 
AND DIL, 5 # instrumentation
SETL DIL 
JNS .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
MOVZX ESI, BX 
AND RDX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RDX], RBX 
OR AL, 99 
AND RAX, 0b1111111111111 # instrumentation
SETNBE byte ptr [R14 + RAX] 
TEST CL, DL 
XADD EAX, EAX 
TEST DX, -24833 
AND DIL, -86 
AND RBX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RBX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
