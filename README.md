# OUA Fantasy Draft Scout + Live Draft Room

A mobile-friendly static scouting site for the 2026–27 OUA men's volleyball fantasy draft.

- **Player Scout:** 2025–26 fantasy statistics, player profiles, week/match trends, and partial 2026 preseason match logs.
- **Rosters & Draft Board:** searchable draft pool, roster-evidence flags, and a *personal* browser-only watchlist.
- **Live Draft Room:** available players with Stats links, six managers, live pick history, manager rosters, and commissioner-only picks/undo (once Supabase is configured).

## Publishing

Upload `index.html`, `draft-config.js`, `.nojekyll` and `README.md` to the repository root and enable GitHub Pages on branch `main` from `/(root)`.

**Before Supabase setup:** the Live Draft Room works as a clearly labeled local-only preview. Nothing entered there syncs between browsers.

**To enable real-time shared selections:** follow `SUPABASE_SETUP.md` and run `supabase-schema.sql` in Supabase SQL Editor. Never commit secret keys or passwords.

The historical athlete IDs retained in the dataset are used where known; unidentified current players receive stable draft-room keys, *not invented OUA player IDs*. Western remains provisional until its 2026–27 roster is published. Other schools' roster reconciliation may still be incomplete.

- **Lottery & Draft Order:** Weighted lottery completed October 28, 2026. Order Steve, Alex, Josh, Amit, Owen, Robbie. Includes 11-round (66 pick) snake schedule. Draft Room shows on-clock/next manager from recorded pick count.

## Attribution and use

Designed and created by Emily Wright. © 2026 Emily Wright. Original site design and custom application code — all rights reserved. Unofficial, non-commercial fantasy volleyball project for fun with friends; not affiliated with OUA or member universities. University names, logos, and external sports data belong to their respective rights holders.
