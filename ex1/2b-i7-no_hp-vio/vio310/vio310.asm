.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
TEST EDI, EDI 
OR BX, 0b1000000000000000 # instrumentation
BSR DX, BX 
XOR CX, -41 
XOR EAX, ECX 
AND RDX, 0b1111111111111 # instrumentation
CMOVS EDI, dword ptr [R14 + RDX] 
MOVSX EDI, BL 
CMOVL DX, AX 
CMOVNB RDX, RAX 
OR RAX, 1835488421 
MOV AL, -82 
AND RBX, 0b1111111111111 # instrumentation
AND RBX, 0b111 # instrumentation
BTR qword ptr [R14 + RBX], RBX 
CMOVNB RDX, RCX 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC word ptr [R14 + RDI], 3 
XOR DIL, 51 
BT DI, 37 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 259597540 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
BTC DI, SI 
AND RDX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RDX], 104 
OR AX, -8923 
XOR EBX, EDX 
TEST RSI, RBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNLE EDI, dword ptr [R14 + RAX] 
XCHG EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
BTR qword ptr [R14 + RSI], RCX 
AND RDX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RDX], ECX 
CMPXCHG AL, AL # instrumentation
LAHF  
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, EBX 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RSI] 
SETNL AL 
CMOVB EBX, EAX 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RDI] 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
