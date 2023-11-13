.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BT ESI, EDI 
SETB AL 
OR AL, -28 
OR SIL, BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR RBX, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], DL 
MOVSX EDX, AL 
CMOVP ECX, EDX 
SETNS AL 
MOVZX RSI, SIL 
CMOVB RDX, RDI 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG word ptr [R14 + RBX], AX 
JNBE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR SI, 15 
CMPXCHG ESI, EDX 
CMPXCHG BL, DIL 
BT EAX, ESI 
AND RCX, 0b1111111111111 # instrumentation
CMOVNZ ESI, dword ptr [R14 + RCX] 
MOV SI, -7740 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ DI, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], AX 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
AND RSI, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RSI], AL 
SETLE AL 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNB EDX, dword ptr [R14 + RDX] 
CMOVBE EAX, EDX 
AND BX, BX 
AND RDI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RDI], 1 
MOVZX SI, SIL 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], EDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
