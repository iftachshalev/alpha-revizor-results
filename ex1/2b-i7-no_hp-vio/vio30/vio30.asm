.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR AX, -24528 
SETNP AL 
AND RBX, RCX 
SETS BL 
MOVZX EDX, CX 
XCHG BL, AL 
OR DIL, 34 
AND DI, DX 
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], -16 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -24 # instrumentation
CMOVB DX, AX 
SETZ CL 
CMOVO RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], EAX 
SETNS DL 
MOVZX EAX, DX 
CMPXCHG BL, AL 
TEST DI, BX 
MOVSX DI, AL 
XCHG EAX, EDI 
XOR SIL, SIL 
BTR DX, SI 
AND SIL, 56 # instrumentation
SETL AL 
CMOVNO ESI, EDX 
SETZ AL 
AND RCX, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], BX 
CMOVS EDI, ESI 
AND RSI, 0b1111111111111 # instrumentation
MOVZX EDI, word ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
XADD qword ptr [R14 + RCX], RDI 
LEA RDI, qword ptr [RDX + RBX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], -89 
LEA RSI, qword ptr [RDX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
