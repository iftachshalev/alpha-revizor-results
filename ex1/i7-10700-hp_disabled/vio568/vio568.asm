.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV AL, 113 
MOVZX EBX, BL 
AND RAX, 0b1111111111111 # instrumentation
MOV EBX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RDX] 
CMOVNP DI, SI 
MOVSX RBX, DX 
OR RAX, -705408458 
NOT RSI 
SETBE DIL 
OR DI, BX 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], 101 
SETNB SIL 
LOOPE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EBX, dword ptr [R14 + RDX] 
MOVZX EBX, BX 
AND RCX, 0b1111111111111 # instrumentation
XOR RCX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVP DX, word ptr [R14 + RCX] 
CMOVS RCX, RDX 
MOVZX EAX, AX 
CMOVNO DX, DI 
AND RSI, 0b1111111111111 # instrumentation
MOV RCX, qword ptr [R14 + RSI] 
BTR RDX, RAX 
XOR CL, DL 
JMP .bb_main.2 
.bb_main.2:
XCHG RDX, RAX 
AND AX, 2268 
AND RCX, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RCX] 
AND RDI, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RDI], BL 
CMOVNS RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
CMOVNS EDX, EBX 
SETZ CL 
TEST AL, -72 
XCHG RSI, RAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
