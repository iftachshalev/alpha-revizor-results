.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 63 # instrumentation
CMOVNS RCX, RDX 
CMOVO ECX, EDX 
SETP CL 
JMP .bb_main.1 
.bb_main.1:
AND RAX, RDI 
NOT CL 
SETNBE CL 
XCHG DL, BL 
AND RCX, 0b1111111111111 # instrumentation
CMOVNLE RAX, qword ptr [R14 + RCX] 
AND RCX, 0b1111111111111 # instrumentation
MOV qword ptr [R14 + RCX], RAX 
XCHG EDX, EAX 
CLD  
MOVZX RBX, CL 
AND RBX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RBX], BL 
JL .bb_main.2 
JMP .bb_main.exit 
.bb_main.2:
BT RDI, -42 
AND RAX, 2144864984 
MOV EDI, -145300945 
AND RDI, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RDI], 17 
XOR DIL, DL 
BTC ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
CMOVLE EDI, dword ptr [R14 + RDX] 
MOV DIL, AL 
AND AX, DI 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO EDI, dword ptr [R14 + RDX] 
XCHG SIL, BL 
JO .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
AND SIL, -119 # instrumentation
CMOVLE EBX, EBX 
MOVZX RDI, AL 
CMC  
BTR AX, -117 
AND SIL, 113 # instrumentation
SETZ AL 
CMOVS ECX, EDI 
XOR SIL, -34 
BTC AX, 11 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
