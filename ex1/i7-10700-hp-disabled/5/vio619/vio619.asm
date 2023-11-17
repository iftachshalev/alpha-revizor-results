.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOVZX ECX, AX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RDX 
CMPXCHG AL, CL 
CMOVNZ RSI, RDX 
MOV CL, -85 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
XADD CX, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RDX] 
XOR DL, BL 
AND RDX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RDX], ECX 
SETNZ SIL 
LEA EDI, qword ptr [RDX + RAX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], BL 
CWDE  
NOT CX 
LEA ESI, qword ptr [RSI + RSI + 44979] 
NOT BL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -49 # instrumentation
SETNS DIL 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EBX 
MOV DL, -85 
CMOVBE EDX, EDX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNL ESI, dword ptr [R14 + RSI] 
CMOVL RCX, RDX 
SETNS AL 
MOVZX RDI, AL 
CMOVL RCX, RDX 
MOVSX RSI, AX 
CMOVNZ RCX, RDX 
AND RCX, 0b1111111111111 # instrumentation
SETBE byte ptr [R14 + RCX] 
XADD CX, SI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], CL 
BTS RBX, 97 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
