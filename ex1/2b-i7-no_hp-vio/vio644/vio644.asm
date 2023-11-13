.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DL, DL 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], BX 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RSI 
BTS RSI, -47 
AND EDI, EBX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EBX, byte ptr [R14 + RDI] 
BTC AX, DX 
AND DIL, 94 # instrumentation
CMOVS RSI, RSI 
OR CL, CL 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND qword ptr [R14 + RDX], -27 
SAHF  
SETZ CL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BT RCX, RBX 
AND AL, 105 
AND EBX, 116 
SETNLE SIL 
MOVSX BX, DIL 
CMOVNS CX, AX 
CMOVNB AX, BX 
OR CL, 99 
OR RCX, 0b1000000000000000000000000000000 # instrumentation
BSR RDI, RCX 
MOV DIL, DIL 
CWD  
AND RSI, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RSI] 
BTS RBX, 69 
CMPXCHG ESI, ECX 
SETB AL 
SETS DL 
SETS DL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RAX], 98 
NOT ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD word ptr [R14 + RDX], CX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
