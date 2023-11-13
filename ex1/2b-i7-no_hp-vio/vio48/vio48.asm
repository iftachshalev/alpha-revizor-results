.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XCHG RDX, RAX 
TEST CX, DX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], SIL 
CMOVP DX, AX 
SETNO SIL 
SETP DIL 
OR RSI, RCX 
AND AL, -53 
CMOVNS RDX, RAX 
BTC DI, AX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RDI, qword ptr [R14 + RAX] 
AND SIL, -63 # instrumentation
XCHG DX, AX 
CMOVO EDX, EAX 
XCHG CL, SIL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 112 # instrumentation
CMOVBE ESI, EBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RSI] 
MOVSX RAX, DIL 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RDX], RDI 
BTR EDI, ESI 
AND SIL, -3 # instrumentation
CMOVNLE DX, DX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS CX, word ptr [R14 + RBX] 
OR AX, -28 
BTS ECX, 46 
AND DIL, 33 # instrumentation
CMOVP RDX, RDX 
XADD RBX, RSI 
AND RBX, 0b1111111111111 # instrumentation
CMOVL EDX, dword ptr [R14 + RBX] 
BT RBX, RSI 
MOVZX RDI, DX 
TEST EBX, EDI 
TEST RDI, RAX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNB AX, word ptr [R14 + RAX] 
MOVZX DX, CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
