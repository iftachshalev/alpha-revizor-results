.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EBX 
MOV RDI, 6333518648142108143 
TEST SIL, CL 
CMPXCHG DL, AL 
CMOVL EAX, EAX 
CMPXCHG DIL, DIL 
XOR AL, 87 
XOR DIL, CL 
CMOVLE ECX, ECX 
MOVSX RAX, AL 
JL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
OR EDI, 0b1000000000000000000000000000000 # instrumentation
BSF EDI, EDI 
AND SIL, 16 # instrumentation
MOVZX EBX, AL 
SETNP DL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], BL 
AND RAX, 122 
BTC ESI, -62 
AND RCX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RCX] 
AND RDX, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDX] 
CMOVNS RCX, RDI 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
LOCK BTR dword ptr [R14 + RDX], EDX 
SETBE AL 
AND RCX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RCX], DI 
NOT BL 
XOR DIL, DL 
MOV BL, CL 
XCHG RBX, RSI 
CMOVS ECX, ECX 
CMPXCHG DL, DL 
XADD AL, DIL 
CMOVBE RBX, RAX 
SETP DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RDI], AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
