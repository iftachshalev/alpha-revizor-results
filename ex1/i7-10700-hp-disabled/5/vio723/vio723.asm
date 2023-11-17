.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -35 # instrumentation
SETNZ CL 
SETZ SIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
CMOVNO DI, AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RCX] 
MOVZX EDX, CL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], DIL 
CMOVNL DX, DI 
CMOVNS RDI, RDX 
CMOVNB RCX, RDI 
CMC  
XCHG RBX, RAX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDI, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDI], -2130929241 
MOVSX RBX, SI 
AND RDX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RDX], AX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -907362558 
AND RDX, 0b1111111111111 # instrumentation
CMOVS RSI, qword ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDX], AX 
CMOVL ECX, ECX 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], ESI 
XCHG EAX, EAX 
NOT AX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RCX] 
CMOVBE EDX, ESI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RCX], 98 
MOVSX RCX, BL 
MOVZX DI, DIL 
CMOVS EBX, EDI 
OR RSI, -109 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RBX] 
SETO DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RAX], CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
