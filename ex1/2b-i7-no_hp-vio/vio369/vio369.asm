.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 3 # instrumentation
MOVZX RDX, AL 
CMOVL EDI, EBX 
AND RCX, 0b1111111111111 # instrumentation
SETLE byte ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RAX], -66 
AND RBX, 0b1111111111111 # instrumentation
LOCK XOR dword ptr [R14 + RBX], -51 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSR ECX, EBX 
AND RCX, 0b1111111111111 # instrumentation
CMOVNB CX, word ptr [R14 + RCX] 
AND RAX, 0b1111111111111 # instrumentation
AND RDX, qword ptr [R14 + RAX] 
OR EAX, -127674744 
BT BX, SI 
AND RCX, 0b1111111111111 # instrumentation
CMOVO BX, word ptr [R14 + RCX] 
CMOVS CX, BX 
MOV RBX, RBX 
OR RBX, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RBX 
BTS EBX, 98 
AND AL, DL 
XCHG AL, AL 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
TEST CL, AL 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], -31031 
TEST DIL, -73 
OR EDI, EDI 
SETLE AL 
CMOVNZ CX, DI 
XADD EAX, EBX 
SETNLE CL 
SETS DL 
AND RBX, 0b1111111111111 # instrumentation
CMOVO AX, word ptr [R14 + RBX] 
CWDE  
BT SI, SI 
SETNZ CL 
AND RCX, 0b1111111111111 # instrumentation
AND RCX, qword ptr [R14 + RCX] 
AND RSI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
