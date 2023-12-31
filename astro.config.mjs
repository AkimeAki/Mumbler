import { defineConfig } from "astro/config";
import node from "@astrojs/node";

// https://astro.build/config
export default defineConfig({
	server: {
		port: 4001,
		host: "0.0.0.0"
	},
	output: "server",
	adapter: node({
		mode: "standalone"
	}),
	experimental: {
		assets: true
	},
	integrations: []
});
