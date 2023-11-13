.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XADD SIL, BL 
AND RAX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSR EDX, dword ptr [R14 + RAX] 
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG word ptr [R14 + RCX], BX 
AND RCX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RCX], -396254220 
AND RDI, 0b1111111111111 # instrumentation
MOVSX ESI, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
AND SI, 0b111 # instrumentation
BTS word ptr [R14 + RDI], SI 
AND SIL, -93 # instrumentation
SETNP AL 
XCHG DX, AX 
AND RCX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BTS dword ptr [R14 + RCX], ECX 
OR AL, 33 
NOT DL 
MOVZX DX, DL 
MOV EDX, -364019848 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE EDX, dword ptr [R14 + RCX] 
MOV RCX, RCX 
AND RDI, 0b1111111111111 # instrumentation
OR SI, word ptr [R14 + RDI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST AX, -6425 
MOVZX ESI, AL 
AND RDX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RDX], CL 
AND RDI, 0b1111111111111 # instrumentation
CMOVB CX, word ptr [R14 + RDI] 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSR RCX, RDX 
AND DIL, -103 # instrumentation
CMOVNS SI, AX 
CMOVNB SI, AX 
OR BX, 125 
AND RSI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RSI], AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVO SI, word ptr [R14 + RDI] 
MOV EDX, 538327851 
CMOVLE RDI, RCX 
AND RSI, 0b1111111111111 # instrumentation
OR EAX, dword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
NOT dword ptr [R14 + RBX] 
SETNLE DL 
BT CX, -82 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
