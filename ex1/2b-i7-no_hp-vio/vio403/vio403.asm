.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR DI, 121 
CMOVL CX, DI 
XCHG RAX, RDX 
TEST CL, DL 
OR DIL, -6 
CMPXCHG CL, DIL # instrumentation
LAHF  
CMOVNLE DI, BX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
MOV RDI, RCX 
OR DI, 84 
MOVZX EDX, CL 
TEST SI, DX 
CMOVNZ EDI, EAX 
MOVSX DX, CL 
AND RAX, 0b1111111111111 # instrumentation
LOCK CMPXCHG qword ptr [R14 + RAX], RSI 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -121 # instrumentation
CMOVZ SI, DX 
AND RCX, 0b1111111111111 # instrumentation
CMOVB RAX, qword ptr [R14 + RCX] 
BTR DI, 76 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
CMPXCHG ESI, ESI 
TEST EDX, -851700030 
CMPXCHG RCX, RCX 
CDQ  
TEST BL, DL 
XOR RBX, 31 
SETNO BL 
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RDI 
AND RSI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RSI], DL 
CMOVNP RDX, RBX 
TEST CL, -29 
XOR EBX, -33 
MOV AX, DX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
