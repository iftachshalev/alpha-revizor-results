.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RAX], 24 
TEST BL, 115 
CMOVB RDX, RAX 
CMOVNZ EAX, ECX 
OR CX, 89 
SETNP DL 
CLD  
AND EAX, 1497324016 
MOVSX ECX, CL 
CMOVNB RDX, RSI 
SETS BL 
SETLE BL 
MOVZX EAX, CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVNS EDI, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], BL 
BTS ECX, 1 
SETBE CL 
AND DIL, DIL 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RBX, 0b1111111111111 # instrumentation
XOR CX, word ptr [R14 + RBX] 
CMPXCHG EBX, EBX 
CMPXCHG CX, CX 
BSWAP EDI 
CMOVNB EDX, EDX 
CMPXCHG AL, CL 
CMOVS SI, BX 
CMOVZ DX, SI 
MOV DL, 35 
CMOVB RSI, RDI 
NOP  
BTC RCX, 100 
CMOVZ EDI, EBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
