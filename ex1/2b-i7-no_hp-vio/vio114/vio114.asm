.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RAX, 0b1111111111111 # instrumentation
AND DI, 0b111 # instrumentation
LOCK BTR word ptr [R14 + RAX], DI 
AND SIL, 90 # instrumentation
XCHG RAX, RAX 
CMOVLE RDX, RCX 
AND RCX, 0b1111111111111 # instrumentation
XOR qword ptr [R14 + RCX], -24 
SAHF  
CMOVO ESI, ECX 
LAHF  
BTR RBX, RCX 
BTS EDX, -23 
XOR DX, DI 
CBW  
SETNLE BL 
MOVZX EDX, DL 
TEST AL, 59 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -128 # instrumentation
CMOVL BX, SI 
AND RAX, -265233129 
AND RBX, 0b1111111111111 # instrumentation
CMOVS EDX, dword ptr [R14 + RBX] 
OR EDI, -34 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RSI] 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RAX, qword ptr [R14 + RDX] 
AND ECX, -57 
AND RBX, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RBX] 
AND RDI, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RDI], AL 
TEST CX, -18960 
AND RBX, 0b1111111111111 # instrumentation
OR dword ptr [R14 + RBX], 0b1000000000000000000000000000000 # instrumentation
BSF EBX, dword ptr [R14 + RBX] 
AND DIL, 61 # instrumentation
CMOVS RAX, RDI 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RCX], AL 
AND AL, 76 
SETNS DL 
CMOVLE RDI, RSI 
SETZ AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
