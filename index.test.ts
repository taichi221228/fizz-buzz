import { spawn, type SpawnOptions } from "bun";
import { expect, test } from "bun:test";

const ANSWER =
  "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzBuzz\n16\n17\nFizz\n19\nBuzz\nFizz\n22\n23\nFizz\nBuzz\n26\nFizz\n28\n29\nFizzBuzz\n31\n32\nFizz\n34\nBuzz\nFizz\n37\n38\nFizz\nBuzz\n41\nFizz\n43\n44\nFizzBuzz\n46\n47\nFizz\n49\nBuzz\nFizz\n52\n53\nFizz\nBuzz\n56\nFizz\n58\n59\nFizzBuzz\n61\n62\nFizz\n64\nBuzz\nFizz\n67\n68\nFizz\nBuzz\n71\nFizz\n73\n74\nFizzBuzz\n76\n77\nFizz\n79\nBuzz\nFizz\n82\n83\nFizz\nBuzz\n86\nFizz\n88\n89\nFizzBuzz\n91\n92\nFizz\n94\nBuzz\nFizz\n97\n98\nFizz\nBuzz";

const handler = (
  cmds: string[],
  options?: SpawnOptions.OptionsObject,
) =>
async () => {
  const { stdout } = spawn(cmds, options);
  const output = await new Response(stdout).text();
  expect(output.trim()).toMatch(ANSWER);
};

test("JavaScript", handler(["bun", "javascript/index.js"]));

test("TypeScript", handler(["bun", "typescript/index.ts"]));

test("Lisp", handler(["clisp", "lisp/main.lisp"]));

test("Haskell", handler(["haskell/haskell"]));

test("Elixir", handler(["elixir", "elixir/main.exs"]));

test("Go", handler(["go/go"]));

test("Nim", handler(["nim/nim"]));

test("Crystal", handler(["crystal/crystal"]));

test("Rust", handler(["rust/rust"]));

test("Zig", handler(["zig/zig"]));

test("Onyx", handler(["onyx", "run", "onyx/onyx.wasm"]));
