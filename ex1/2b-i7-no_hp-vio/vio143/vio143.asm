.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 89 # instrumentation
SETNL CL 
AND RCX, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RCX], -64 
NOT RSI 
OR EBX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EBX 
BT RDI, -120 
XOR BL, -123 
AND RDX, 0b1111111111111 # instrumentation
SETS byte ptr [R14 + RDX] 
CWDE  
AND RSI, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RSI], BL 
CMOVB AX, BX 
CMOVS RCX, RDX 
CMPXCHG EAX, ESI 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RDX, 0b1111111111111 # instrumentation
CMOVNLE DX, word ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
SETNB byte ptr [R14 + RDX] 
OR EDX, EBX 
CMOVLE ECX, EAX 
SETL DL 
CMOVNLE DI, SI 
TEST EAX, -193861082 
MOVSX RCX, SI 
CMOVB ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
BT dword ptr [R14 + RDX], ESI 
AND DIL, 7 # instrumentation
CMOVLE EBX, EBX 
SETLE AL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSR ESI, EAX 
BTS DX, 11 
AND DIL, 108 # instrumentation
CMOVLE DI, AX 
CMOVNB RBX, RAX 
AND RCX, 0b1111111111111 # instrumentation
MOV byte ptr [R14 + RCX], 59 
TEST EBX, EDX 
OR CL, SIL 
AND RAX, 0b1111111111111 # instrumentation
SETNL byte ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
