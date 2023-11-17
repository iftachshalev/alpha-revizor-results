.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EAX, -749084759 
AND BL, DL 
SETB DL 
SETB CL 
BTS RDX, 64 
AND RDX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RDX], AL 
JNL .bb_main.1 
JMP .bb_main.3 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
MOVSX ESI, byte ptr [R14 + RDX] 
AND EDI, EDI 
SETS CL 
SETP AL 
MOVSX ECX, AL 
AND AL, CL 
XCHG RAX, RAX 
JNP .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND AX, 43 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], 2 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], AL 
SETO CL 
SETNO DL 
XOR RAX, -95 
AND RDX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RDX], BL 
JMP .bb_main.3 
.bb_main.3:
STC  
AND RDX, 0b1111111111111 # instrumentation
CMOVB EAX, dword ptr [R14 + RDX] 
MOV CL, 117 
XOR AX, 17153 
SETL CL 
XOR DX, -104 
AND RDI, 0b1111111111111 # instrumentation
MOVSX DX, byte ptr [R14 + RDI] 
XADD CL, SIL 
JNP .bb_main.4 
JMP .bb_main.exit 
.bb_main.4:
BTR CX, AX 
AND SIL, -84 # instrumentation
CMOVNS RDX, RDX 
SETNBE DL 
TEST SIL, -22 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
