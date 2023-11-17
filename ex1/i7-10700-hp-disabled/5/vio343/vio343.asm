.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, -6 # instrumentation
CMOVLE RBX, RCX 
AND RSI, RSI 
AND RBX, 0b1111111111111 # instrumentation
MOV dword ptr [R14 + RBX], 44071787 
BT RSI, RCX 
XCHG RSI, RBX 
AND RBX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RBX], CL 
CMOVB EBX, ECX 
AND RSI, 0b1111111111111 # instrumentation
BTS word ptr [R14 + RSI], 1 
AND SIL, 9 # instrumentation
JNO .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
MOV CL, AL 
AND RCX, 15 
MOV EDX, EDX 
CMPXCHG AL, AL 
OR SI, -61 
AND RAX, 0b1111111111111 # instrumentation
CMPXCHG byte ptr [R14 + RAX], BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVNO RCX, qword ptr [R14 + RAX] 
MOVZX RAX, SI 
SETO BL 
LOOPNE .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
XCHG EAX, ESI 
AND RDX, 0b1111111111111 # instrumentation
MOVZX EAX, word ptr [R14 + RDX] 
CMPXCHG RDI, RAX 
AND RDI, 0b1111111111111 # instrumentation
LOCK CMPXCHG byte ptr [R14 + RDI], AL 
CMOVNS EDI, EDI 
SETNLE BL 
AND RDX, 0b1111111111111 # instrumentation
SETP byte ptr [R14 + RDX] 
AND RDX, 33 
MOV BL, CL 
JMP .bb_main.3 
.bb_main.3:
XOR SI, -91 
SETNLE BL 
CMOVS BX, DX 
CMOVNO RAX, RSI 
AND ESI, EDI 
CMOVNLE SI, AX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
