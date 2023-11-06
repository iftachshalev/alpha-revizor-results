.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR AL, 94 
MOV CL, 120 
AND RSI, 0b1111111111111 # instrumentation
MOV BL, byte ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
OR word ptr [R14 + RBX], SI 
CMOVNLE ESI, ESI 
JS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV EDI, 870913691 
BTC DI, BX 
BTR EBX, ESI 
AND DIL, 65 # instrumentation
CMOVNP EDX, EDX 
CMOVNBE EDI, EBX 
SETB DIL 
AND RDI, 0b1111111111111 # instrumentation
MOV AX, word ptr [R14 + RDI] 
JNLE .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AL, -59 
CMOVNL CX, DI 
TEST DIL, 75 
SETNB DIL 
BT EBX, 25 
SETNB AL 
SETNBE CL 
AND RAX, 0b1111111111111 # instrumentation
MOVZX ESI, byte ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
CMOVNP RAX, qword ptr [R14 + RDX] 
JL .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND DIL, -83 # instrumentation
SETS BL 
AND DI, 25 
OR SI, -97 
AND RBX, 0b1111111111111 # instrumentation
MOVZX RDI, byte ptr [R14 + RBX] 
TEST EAX, 1442187798 
AND RDX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDX], EDX 
SETLE SIL 
CMOVP ECX, EBX 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT byte ptr [R14 + RBX] 
AND RDX, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDX], AL 
SETO DL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
