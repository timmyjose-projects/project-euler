#include "share/atspre_define.hats"
#include "share/atspre_staload.hats"

(* Find the sum of all multiples of 3 or 5 below 1000 *)

fun solve
  (start: int, stop: int): int = 
  let
    fun loop
      (start: int, stop: int, res: int): int =
      ifcase
        | start = stop => res
        | _ => ifcase
                | start mod 3 = 0 => loop(start + 1, stop, res + start)
                | start mod 5 = 0 => loop(start + 1, stop, res + start)
                | _ => loop(start + 1, stop, res)
  in
    loop(start, stop, 0)
  end

implement main0 () = {
  val () = println!(solve(1, 1000))
}
