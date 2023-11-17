.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -102 # instrumentation
CBW  
NOT EDI 
SETNP BL 
MOVZX DI, BL 
JP .bb_main.1 
JMP .bb_main.2 
.bb_main.1:
TEST DX, CX 
CMOVNP ESI, EBX 
XOR AX, 14337 
AND SIL, -44 
AND RDX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RDX], RAX 
CWDE  
SETNLE AL 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], -1 
SETZ AL 
AND SIL, DL 
STC  
JNB .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
AND DIL, -49 # instrumentation
CMOVLE RSI, RAX 
CMC  
STD  
SETO DL 
OR AX, SI 
MOV EDI, EBX 
OR AX, 0b1000000000000000 # instrumentation
BSF DX, AX 
BTS EAX, ECX 
AND EAX, 539775191 
SETNB CL 
SETNBE AL 
SETZ BL 
LOOP .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
CMOVBE RDI, qword ptr [R14 + RDX] 
BTR AX, 104 
AND RDX, 0b1111111111111 # instrumentation
MOVSX AX, byte ptr [R14 + RDX] 
AND RAX, 0b1111111111111 # instrumentation
CMOVNBE RDX, qword ptr [R14 + RAX] 
TEST RDX, RCX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
