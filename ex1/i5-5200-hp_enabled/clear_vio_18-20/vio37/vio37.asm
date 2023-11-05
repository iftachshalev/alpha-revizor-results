.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EBX, 93 
AND SIL, 26 # instrumentation
CMOVNZ RBX, RDX 
CMOVNLE EBX, EDI 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RAX], RDX 
AND RDX, 45 
CMOVNO DX, DX 
MOV RDX, RDX 
MOVSX RDX, DIL 
CMOVNS RDX, RCX 
CMOVNL EDI, EDI 
CMPXCHG CL, AL 
JNS .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
AND SIL, 116 # instrumentation
CMOVZ RSI, RSI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], AL 
TEST DI, -24405 
XCHG AL, AL 
XCHG AL, CL 
AND RSI, 0b1111111111111 # instrumentation
CMOVL DX, word ptr [R14 + RSI] 
CLC  
XOR DIL, 92 
SAHF  
AND RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RCX, 0b1111111111111 # instrumentation
CMOVS AX, word ptr [R14 + RCX] 
BT RCX, 78 
SAHF  
AND RBX, 0b1111111111111 # instrumentation
MOVZX ECX, byte ptr [R14 + RBX] 
TEST EAX, -1280275129 
AND RDX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDX], -123 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
XOR AX, 7307 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], 53 
SETL BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
