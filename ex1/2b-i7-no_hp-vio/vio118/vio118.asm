.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
NOT BL 
AND RAX, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RAX] 
CMOVS RBX, RDX 
AND AX, -11025 
AND RBX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTR word ptr [R14 + RBX], BX 
BTS EBX, -64 
XADD EAX, EAX 
XCHG CL, BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
TEST RSI, -556462838 
CMPXCHG SIL, BL # instrumentation
CMOVZ AX, CX 
CMOVO BX, AX 
CLD  
SETB DL 
LAHF  
AND RDX, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDX], 1605114219 
CMOVNO RCX, RCX 
XOR ESI, -45 
XOR RAX, 741207434 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 34 # instrumentation
MOV AL, AL 
CMOVZ ECX, ESI 
AND RDI, 0b1111111111111 # instrumentation
CMOVNB SI, word ptr [R14 + RDI] 
SETLE BL 
CMPXCHG RDI, RDI 
SETNBE DL 
TEST EDI, ECX 
TEST RAX, RAX 
CMOVNL AX, AX 
SETP DIL 
XOR SIL, 115 
AND RBX, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RBX], SI 
CMOVNBE EDI, ESI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
