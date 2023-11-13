.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
BTR EBX, EAX 
AND RSI, 0b1111111111111 # instrumentation
CMOVB EBX, dword ptr [R14 + RSI] 
AND RDI, 0b1111111111111 # instrumentation
OR RDI, qword ptr [R14 + RDI] 
OR RSI, 0b1000000000000000000000000000000 # instrumentation
BSF RCX, RSI 
XCHG EAX, EAX 
CMPXCHG AX, CX 
BTS RAX, -34 
AND RSI, 0b1111111111111 # instrumentation
LOCK NOT qword ptr [R14 + RSI] 
AND RBX, 0b1111111111111 # instrumentation
CMOVL DI, word ptr [R14 + RBX] 
XOR AL, AL 
CMPXCHG BX, CX 
CMPXCHG ECX, EAX 
SETB CL 
AND RSI, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RSI], CL 
OR CL, CL 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RBX, 0b1111111111111 # instrumentation
LOCK OR byte ptr [R14 + RBX], SIL 
OR SI, 0b1000000000000000 # instrumentation
BSR DI, SI 
CMPXCHG DL, SIL # instrumentation
AND SIL, 76 # instrumentation
LAHF  
AND RDX, 0b1111111111111 # instrumentation
MOVSX RDX, word ptr [R14 + RDX] 
SETP DIL 
XOR ECX, 68 
MOVZX EDX, DIL 
SETBE BL 
AND RCX, 28 
LEA RSI, qword ptr [RBX + RBX] 
XOR DX, DX 
AND RDI, 0b1111111111111 # instrumentation
LOCK XOR word ptr [R14 + RDI], DX 
SETNS BL 
AND RAX, 0b1111111111111 # instrumentation
CMOVB BX, word ptr [R14 + RAX] 
AND RAX, 0b1111111111111 # instrumentation
MOV DL, byte ptr [R14 + RAX] 
CMOVZ ESI, ESI 
CMOVP ESI, EAX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
