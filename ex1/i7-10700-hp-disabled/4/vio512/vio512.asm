.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDI, RAX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], AL 
SETL DIL 
OR RDX, RDX 
CLD  
BT EBX, EAX 
AND SIL, -46 # instrumentation
CMOVS ESI, EAX 
CWDE  
AND AL, -99 
JMP .bb_main.1 
.bb_main.1:
AND SIL, 76 # instrumentation
SETS DIL 
CMOVO EAX, ESI 
OR EAX, -317455196 
MOVZX EDI, BL 
TEST DIL, 12 
XCHG RDX, RAX 
OR DIL, 92 
JNO .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
MOVZX EBX, BL 
XADD BL, AL 
CMOVS DI, DI 
AND RDI, 0b1111111111111 # instrumentation
XOR BX, word ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
SETNS AL 
BT SI, -118 
XCHG RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -81 
JNLE .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RDX] 
MOVZX RBX, DIL 
CMOVZ DI, AX 
MOVSX RBX, BL 
AND RSI, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RSI] 
XCHG RDX, RDI 
TEST AX, -11020 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
