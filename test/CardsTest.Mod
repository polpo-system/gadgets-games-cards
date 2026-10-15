MODULE CardsTest;  (** CardsTest.Run: a deck made, shuffled and counted, a stack gadget made; needs the desktop's display *)

IMPORT Objects, Display, Gadgets, Cards, Out := out;

VAR fails, checks: LONGINT;

PROCEDURE Check(what: ARRAY OF CHAR; ok: BOOLEAN);
BEGIN
  INC(checks);
  IF ~ok THEN INC(fails); Out.String("FAIL "); Out.String(what); Out.Ln END
END Check;

PROCEDURE Run*;
VAR obj: Objects.Object; tail, c: Cards.Card; suit, nr, n: INTEGER;
BEGIN
  fails := 0; checks := 0;
  tail := Cards.NewTail(); Check("a new tail is empty", Cards.IsEmpty(tail));
  suit := 0;
  WHILE suit < 4 DO
    nr := 0; WHILE nr < 13 DO Cards.AppendCard(tail, Cards.NewCard(suit, nr, TRUE)); INC(nr) END;
    INC(suit)
  END;
  Check("52 cards appended", ~Cards.IsEmpty(tail));
  Cards.Shuffle(tail);
  n := 0; c := tail.next; WHILE (c # tail) & (c # NIL) & (n < 100) DO INC(n); c := c.next END;
  Check("52 cards after Shuffle", n = 52);
  obj := Gadgets.CreateObject("Cards.NewStack"); Check("a stack gadget", (obj # NIL) & (obj IS Display.Frame));
  Out.String("CardsTest: "); Out.Int(checks, 0); Out.String(" checks, "); Out.Int(fails, 0); Out.String(" failed"); Out.Ln
END Run;

END CardsTest.
