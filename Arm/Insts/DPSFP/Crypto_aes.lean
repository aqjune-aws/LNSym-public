/-
Copyright (c) 2023 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author(s): Shilpi Goel
-/
-- AESE, AESMC

import Arm.Decode
import Arm.Insts.Common

----------------------------------------------------------------------

namespace DPSFP

open Std.BitVec

-- def aese (x : BitVec 128) : BitVec 128 :=
--   open aes_helpers in
--   let w_127_64    := extractLsb 127 64 w
--   let w_127_71    := extractLsb 127 71 w
--   let w_63_0      := extractLsb 63 0 w
--   let sig0        := sigma_0 w_127_64 w_127_71
--   let x_63_0      := extractLsb 63 0 x
--   let x_63_7      := extractLsb 63 7 x
--   let vtmp_63_0   := w_63_0 + sig0
--   let sig0        := sigma_0 x_63_0 x_63_7
--   let vtmp_127_64 := w_127_64 + sig0
--   let result      := vtmp_127_64 ++ vtmp_63_0
--   result

-- def exec_crypto_aes
--   (inst : Crypto_aes_cls) (s : ArmState) : ArmState :=
--   open Std.BitVec in
--   let operand1 := read_sfp 128 inst.Rd s
--   let operand2 := read_sfp 128 inst.Rn s
--   let result :=
--     match inst.opcode with
--     | 00#2 => sha512su0 x w
--     | _ => 0#128 -- Throw an "unimplemented instruction" exception
--   -- State Updates
--   let s' := write_pc ((read_pc s) + 4#64) s
--   let s' := write_sfp 128 inst.Rd result s'
--   s'

end DPSFP
