.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RAX], 68 
SETNLE AL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDI, qword ptr [R14 + RSI] 
NOT DX 
OR RDI, 124 
AND AX, -28561 
OR RAX, -1157385836 
XADD EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDI], BL 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
SAHF  
CWDE  
CMOVNZ DI, DI 
AND BL, -74 
CMPXCHG RCX, RSI 
LEA RSI, qword ptr [RSI + RDI] 
CMOVNZ BX, AX 
AND RAX, 0b1111111111111 # instrumentation
AND RBX, qword ptr [R14 + RAX] 
MOVZX RBX, AX 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RSI], -111 
CMOVNO RDX, RDI 
CMOVZ AX, DX 
SETLE AL 
BT RCX, 64 
AND DIL, 72 # instrumentation
CMOVLE ECX, EBX 
AND ESI, EAX 
CMOVNLE RDX, RAX 
CMOVNZ RCX, RBX 
BT EAX, EAX 
AND SIL, 111 # instrumentation
JNL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, 43 # instrumentation
CMOVBE EBX, EBX 
SETZ DL 
AND RAX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RAX], 5 
AND RCX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RCX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
