.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND SIL, 123 # instrumentation
SETLE AL 
MOV DL, AL 
AND RSI, RDX 
AND RDX, 0b1111111111111 # instrumentation
LOCK BTS qword ptr [R14 + RDX], 3 
SETZ DL 
AND RCX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RCX] 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSR EDX, ESI 
BTR CX, -128 
AND SIL, 45 # instrumentation
CMOVP ESI, EAX 
CMOVNP DI, BX 
CMOVLE DX, BX 
AND RBX, 0b1111111111111 # instrumentation
CMOVNBE SI, word ptr [R14 + RBX] 
MOVSX EDI, SIL 
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVBE BX, word ptr [R14 + RDI] 
NOT RSI 
CMOVL EDX, EDI 
CMOVP EDI, ESI 
CMOVB BX, BX 
JNZ .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, 113 # instrumentation
SETLE DL 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
AND RDX, 0b1111111111111 # instrumentation
XOR dword ptr [R14 + RDX], -34 
AND RAX, 0b1111111111111 # instrumentation
LOCK XADD byte ptr [R14 + RAX], AL 
XOR DX, SI 
SETNB BL 
SETNL DL 
AND RDX, 0b1111111111111 # instrumentation
XCHG byte ptr [R14 + RDX], AL 
AND RDI, 0b1111111111111 # instrumentation
AND EBX, 0b111 # instrumentation
BTS dword ptr [R14 + RDI], EBX 
AND DIL, 90 # instrumentation
MOV SIL, -91 
LEA RDX, qword ptr [RAX + RCX + 19251] 
CMOVP RBX, RAX 
OR RDX, RBX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
