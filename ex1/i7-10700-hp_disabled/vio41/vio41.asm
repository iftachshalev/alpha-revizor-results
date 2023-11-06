.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
STD  
XOR BX, SI 
CBW  
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
SETBE DL 
TEST DL, 51 
CMOVNB RCX, RSI 
XCHG RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
CMOVZ SI, word ptr [R14 + RBX] 
BTR RCX, RBX 
AND RBX, 0b1111111111111 # instrumentation
MOVSX RDX, byte ptr [R14 + RBX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
MOV RDX, qword ptr [R14 + RBX] 
OR RDX, -90 
MOV EAX, ESI 
AND RAX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RAX], BL 
CMOVBE RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDI] 
CMPXCHG ECX, EAX 
CWDE  
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -15 
AND RDX, 0b1111111111111 # instrumentation
CMOVNZ RAX, qword ptr [R14 + RDX] 
MOVZX DI, DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ SI, word ptr [R14 + RSI] 
MOV AL, -97 
SETNP DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVO EAX, dword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
AND RAX, 0b111 # instrumentation
BT qword ptr [R14 + RBX], RAX 
AND BL, 46 
SETNZ AL 
AND RSI, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTC dword ptr [R14 + RSI], ECX 
AND SIL, 104 # instrumentation
SETS CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], 81 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
