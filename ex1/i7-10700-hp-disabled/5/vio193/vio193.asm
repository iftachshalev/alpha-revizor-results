.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RCX, 0b1111111111111 # instrumentation
MOVZX RCX, byte ptr [R14 + RCX] 
MOV RAX, RDI 
CMOVB ECX, EDI 
SETNP AL 
MOV RDX, -5283263205023910992 
CMPXCHG CX, CX 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND ESI, EBX 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], DL 
AND RSI, 0b1111111111111 # instrumentation
CMOVNP RDX, qword ptr [R14 + RSI] 
CLC  
AND RDX, 0b1111111111111 # instrumentation
CMOVNP EBX, dword ptr [R14 + RDX] 
SETNP CL 
AND RAX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RAX], RCX 
JNO .bb_main.2 
JMP .bb_main.4 
.bb_main.2:
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], ESI 
MOVSX AX, CL 
AND RDX, 0b1111111111111 # instrumentation
BTS qword ptr [R14 + RDX], 6 
AND RDI, -36 
AND RCX, 0b1111111111111 # instrumentation
AND BX, 0b111 # instrumentation
BTS word ptr [R14 + RCX], BX 
AND DIL, -40 # instrumentation
CMOVO RBX, RAX 
XOR BL, AL 
BTR AX, SI 
AND SIL, 118 # instrumentation
SETLE AL 
CMOVBE RSI, RSI 
CMOVNBE EDX, EDI 
JMP .bb_main.3 
.bb_main.3:
AND CL, DL 
CMOVL CX, BX 
AND RDX, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDX], 0b1000000000000000000000000000000 # instrumentation
BSR RDX, qword ptr [R14 + RDX] 
LOOP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], BL 
CMOVNO RCX, RBX 
CMOVLE RDI, RCX 
CMOVNS EDX, EAX 
XCHG DL, AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
