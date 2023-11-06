.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -29 # instrumentation
SETP AL 
SETBE AL 
TEST CL, 33 
SETNO CL 
CMOVL BX, CX 
XADD AL, AL 
CMOVNS CX, CX 
OR EBX, -43 
BT RBX, RBX 
AND RAX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RAX], ESI 
NOT EAX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
NOT EAX 
AND EBX, 61 
XCHG EDX, EAX 
AND RDI, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
NOT byte ptr [R14 + RAX] 
TEST BL, DL 
TEST EAX, 1101575388 
CMOVBE BX, DI 
TEST CL, AL 
JO .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
CLD  
CMPXCHG EBX, ECX 
XOR EAX, EAX 
AND RDI, 0b1111111111111 # instrumentation
AND ESI, dword ptr [R14 + RDI] 
NOP  
AND RDX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RDX], 46 
MOV BX, -30109 
MOV EBX, 1703035569 
SETNLE BL 
SETB DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RAX] 
XCHG EDI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
