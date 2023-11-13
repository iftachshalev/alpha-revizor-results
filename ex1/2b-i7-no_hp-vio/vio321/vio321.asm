.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -67 # instrumentation
CMOVS DI, DI 
CMOVO DI, BX 
AND AX, -14673 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], 49 
CMOVB ECX, EAX 
AND RBX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RBX], -86 
MOVZX EBX, BL 
SETNLE AL 
MOV RDI, 5888668561419033190 
MOVSX DI, AL 
OR AL, 58 
AND RAX, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
AND qword ptr [R14 + RCX], -52 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
AND AL, -57 
SETNL BL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDI, qword ptr [R14 + RSI] 
BTR EBX, -73 
AND RBX, 0b1111111111111 # instrumentation
CMOVLE AX, word ptr [R14 + RBX] 
BT RBX, -19 
XOR RAX, 1920479947 
AND RBX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RBX], DX 
CMOVP RBX, RSI 
CMOVBE ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RSI], AX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR word ptr [R14 + RSI], DX 
TEST AX, -27248 
AND RBX, 0b1111111111111 # instrumentation
SETB byte ptr [R14 + RBX] 
XOR DIL, AL 
CMOVNS RAX, RCX 
AND RBX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RBX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RBX, qword ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
