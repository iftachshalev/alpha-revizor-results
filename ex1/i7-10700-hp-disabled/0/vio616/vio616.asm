.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
MOV DX, -4837 
XADD RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
SETNS byte ptr [R14 + RCX] 
MOV SI, -25581 
CMOVNP RCX, RBX 
MOV RDI, RAX 
AND RDX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDX], AX 
MOVZX EDI, AX 
BT BX, -78 
CMPXCHG EBX, ECX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNO BX, word ptr [R14 + RDI] 
LEA DI, qword ptr [RSI] 
CMOVNB CX, AX 
AND RAX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
LOCK BTC dword ptr [R14 + RAX], ECX 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOVSX CX, byte ptr [R14 + RBX] 
AND AX, -29223 
AND DIL, -44 
AND RCX, 0b1111111111111 # instrumentation
AND DX, word ptr [R14 + RCX] 
CMC  
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], AL 
SETNS BL 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RBX], ESI 
TEST AX, -11827 
JS .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND SIL, -29 # instrumentation
CMOVNBE DI, BX 
BT RAX, -5 
AND RDI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RDI], DX 
BT ECX, EAX 
OR AX, -75 
CMOVNB DI, AX 
CMOVNO DI, SI 
CLC  
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], -66 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
