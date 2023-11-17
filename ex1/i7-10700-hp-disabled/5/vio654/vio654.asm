.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RBX, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BTC dword ptr [R14 + RBX], EDX 
AND RCX, 0b1111111111111 # instrumentation
BT qword ptr [R14 + RCX], 3 
MOV BL, 102 
MOVSX DI, DIL 
JNB .bb_main.1 
JMP .bb_main.4 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
BT dword ptr [R14 + RSI], 6 
BTS CX, -119 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG qword ptr [R14 + RBX], RBX 
SETNBE SIL 
AND RSI, 0b1111111111111 # instrumentation
CMOVS ESI, dword ptr [R14 + RSI] 
AND RCX, 0b1111111111111 # instrumentation
MOVZX DX, byte ptr [R14 + RCX] 
JBE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
OR RCX, RCX 
AND AL, -18 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR qword ptr [R14 + RDI], RDX 
CMPXCHG EAX, EAX 
CMOVLE EDI, ESI 
SETO CL 
XOR RAX, 1996634974 
AND RSI, 0b1111111111111 # instrumentation
CMOVNBE EDX, dword ptr [R14 + RSI] 
JMP .bb_main.3 
.bb_main.3:
AND RDX, 0b1111111111111 # instrumentation
AND RCX, 0b111 # instrumentation
LOCK BTC qword ptr [R14 + RDX], RCX 
AND SIL, -16 # instrumentation
CMOVLE ECX, EBX 
SETS CL 
XCHG EDI, ESI 
JMP .bb_main.4 
.bb_main.4:
AND DIL, 83 # instrumentation
SETZ BL 
MOVZX DX, CL 
AND RDI, 0b1111111111111 # instrumentation
AND RDX, 0b111 # instrumentation
LOCK BTR qword ptr [R14 + RDI], RDX 
BTR RBX, -63 
XOR SI, SI 
MOV EDI, EDX 
MOVSX EDI, AL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RSI, qword ptr [R14 + RDX] 
AND RBX, 0b1111111111111 # instrumentation
LOCK AND dword ptr [R14 + RBX], -86 
CMOVLE RBX, RDI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
