.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 39 # instrumentation
CMOVNBE EDI, ESI 
CMOVNP AX, CX 
SETO BL 
SETO AL 
XOR DIL, AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVNBE RBX, qword ptr [R14 + RDI] 
TEST EAX, 745404175 
AND RBX, 0b1111111111111 # instrumentation
LOCK NOT dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RBX], AL 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDX], AL 
XOR SI, -30 
AND RAX, 0b1111111111111 # instrumentation
XOR DL, byte ptr [R14 + RAX] 
CMOVB EBX, ECX 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RAX], -120 
CMOVNZ EDX, EAX 
MOV CX, DX 
SETNL DL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -6 # instrumentation
NOP  
CMOVNS EDX, ECX 
SETZ AL 
AND RDX, RDX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RBX] 
CMOVNZ SI, CX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNS DI, word ptr [R14 + RAX] 
BTR EBX, EAX 
XOR RAX, RAX 
AND RDI, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RDI], 7 
OR CX, 0b1000000000000000 # instrumentation
BSF CX, CX 
XOR EAX, 1799674830 
BT AX, SI 
AND ESI, EBX 
CMOVNBE RDX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
