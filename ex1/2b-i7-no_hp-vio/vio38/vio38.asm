.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
XOR DIL, -4 
MOVZX ECX, CL 
CMOVNZ ECX, EDX 
CMPXCHG RDX, RAX 
BTS EAX, EDI 
AND SIL, -55 # instrumentation
MOVZX ECX, AL 
CMOVNZ RAX, RSI 
MOV EDX, ESI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], 45 
CMOVNB RCX, RDX 
CMOVNLE EDI, EDI 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTC qword ptr [R14 + RDI], 7 
AND DIL, 83 # instrumentation
CMOVNO RCX, RBX 
BTC RBX, 99 
AND DIL, 89 # instrumentation
CMOVLE SI, AX 
AND RAX, 0b1111111111111 # instrumentation
SETNLE byte ptr [R14 + RAX] 
NOT SIL 
BTS CX, 64 
CMPXCHG CX, SI 
XADD RSI, RAX 
AND RBX, 0b1111111111111 # instrumentation
MOV AL, byte ptr [R14 + RBX] 
CMOVNZ EBX, EDI 
BT ECX, -69 
AND SIL, -46 # instrumentation
CMOVNP EDX, ECX 
MOV RCX, 2857729744763942693 
TEST BL, AL 
SETO CL 
CMOVL DX, CX 
SETNZ DL 
AND RBX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RBX], RBX 
CMOVNS EDI, EBX 
AND CL, 47 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
