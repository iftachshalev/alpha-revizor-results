.intel_syntax noprefix
MFENCE # instrumentation
.test_case_enter:
.function_main:
.bb_main.entry:
JMP .bb_main.0 
.bb_main.0:
AND DIL, -36 # instrumentation
SETBE AL 
OR SIL, 37 
MOVSX ESI, SIL 
MOVSX DI, CL 
XOR EBX, ESI 
AND RDX, 0b1111111111111 # instrumentation
LOCK XADD dword ptr [R14 + RDX], ESI 
AND RDX, 0b1111111111111 # instrumentation
AND EDX, dword ptr [R14 + RDX] 
CMOVNP DX, DI 
LEA EDX, qword ptr [RSI] 
JNLE .bb_main.1 
JMP .bb_main.exit 
.bb_main.1:
AND RCX, 0b1111111111111 # instrumentation
LOCK OR qword ptr [R14 + RCX], RDI 
AND RAX, -2056736640 
SETNS BL 
TEST BX, DI 
MOVZX EDI, AX 
AND RCX, 0b1111111111111 # instrumentation
OR SIL, byte ptr [R14 + RCX] 
SETNBE BL 
JB .bb_main.2 
JMP .bb_main.3 
.bb_main.2:
BT DI, 124 
TEST EAX, -862723293 
BTC EDI, EDX 
SETNBE DIL 
CLD  
AND RBX, 0b1111111111111 # instrumentation
CMOVP ESI, dword ptr [R14 + RBX] 
AND RBX, 0b1111111111111 # instrumentation
MOVSX ECX, word ptr [R14 + RBX] 
SETNB CL 
BTR AX, DI 
BTS EBX, EAX 
JZ .bb_main.3 
JMP .bb_main.exit 
.bb_main.3:
BT EDX, ECX 
MOV EAX, 2123801686 
XADD BL, BL 
AND RDI, 0b1111111111111 # instrumentation
TEST dword ptr [R14 + RDI], 605036806 
CMOVS EDX, EAX 
MOV RDI, RSI 
.bb_main.exit:
.test_case_exit:
MFENCE # instrumentation
