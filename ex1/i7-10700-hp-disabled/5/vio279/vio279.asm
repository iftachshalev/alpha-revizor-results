.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RAX], BL 
BTR CX, DX 
MOVSX EAX, DI 
AND RAX, 0b1111111111111 # instrumentation
BTR word ptr [R14 + RAX], 4 
AND DIL, 66 # instrumentation
CMOVS ECX, EBX 
AND RDI, 0b1111111111111 # instrumentation
NOT qword ptr [R14 + RDI] 
CMPXCHG DX, AX 
AND RCX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RCX], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RCX] 
XCHG RDI, RDI 
NOT AX 
OR BL, 79 
AND RAX, 0b1111111111111 # instrumentation
CMOVO RDX, qword ptr [R14 + RAX] 
SETL DIL 
TEST RDI, -508909528 
TEST CL, AL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 12 # instrumentation
CMOVZ ECX, EAX 
AND RSI, 0b1111111111111 # instrumentation
AND AL, byte ptr [R14 + RSI] 
SETP CL 
XCHG RAX, RDX 
MOVZX SI, CL 
TEST SI, DX 
BT AX, -86 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDX], 3 
OR BX, 0b1000000000000000 # instrumentation
BSR SI, BX 
LOOPE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
OR RDI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RDI 
BTC ESI, EDX 
MOV EDI, EAX 
XOR DI, 70 
XOR DIL, -128 
CMOVO EDI, ESI 
XOR RBX, RCX 
BSWAP RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
