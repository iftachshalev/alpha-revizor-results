.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EDX, -17 
MOVZX RBX, AX 
AND RBX, 0b1111111111111 # instrumentation
AND word ptr [R14 + RBX], 58 
BSWAP RDX 
MOV AX, -742 
MOV RDI, -3959393692075816101 
MOVZX EAX, DL 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
LEA DX, qword ptr [RSI] 
MOV AX, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNP ESI, dword ptr [R14 + RAX] 
MOVZX EDI, CL 
CMOVNZ BX, CX 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 0b1000000000000000 # instrumentation
BSF DI, word ptr [R14 + RBX] 
AND RCX, 0b1111111111111 # instrumentation
CMOVZ RDI, qword ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XOR ESI, dword ptr [R14 + RDX] 
AND RCX, 0b1111111111111 # instrumentation
AND DX, 0b111 # instrumentation
LOCK BTS word ptr [R14 + RCX], DX 
JMP .bb_main.2 
.bb_main.2:
AND DIL, -98 # instrumentation
CMOVLE RCX, RDX 
BT RAX, RCX 
AND SIL, 48 # instrumentation
JNO .bb_main.3 
JMP .bb_main.4 
.bb_main.3:
AND RBX, 0b1111111111111 # instrumentation
CMOVLE SI, word ptr [R14 + RBX] 
CMOVNP ESI, EDI 
SETNS AL 
MOVZX EAX, DL 
JMP .bb_main.4 
.bb_main.4:
XOR BX, 48 
BSWAP RDI 
AND RDI, 0b1111111111111 # instrumentation
CMOVO EDI, dword ptr [R14 + RDI] 
XOR BX, DI 
CLD  
SETS CL 
CMOVZ BX, BX 
CMOVS RCX, RSI 
XCHG DIL, CL 
AND DIL, 108 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
