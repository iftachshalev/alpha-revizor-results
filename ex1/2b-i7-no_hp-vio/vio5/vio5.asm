.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
LEA RDX, qword ptr [RDX + RBX + 4361] 
AND CL, AL 
BTR CX, DX 
AND DIL, -72 # instrumentation
SETP CL 
MOVSX RSI, SI 
AND RAX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RAX] 
CMOVNBE ESI, EDX 
CMOVNP RCX, RCX 
MOVZX EAX, DX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE ESI, dword ptr [R14 + RDI] 
AND RAX, RSI 
XOR DL, DL 
AND RCX, 0b1111111111111 # instrumentation
AND SIL, byte ptr [R14 + RCX] 
XCHG RBX, RAX 
CMOVS EAX, EAX 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC EDI, EBX 
AND RDX, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RDX], 0 
CMOVBE ESI, EAX 
NOT EBX 
AND RAX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RAX], EAX 
CMOVZ DI, DX 
STC  
TEST RAX, RSI 
NOT DI 
XOR AX, -24259 
AND RAX, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RAX], EDI 
AND SIL, -107 # instrumentation
NOT EDX 
SETZ BL 
CMOVNS RCX, RCX 
CMOVZ SI, BX 
XADD DI, CX 
XOR SI, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
