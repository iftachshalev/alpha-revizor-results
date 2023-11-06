.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AX, AX 
XOR EAX, 4 
CMOVNLE ECX, ECX 
MOV DIL, -79 
SETZ AL 
SETBE CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], CL 
JMP .bb_main.1 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], 72 
CMOVL CX, SI 
MOVZX EDX, DL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RBX 
CBW  
MOVSX EDX, AL 
SETNP BL 
TEST EDX, 120879275 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -82 # instrumentation
SETLE CL 
CMOVNO CX, DX 
BT RSI, -86 
SETNB AL 
AND RDX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RDX] 
SETP DL 
NOT EDI 
CMOVLE ECX, ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RSI], CL 
MOVZX EAX, AX 
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BTS AX, -85 
MOVSX EBX, SIL 
XCHG RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE EBX, dword ptr [R14 + RDI] 
OR AL, -31 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE ESI, dword ptr [R14 + RDX] 
XOR DIL, -101 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
