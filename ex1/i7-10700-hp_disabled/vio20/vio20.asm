.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR CX, 18 
OR BX, 0b1000000000000000 # instrumentation
BSF CX, BX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX EDI, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], AL 
CMOVBE ESI, EAX 
SETB AL 
AND RDI, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RDI] 
TEST DIL, AL 
TEST CL, 70 
NOT EDI 
AND ECX, 29 
CMOVNP BX, AX 
MOVZX EBX, AL 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RAX], -40 
AND RDI, 0b1111111111111 # instrumentation
CMOVP EBX, dword ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RCX, qword ptr [R14 + RAX] 
LEA EBX, qword ptr [RSI] 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 54 # instrumentation
SETBE DL 
BT BX, -124 
CLC  
MOVZX ESI, DX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], 112 
TEST RAX, 663832994 
AND RAX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
NOP  
OR SIL, -48 
AND RCX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RCX], EDX 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EBX, word ptr [R14 + RCX] 
XOR SIL, AL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNL DX, word ptr [R14 + RCX] 
CLC  
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
