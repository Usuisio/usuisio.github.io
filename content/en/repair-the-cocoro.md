---
title: Repair the Cocoro
description: A text adventure where you repair a broken caretaker robot by typing real commands into your browser's developer console (F12). Free, desktop-browser only, in Japanese / English / Korean.
type: cocoro
params:
  term_path: coc-o-4902 — maintenance console
  subtitle: Repair the Cocoro ── a repair-shop text adventure you play in the browser console
  tagline: A broken caretaker robot is on your workbench, and you're the engineer. Diagnose her, repair her, and make "that choice" — all by typing real commands into your developer console.
  play_label: ▶ Open the game (free)
  play_url: https://usuisio.github.io/repaircocoro/
  portrait_alt: The caretaker robot "Cocoro" — long brown hair, light-blue rabbit ears, a white mechanical body with a battery panel on her belly
  alt_names: ["リペア・ザ・ココロ", "Repair the Cocoro", "리페어 더 코코로"]
  genres: ["Text adventure", "Visual novel", "Robot"]
  dev_name: Nukumori Robot Workshop
  og_image: /cocoro/og-cocoro.jpg
  egg: "...Not here. The repair is waiting for you inside the game."
  about_cmd: ABOUT()
  diag:
    - { k: Genre, v: Text adventure (console-command gimmick) }
    - { k: Price, v: Free }
    - { k: Platform, v: Desktop browser only (uses the F12 developer console) }
    - { k: Length, v: About 15 minutes }
    - { k: Controls, v: Clicking choices + typing commands into the console }
    - { k: Ending, v: Decided by your final command (multiple endings) }
    - { k: Languages, v: Japanese / English / Korean }
    - { k: Released, v: July 2024 }
    - { k: Made by, v: Nukumori Robot Workshop (a React web game) }
  gallery:
    - src: /cocoro/scene-en.webp
      alt: Cocoro happily says it's her first time being maintained by a human engineer, with a heart floating above her head
      caption: Your patient is Cocoro — thrilled to meet a human engineer.
    - src: /cocoro/check-en.webp
      alt: After typing CHECK() into the console, the game shows "Initiating diagnostic program." in cyan text
      caption: Run CHECK() in the F12 console, and her diagnosis begins.
    - src: /cocoro/manual-ja.webp
      alt: A manual panel reads "Press F12 to open the console and enter the following commands"
      caption: The in-game manual teaches you each real command.
  gallery_more: { label: "→ Gallery: Cocoro illustrations & concept art", url: "/gallery/repair-the-cocoro/" }
  steps_title: How to play
  steps:
    - { n: STEP 01, title: Pick a language and listen, body: "Choose one of three languages, hear out Cocoro's problem, and move the conversation forward with choices. Mouse only so far." }
    - { n: STEP 02, title: Open the console with F12, body: "The game asks you to open the console. Press <code>F12</code> (or right-click → Inspect) to open your browser's developer console." }
    - { n: STEP 03, title: Type the commands, body: "Type <code>CHECK()</code> to run a diagnosis, <code>OPENHATCH()</code> to open her belly hatch, and so on. The on-screen manual shows every command, so you can just copy &amp; paste." }
  faq:
    - { q: Do I really use the F12 developer console?, a: Yes — that's the whole trick. The console developers normally use becomes your workbench for operating the robot. Every command is listed in the in-game manual, so no programming knowledge is needed. }
    - { q: Is it free?, a: Yes. It plays in the browser for free, no installation required. }
    - { q: Can I play on mobile?, a: It's desktop-browser only, because it relies on the developer console. }
    - { q: How long is it?, a: A short piece, about 15 minutes per playthrough. }
    - { q: Is there only one ending?, a: "No. The final command you give Cocoro decides how the story ends." }
    - { q: What languages are supported?, a: Japanese, English and Korean — you choose at the start. }
  back_home: Nukumori Robot Workshop
  credits: リペア・ザ・ココロ / Repair the Cocoro © Nukumori Robot Workshop
---

This is a slightly unusual text adventure. You are a <span class="cy">maintenance engineer</span>. Today's patient is <span class="cy">Cocoro</span>, a caretaker robot whose battery is near the end of its life. "No matter how much I charge, I get hungry again right away," she tells you — and it's your job to look her over and fix her.

What makes it different from an ordinary visual novel is that <mark>you operate the robot through a real developer console</mark>. Press `F12` to open your browser's console, type commands like `CHECK()` or `OPENHATCH()`, and Cocoro's body responds exactly as instructed. Moving back and forth between the screen and the console — that gap is what this game really is.

But when you try to replace her battery, Cocoro refuses. It was a precious gift from the girl who used to own her. How will you handle the "command" that binds her? Your <span class="cy">final command</span> decides how this story ends.
