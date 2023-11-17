.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 24 # instrumentation
SETL DL 
NOT DL 
SETNO BL 
XCHG CL, BL 
CMOVL RAX, RSI 
AND RBX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RBX] 
MOVSX DX, CL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], 46 
NOT BX 
AND RBX, 0b1111111111111 # instrumentation
SETNO byte ptr [R14 + RBX] 
SETNZ SIL 
SETB SIL 
MOVSX EDX, SI 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSR EBX, ECX 
AND RBX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RBX], DIL 
OR BX, AX 
JMP .bb_main.2 
.bb_main.2:
XOR AX, -37 
CMOVNZ RDX, RCX 
XADD EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RAX] 
CLC  
OR EDI, EDI 
MOVZX BX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
CMOVNP EDI, ECX 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], RAX 
JNS .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RCX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RCX] 
AND AL, 55 
AND ECX, 114 
AND RDX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RDX], RSI 
MOVSX DI, DL 
OR CX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
