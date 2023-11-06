.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG ESI, EDI 
AND AX, -12702 
OR AX, 0b1000000000000000 # instrumentation
BSF DI, AX 
AND DIL, -81 # instrumentation
CWDE  
CMOVNL RDI, RDI 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RBX 
OR DIL, DIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL EDI, dword ptr [R14 + RSI] 
XCHG RBX, RAX 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], DL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
CLC  
TEST DL, 9 
CMOVZ RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RAX], -112 
XOR RAX, RSI 
OR BL, -28 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], EDI 
OR SI, -100 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], BX 
SETNL BL 
AND SIL, AL 
MOV RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RBX, byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
BT word ptr [R14 + RAX], 4 
AND AX, DX 
CMOVL RDX, RDI 
CMOVL DX, AX 
MOV RAX, -5030217916781971221 
CMOVLE RCX, RDX 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], -63 
CMOVLE BX, SI 
AND RDX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RDX], EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
