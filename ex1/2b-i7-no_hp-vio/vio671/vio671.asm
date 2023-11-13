.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RAX], DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVBE EDI, dword ptr [R14 + RDX] 
CMOVZ DX, DI 
CMOVO CX, DX 
AND RSI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RSI], AL 
CMPXCHG ECX, EDI 
AND ESI, EDI 
XCHG DI, AX 
MOVZX RDX, BX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RCX] 
CMOVLE RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RDX] 
XADD AL, DL 
BT RCX, -59 
BTS RAX, RBX 
CLD  
XOR RSI, RDX 
CMOVB ESI, ECX 
BTR RDI, -8 
SETNB CL 
MOVSX RBX, DIL 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], EAX 
XOR BL, DL 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
CMOVNBE RSI, RBX 
OR ECX, -4 
CMOVNZ RDX, RCX 
XADD SI, BX 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
AND RSI, 0b1111111111111 # instrumentation
AND BX, word ptr [R14 + RSI] 
AND CX, SI 
CMOVNB DI, CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
