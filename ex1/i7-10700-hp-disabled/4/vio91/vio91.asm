.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
CLD  
OR CL, -25 
CMOVZ DI, SI 
AND RAX, 0b1111111111111 # instrumentation
OR RAX, qword ptr [R14 + RAX] 
OR EDX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EDX 
BTR RDX, -23 
AND CL, -49 
TEST CL, AL 
SETNLE DL 
AND RCX, 0b1111111111111 # instrumentation
XADD dword ptr [R14 + RCX], ECX 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
BT word ptr [R14 + RSI], 1 
AND BL, 106 
BSWAP EBX 
XOR DI, 89 
SETNLE BL 
BTS EAX, EDI 
SETNB SIL 
JMP .bb_main.2 
.bb_main.2:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF ESI, EDI 
AND RDI, 0b1111111111111 # instrumentation
MOV DIL, byte ptr [R14 + RDI] 
CMOVNS DX, DI 
OR CL, -34 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSR RAX, RBX 
CMPXCHG CL, DIL # instrumentation
AND DIL, 110 # instrumentation
LAHF  
CMOVS CX, AX 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RBX], DI 
BT ECX, 119 
AND DIL, 18 # instrumentation
CMOVNS ESI, EBX 
BTR BX, AX 
AND SIL, 12 # instrumentation
SETNLE DL 
CMOVNLE EDX, EDX 
XOR CX, DI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
