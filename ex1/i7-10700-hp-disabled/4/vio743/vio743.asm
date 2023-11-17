.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
CDQ  
AND EAX, -1099489854 
CMOVLE DX, BX 
BTR RAX, -11 
XCHG RCX, RAX 
XADD RBX, RDI 
AND RBX, 0b1111111111111 # instrumentation
CMOVP EAX, dword ptr [R14 + RBX] 
STD  
SETNP DL 
CMOVB SI, SI 
CMOVZ EAX, EDI 
BTC RAX, 41 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], CL 
JNZ .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RBX], BL 
AND CL, DL 
NOT CX 
AND RDI, 0b1111111111111 # instrumentation
AND AX, 0b111 # instrumentation
BT word ptr [R14 + RDI], AX 
BTS EBX, ECX 
AND EDI, -124 
AND RAX, 0b1111111111111 # instrumentation
CMOVBE DI, word ptr [R14 + RAX] 
CMPXCHG CX, DI 
SETNS BL 
JMP .bb_main.2 
.bb_main.2:
AND RSI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RSI], AL 
AND RCX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RCX], -52819549 
XCHG RSI, RCX 
CDQ  
MOVZX ESI, CL 
CMOVBE DX, CX 
TEST RSI, RBX 
BTR RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
