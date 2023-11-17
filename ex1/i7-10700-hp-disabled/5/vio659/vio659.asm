.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -55 # instrumentation
SETNBE CL 
XOR AX, -70 
SETO CL 
CMOVNZ RDI, RBX 
SETNL BL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RBX], -35 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], SIL 
BTR SI, CX 
MOV CX, DI 
MOVZX RAX, DIL 
TEST CL, CL 
TEST RAX, 1291114567 
AND RCX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RCX], DIL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB BX, word ptr [R14 + RCX] 
JRCXZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, -18 # instrumentation
CMOVNS RDX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RCX 
CMOVL ECX, EDI 
JNL .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
AND DIL, -101 # instrumentation
CMOVBE CX, DI 
OR RAX, 2119700227 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
BTC RSI, 79 
MOVZX CX, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], CL 
SETNLE SIL 
JLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
MOV RCX, 229997216339697837 
AND RBX, 0b1111111111111 # instrumentation
XOR EDI, dword ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EAX 
CMOVNO DX, DX 
CMOVNB ESI, EDX 
CMOVLE EBX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RDX], SI 
AND SIL, -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
