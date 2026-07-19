import TailwindPlugin from "bun-plugin-tailwind";

await Bun.build({
    entrypoints: ["./src/index.html"],
    outdir: "./build",
    minify: true,
    plugins: [TailwindPlugin],
})