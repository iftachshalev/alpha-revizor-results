.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SI, SI 
NOT DL 
OR AL, CL 
SETO BL 
SETBE SIL 
OR AX, 25880 
XCHG CL, DL 
TEST ECX, -976494496 
AND RCX, 0b1111111111111 # instrumentation
MOVZX RAX, word ptr [R14 + RCX] 
CMOVNLE RCX, RCX 
BT BX, -109 
MOVZX RDX, SIL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX RSI, word ptr [R14 + RAX] 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], 0b1000000000000000000000000000000 # instrumentation
BSF RCX, qword ptr [R14 + RAX] 
AND RDI, 0b1111111111111 # instrumentation
MOVZX EDX, byte ptr [R14 + RDI] 
TEST RCX, 823567490 
AND RDX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RDX], 3 
XCHG SI, BX 
AND RSI, 0b1111111111111 # instrumentation
CMOVO EBX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNS RAX, qword ptr [R14 + RDX] 
SETO CL 
OR RDX, RSI 
BSWAP RBX 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RCX, qword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSR ECX, dword ptr [R14 + RDI] 
AND DIL, -125 # instrumentation
SETNLE CL 
XOR DL, CL 
AND RAX, 0b1111111111111 # instrumentation
AND AX, word ptr [R14 + RAX] 
XADD BL, DL 
AND RDX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RDX], EAX 
CMOVS ECX, EAX 
SETNO AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
