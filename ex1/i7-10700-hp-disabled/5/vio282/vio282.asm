.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
CMOVBE RCX, qword ptr [R14 + RAX] 
TEST AX, 23945 
TEST RAX, 1904751394 
AND RDI, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDI], DL 
SETNZ DIL 
JNBE .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
MOV RBX, -8106742865736861978 
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RCX] 
CMOVL SI, DX 
SETB BL 
CMOVP DI, SI 
SETS BL 
STC  
TEST EDI, -2075680040 
JBE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -72 # instrumentation
CLD  
SETS DL 
MOVZX DI, CL 
MOVSX AX, AL 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -64 
CMOVNLE EBX, EAX 
SETB CL 
XCHG EBX, ECX 
OR SIL, -74 
CMOVO BX, CX 
CMOVP DX, DI 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RBX], RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RDI] 
MOVSX EDI, SIL 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RBX], BX 
CMOVS ECX, EDI 
MOVSX RSI, BL 
TEST RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF EAX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
