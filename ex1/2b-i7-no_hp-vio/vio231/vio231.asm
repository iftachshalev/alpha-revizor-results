.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 34 # instrumentation
CMOVNP EAX, EDX 
MOVSX EDI, AL 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], 101 
AND RDI, 0b1111111111111 # instrumentation
SETNZ byte ptr [R14 + RDI] 
AND RAX, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RAX], EDX 
CMOVS CX, CX 
XOR AL, DL 
XOR RAX, 336560312 
CMPXCHG CL, CL 
CDQ  
MOV ESI, ESI 
NOP  
NOT AL 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND SIL, -43 # instrumentation
CMOVO EBX, EDI 
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RSI], 4 
AND SIL, 115 # instrumentation
SETL DIL 
AND RDI, 0b1111111111111 # instrumentation
XOR SIL, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNL RCX, qword ptr [R14 + RDI] 
BTS BX, -56 
AND RBX, 0b1111111111111 # instrumentation
XCHG qword ptr [R14 + RBX], RCX 
CMOVB ECX, EDI 
NOT AL 
OR RDX, 0b1000000000000000000000000000000 # instrumentation
BSF RSI, RDX 
AND RSI, 0b1111111111111 # instrumentation
MOVSX DI, byte ptr [R14 + RSI] 
XOR AX, -5468 
AND RBX, 0b1111111111111 # instrumentation
CMOVNS EDX, dword ptr [R14 + RBX] 
SETNLE CL 
BTR EDX, 57 
OR AL, -79 
OR SI, 121 
MOV RDI, RCX 
SETB AL 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
