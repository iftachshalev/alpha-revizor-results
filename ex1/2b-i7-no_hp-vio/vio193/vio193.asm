.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND RDX, 0b1111111111111 # instrumentation
CMOVNS EAX, dword ptr [R14 + RDX] 
CMOVNBE DX, AX 
XCHG BL, DL 
AND RDX, 0b1111111111111 # instrumentation
CMOVL RCX, qword ptr [R14 + RDX] 
MOV DL, -1 
SETNBE AL 
AND RCX, 0b1111111111111 # instrumentation
XADD byte ptr [R14 + RCX], DIL 
AND RDX, 0b1111111111111 # instrumentation
TEST qword ptr [R14 + RDX], RAX 
AND RAX, 0b1111111111111 # instrumentation
MOV EAX, dword ptr [R14 + RAX] 
TEST AL, -77 
SETO CL 
AND RDI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RDI], 3 
TEST EAX, EBX 
JP .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RSI, 0b1111111111111 # instrumentation
LOCK BTS dword ptr [R14 + RSI], 4 
AND RDX, 0b1111111111111 # instrumentation
MOVZX AX, byte ptr [R14 + RDX] 
AND RDX, 0b1111111111111 # instrumentation
AND ECX, 0b111 # instrumentation
BT dword ptr [R14 + RDX], ECX 
SAHF  
AND RDX, 79 
OR ESI, 0b1000000000000000000000000000000 # instrumentation
BSF EAX, ESI 
XOR DL, 105 
MOV BL, AL 
LEA CX, qword ptr [RSI + RCX] 
CMOVNP RCX, RAX 
AND AX, -1047 
MOV RAX, 8289851522912321934 
CMOVBE ESI, EAX 
MOV CL, BL 
BTS RDX, 124 
TEST EAX, 1002849510 
BTR RCX, RDX 
AND DIL, -26 # instrumentation
SETNP AL 
AND RDI, 0b1111111111111 # instrumentation
AND EDX, 0b111 # instrumentation
BT dword ptr [R14 + RDI], EDX 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
