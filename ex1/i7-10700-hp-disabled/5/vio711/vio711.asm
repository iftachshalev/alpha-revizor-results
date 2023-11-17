.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -57 # instrumentation
SETB AL 
CMOVL RAX, RCX 
CMOVP EAX, EDI 
MOVSX EBX, DX 
CMOVLE BX, DX 
BT RBX, RDI 
AND RCX, 0b1111111111111 # instrumentation
SETNP byte ptr [R14 + RCX] 
MOV SIL, 25 
AND RAX, 0b1111111111111 # instrumentation
CMOVNL EDX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EDI, dword ptr [R14 + RDX] 
CWD  
XCHG AX, CX 
CMC  
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RAX], AL 
XCHG RAX, RAX 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV RCX, -4474557202352945415 
XADD RDI, RSI 
TEST EAX, 264661356 
OR DX, 0b1000000000000000 # instrumentation
BSF CX, DX 
AND RCX, 0b1111111111111 # instrumentation
MOVSX ECX, byte ptr [R14 + RCX] 
SETNZ BL 
AND RDI, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RDI] 
SETNBE DL 
TEST AL, 82 
MOVZX EBX, AL 
MOVZX ECX, CL 
TEST EDX, 1112155835 
AND RCX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RCX], RDX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RDX, qword ptr [R14 + RAX] 
SETNP BL 
AND RCX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RCX], BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
