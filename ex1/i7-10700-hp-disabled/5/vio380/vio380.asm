.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 46 # instrumentation
CMC  
AND RAX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RAX], DX 
AND RDI, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDI], EAX 
AND RBX, 0b1111111111111 # instrumentation
OR BL, byte ptr [R14 + RBX] 
BT EAX, 57 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDI] 
SETNS AL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTR EAX, EBX 
AND DIL, -81 # instrumentation
SETO BL 
AND RDX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDX], BL 
TEST EAX, -1955701480 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ CX, word ptr [R14 + RDX] 
CMOVL RBX, RBX 
AND RSI, 0b1111111111111 # instrumentation
MOVZX BX, byte ptr [R14 + RSI] 
AND SIL, 127 
BTR CX, -100 
XADD AX, BX 
CMOVNP RSI, RAX 
LOOP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST RDX, RAX 
CMPXCHG AX, BX 
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EBX, EDI 
AND DIL, 33 # instrumentation
CMOVNLE RAX, RBX 
CMOVNS EAX, EDX 
XCHG EDI, EDI 
MOV DL, BL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
CLD  
OR RDI, 46 
AND RDX, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RDX] 
CMOVB ECX, EAX 
CMOVNP SI, AX 
XADD RBX, RAX 
SETL CL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
