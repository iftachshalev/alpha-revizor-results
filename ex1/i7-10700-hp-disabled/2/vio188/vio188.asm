.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
BTC word ptr [R14 + RSI], 3 
AND RBX, 0b1111111111111 # instrumentation
XCHG dword ptr [R14 + RBX], ESI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], DL 
CMOVNZ BX, SI 
AND CX, AX 
AND RAX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RAX], -22 
JLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 76 # instrumentation
CMOVLE RAX, RSI 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], -54 
CMOVNB RAX, RSI 
OR EBX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND CL, byte ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG dword ptr [R14 + RCX], EAX 
BTR CX, 113 
MOVZX BX, CL 
AND SIL, 52 
JP .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
TEST SIL, -116 
AND CX, AX 
NOT DX 
MOV BX, CX 
OR RSI, -119 
BTR EDI, EAX 
MOVZX RSI, AX 
AND RDX, 0b1111111111111 # instrumentation
CMOVO CX, word ptr [R14 + RDX] 
JB .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
XCHG ESI, EAX 
MOVSX RCX, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], BL 
CMOVO AX, AX 
OR DX, -112 
MOV AX, 26718 
STC  
SETB SIL 
CMOVNZ RBX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
