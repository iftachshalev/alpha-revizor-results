.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDI, 0b1111111111111 # instrumentation
AND RSI, 0b111 # instrumentation
BTS qword ptr [R14 + RDI], RSI 
AND RDI, 0b1111111111111 # instrumentation
OR qword ptr [R14 + RDI], 0b1000000000000000000000000000000 # instrumentation
BSF RDX, qword ptr [R14 + RDI] 
AND DIL, 62 # instrumentation
CMOVNB CX, DX 
CMOVO DI, DI 
BTR RAX, RBX 
BT CX, AX 
CMOVNBE DX, BX 
SETNBE AL 
AND RDI, 0b1111111111111 # instrumentation
CMOVS EAX, dword ptr [R14 + RDI] 
AND RSI, 0b1111111111111 # instrumentation
AND EAX, 0b111 # instrumentation
BTR dword ptr [R14 + RSI], EAX 
MOVZX BX, AL 
AND RCX, 0b1111111111111 # instrumentation
AND byte ptr [R14 + RCX], AL 
LOOP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND DIL, -112 # instrumentation
CMOVBE DI, SI 
MOV RBX, RDX 
CBW  
TEST AL, 44 
AND RAX, 0b1111111111111 # instrumentation
OR byte ptr [R14 + RAX], DIL 
AND RDX, 0b1111111111111 # instrumentation
CMOVNO RAX, qword ptr [R14 + RDX] 
CMOVS RDX, RDI 
BTS RSI, RDI 
AND AL, 17 
TEST DI, CX 
AND RDI, 0b1111111111111 # instrumentation
AND EDI, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EDI 
AND RDI, 0b1111111111111 # instrumentation
AND dword ptr [R14 + RDI], 100 
AND RDI, 0b1111111111111 # instrumentation
LOCK XADD qword ptr [R14 + RDI], RSI 
AND AX, -28024 
CMOVNP RDX, RCX 
CMOVLE EDX, EDX 
XOR AL, CL 
OR EAX, 0b1000000000000000000000000000000 # instrumentation
BSF ECX, EAX 
AND SIL, -5 # instrumentation
CMOVNP CX, AX 
AND RSI, 0b1111111111111 # instrumentation
CMOVNZ DX, word ptr [R14 + RSI] 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
