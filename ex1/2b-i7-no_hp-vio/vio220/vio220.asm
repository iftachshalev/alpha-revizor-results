.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -3 # instrumentation
CMOVNS RBX, RAX 
SAHF  
CMOVNB EDX, EDX 
CMOVNL RAX, RSI 
CMC  
CMOVB EBX, ESI 
CMOVBE RDX, RAX 
SETNB CL 
CMOVNS CX, AX 
XOR AL, 21 
SETNL CL 
XOR SIL, -49 
NOT BL 
MOVSX RDI, CX 
BTR RSI, -59 
XCHG CX, AX 
BT RAX, -47 
CMPXCHG DL, DL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, 123 # instrumentation
CMOVB CX, SI 
CMOVNLE RBX, RAX 
CMOVLE DX, BX 
NOP  
AND RBX, 0b1111111111111 # instrumentation
XOR word ptr [R14 + RBX], CX 
CMOVS SI, SI 
MOV AL, DIL 
AND RCX, 0b1111111111111 # instrumentation
XOR byte ptr [R14 + RCX], AL 
OR RDX, 64 
AND RAX, 0b1111111111111 # instrumentation
LOCK AND byte ptr [R14 + RAX], 85 
BTR EDX, EDI 
AND RDX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RDX], CL 
MOV EAX, EAX 
CMOVNLE ESI, EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
