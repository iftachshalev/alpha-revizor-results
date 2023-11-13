.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD ESI, EAX 
AND RDX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RDX], CX 
XOR ESI, -92 
TEST CL, AL 
OR RAX, -364727687 
AND RBX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RBX], 2 
BTS RCX, RBX 
BTR EAX, ECX 
MOV RBX, 5495173319857581300 
MOVSX AX, AL 
XOR AX, -21924 
MOVZX ECX, CL 
CMOVL ESI, EDI 
SETLE BL 
CMOVL ECX, EBX 
NOT DX 
BTR EAX, ESI 
TEST AL, AL 
CMOVS BX, CX 
AND RAX, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RAX], EBX 
JBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RCX], RSI 
CMOVNS EAX, EDI 
AND RCX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RCX] 
CMOVS BX, DI 
SETZ BL 
CMOVNL RSI, RAX 
XCHG CL, CL 
CWD  
CMOVB RCX, RSI 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RCX], DI 
AND RBX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RBX], RAX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
