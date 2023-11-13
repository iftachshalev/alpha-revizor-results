.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND EAX, -1066304386 
TEST EAX, -776937471 
AND RCX, 0b1111111111111 # instrumentation
CMOVP RDX, qword ptr [R14 + RCX] 
MOVZX EDX, AX 
AND RSI, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RSI], SI 
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RSI], ESI 
BTC AX, CX 
MOV CL, DL 
CMOVNZ ESI, ESI 
CMOVNZ ESI, ESI 
BTR RDI, RDX 
AND SIL, -43 # instrumentation
CMOVNS RBX, RSI 
SETP BL 
LOOPNE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 54 # instrumentation
CMOVNP RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], -792453307 
XCHG CX, AX 
BT EAX, -125 
AND DIL, 116 # instrumentation
CMOVS DI, DI 
AND RSI, 0b1111111111111 # instrumentation
XOR BL, byte ptr [R14 + RSI] 
TEST AL, CL 
SETZ BL 
AND RSI, 0b1111111111111 # instrumentation
XADD word ptr [R14 + RSI], BX 
CMOVNB RDX, RSI 
XADD CL, BL 
XOR RDX, RAX 
SETNL AL 
CMOVNZ RDX, RSI 
AND RAX, 0b1111111111111 # instrumentation
CMOVZ RAX, qword ptr [R14 + RAX] 
XOR RDX, -67 
AND RAX, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RAX], CX 
OR EAX, 835092958 
CMOVB DX, BX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
