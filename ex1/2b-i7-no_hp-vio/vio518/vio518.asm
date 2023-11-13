.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
CMPXCHG AL, DL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RDI] 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], ECX 
XCHG CX, BX 
CMPXCHG RCX, RSI 
AND EDX, EAX 
CMOVZ AX, BX 
XOR AL, -123 
MOVZX EDX, DL 
CLD  
AND RBX, 0b1111111111111 # instrumentation
SETZ byte ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RAX], AX 
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT EAX, ECX 
AND EBX, EBX 
AND RBX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RBX], 4 
BTS CX, 118 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
BSWAP RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE DX, word ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVB RDI, qword ptr [R14 + RAX] 
CMOVP RSI, RAX 
CLC  
SETL BL 
NOT AX 
CMOVS EDX, EDI 
OR EAX, -1352889842 
BT RDX, RCX 
AND AX, BX 
SETB SIL 
AND RBX, 0b1111111111111 # instrumentation
OR AX, word ptr [R14 + RBX] 
CMOVP CX, AX 
AND RDX, 0b1111111111111 # instrumentation
TEST byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
