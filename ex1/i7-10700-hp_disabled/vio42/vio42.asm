.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
XCHG word ptr [R14 + RCX], SI 
SETZ DL 
AND RCX, 0b1111111111111 # instrumentation
CMOVL CX, word ptr [R14 + RCX] 
CMPXCHG AX, CX 
CMOVNBE RCX, RBX 
XOR AL, -45 
AND RSI, 0b1111111111111 # instrumentation
CMOVNB DX, word ptr [R14 + RSI] 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 49 # instrumentation
SETO SIL 
XADD SIL, AL 
JNZ .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
BT CX, SI 
TEST EAX, -1399338241 
XOR RAX, -583084879 
BSWAP RBX 
AND RDI, 0b1111111111111 # instrumentation
CMOVNZ BX, word ptr [R14 + RDI] 
MOVZX DI, AL 
AND RDI, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF EDI, dword ptr [R14 + RDI] 
JMP .bb_main.3 
.bb_main.3:
XOR RCX, RDX 
BT CX, DX 
CMOVB ESI, EAX 
TEST BL, -81 
AND RAX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RAX], 29 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RBX, qword ptr [R14 + RAX] 
LOOPE .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RCX, 0b1111111111111 # instrumentation
CMPXCHG DIL, AL # instrumentation
SETLE byte ptr [R14 + RCX] 
LAHF  
TEST DL, CL 
CMOVO AX, BX 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RAX, 0b1111111111111 # instrumentation
CMOVB DX, word ptr [R14 + RAX] 
XOR RCX, RAX 
XOR AX, 25667 
CMOVLE EBX, EAX 
SETO BL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
