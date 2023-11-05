.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], ESI 
AND AL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RAX] 
MOVZX BX, AL 
OR DIL, 17 
MOVSX EDX, AL 
CMOVNP DI, DI 
JMP .bb_main.1 
.bb_main.1:
TEST ESI, -1585342286 
AND ECX, ESI 
CMOVLE EDI, EAX 
AND RDX, 0b1111111111111 # instrumentation
XOR EAX, dword ptr [R14 + RDX] 
AND RDI, 0b1111111111111 # instrumentation
XOR RAX, qword ptr [R14 + RDI] 
CMOVNB EBX, EBX 
JNP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
CMPXCHG CL, DIL 
SETNO AL 
MOVZX EBX, AL 
AND RSI, 0b1111111111111 # instrumentation
AND DL, byte ptr [R14 + RSI] 
AND DL, 113 
CMPXCHG CX, BX 
CMOVZ CX, BX 
MOVZX DX, BL 
CMOVNP AX, AX 
SETP BL 
TEST CL, -48 
JNP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RSI, 0b1111111111111 # instrumentation
MOV EDX, dword ptr [R14 + RSI] 
MOV BX, DX 
AND RAX, -1462104328 
AND RBX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], CX 
AND RDX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNS RDX, qword ptr [R14 + RSI] 
MOV SIL, -69 
XCHG AL, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
