.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, 11 # instrumentation
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
MOVSX RCX, word ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
CMOVNP EAX, dword ptr [R14 + RDI] 
BT EAX, 22 
AND CL, -56 
CMPXCHG ESI, EDX 
AND RSI, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RSI], 62 
CMOVNS EDX, EAX 
CMOVS EAX, EBX 
BTS RBX, 83 
XADD ECX, EDI 
JNS .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -126 # instrumentation
SETB DL 
AND RCX, 0b1111111111111 # instrumentation
LOCK BTR word ptr [R14 + RCX], 7 
AND DIL, -97 # instrumentation
NOT RBX 
SETBE DIL 
SETLE DL 
SAHF  
SETO AL 
MOVZX DX, AL 
BT DX, AX 
AND DIL, 80 # instrumentation
SETS AL 
MOVSX ESI, DIL 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDI 
SETZ DIL 
AND RBX, 0b1111111111111 # instrumentation
MOVZX EAX, byte ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
CMOVS RAX, qword ptr [R14 + RBX] 
AND RAX, 0b1111111111111 # instrumentation
TEST word ptr [R14 + RAX], 3798 
AND RCX, 0b1111111111111 # instrumentation
AND ESI, 0b111 # instrumentation
LOCK BTS dword ptr [R14 + RCX], ESI 
CMOVNB ECX, ECX 
NOT AL 
MOV EDX, 701839903 
BTC EBX, -63 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
