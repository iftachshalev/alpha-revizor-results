.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -17 # instrumentation
SETS CL 
XOR SIL, 58 
AND RDX, 0b1111111111111 # instrumentation
LOCK OR dword ptr [R14 + RDX], EDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTC dword ptr [R14 + RDX], 0 
AND RDI, 0b1111111111111 # instrumentation
MOVSX EDI, byte ptr [R14 + RDI] 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR byte ptr [R14 + RDI], SIL 
MOV RBX, RAX 
AND RDI, 0b1111111111111 # instrumentation
XOR RDI, qword ptr [R14 + RDI] 
JNL .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
XADD ECX, EBX 
AND RDX, 0b1111111111111 # instrumentation
XOR EBX, dword ptr [R14 + RDX] 
XOR AL, AL 
MOVZX EDI, AL 
CMPXCHG EAX, EDI 
AND RBX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RBX], BL 
AND RSI, 0b1111111111111 # instrumentation
CMOVLE RDX, qword ptr [R14 + RSI] 
XOR CL, -22 
AND RDI, 0b1111111111111 # instrumentation
LOCK AND word ptr [R14 + RDI], 110 
AND RBX, 0b1111111111111 # instrumentation
XOR EDX, dword ptr [R14 + RBX] 
MOVZX DI, CL 
JMP .bb_main.2 
.bb_main.2:
MOVSX RDX, DIL 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RAX], RDX 
BSWAP EDI 
AND RSI, 0b1111111111111 # instrumentation
AND CX, 0b111 # instrumentation
BTS word ptr [R14 + RSI], CX 
AND DIL, -18 # instrumentation
STD  
CMOVL EDX, EAX 
SETNLE AL 
XADD CL, DL 
AND RDI, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RDI], 9041 
AND RBX, 0b1111111111111 # instrumentation
CMOVBE AX, word ptr [R14 + RBX] 
AND EAX, EDI 
AND RAX, 0b1111111111111 # instrumentation
MOV word ptr [R14 + RAX], AX 
AND RAX, 0b1111111111111 # instrumentation
CMOVNZ EDX, dword ptr [R14 + RAX] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
