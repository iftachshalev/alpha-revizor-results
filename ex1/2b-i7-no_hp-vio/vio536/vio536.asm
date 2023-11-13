.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -43 # instrumentation
SETNB DIL 
OR RDX, -8 
CMOVNLE AX, DX 
XOR DX, DI 
CMOVNO RAX, RAX 
AND RDX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RDX], DI 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
AND RBX, 10 
AND RBX, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RBX], DL 
XCHG CX, AX 
XCHG RDX, RDX 
SETNBE DIL 
OR ECX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ECX 
AND SIL, -81 # instrumentation
CMOVNBE SI, AX 
AND RBX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RBX], 1 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EBX 
SETZ BL 
CMOVO SI, BX 
AND RAX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RAX], -1598483689 
AND RDI, 0b1111111111111 # instrumentation
CMOVS RBX, qword ptr [R14 + RDI] 
LEA BX, qword ptr [RAX + RDX + 3375] 
XOR AX, 17660 
XCHG AX, AX 
TEST ESI, -817978867 
CMOVP BX, SI 
AND RBX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RBX] 
XADD BL, DL 
XADD RSI, RDI 
OR DIL, 104 
AND RBX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RBX], BL 
CMOVLE RSI, RBX 
AND DIL, DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
