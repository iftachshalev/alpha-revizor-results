.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG RBX, RAX 
MOVZX ESI, BL 
LEA CX, qword ptr [RDX + RSI + 14807] 
NOP  
SETLE DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], -40 
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], CL 
CMOVNBE ESI, ECX 
SETS SIL 
CMOVNLE ECX, EDI 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD RAX, RAX 
STC  
OR EDI, 111 
AND AL, 33 
MOVZX EDI, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RBX 
TEST EAX, -1665961841 
CMOVNL EDI, EAX 
CMPXCHG DIL, DL 
CMOVNB ESI, EBX 
SETO AL 
XOR ESI, EDX 
OR RAX, -777988570 
AND RBX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RBX], 1571856673 
AND RAX, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS RBX, qword ptr [R14 + RBX] 
SETNBE BL 
TEST RDI, 719670893 
SETZ AL 
XOR RAX, 548902672 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
