.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT RBX 
MOVZX ESI, CL 
LEA DX, qword ptr [RCX] 
MOVZX RSI, CX 
BT ESI, -102 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP AX, word ptr [R14 + RAX] 
AND AX, -31770 
SETNL CL 
TEST ESI, 1468793731 
AND EAX, -594421614 
NOP  
CMOVNLE AX, BX 
XCHG ECX, EAX 
CMOVNP CX, DI 
NOT SI 
JNP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
AND RBX, 0b1111111111111 # instrumentation
SETL byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RBX], 4 
MOVSX SI, DIL 
BTS EAX, ECX 
AND RAX, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BT word ptr [R14 + RAX], SI 
AND SIL, 110 # instrumentation
CMOVLE RBX, RSI 
AND RDX, 0b1111111111111 # instrumentation
CMOVB RSI, qword ptr [R14 + RDX] 
NOT CL 
MOVZX RBX, DX 
AND EAX, -16 
XCHG DL, CL 
CMOVP AX, AX 
BTR EDI, ESI 
AND RDI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RDI] 
SETP AL 
CMOVO ECX, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
