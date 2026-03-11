import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";

// https://vite.dev/config/
export default defineConfig({
  plugins: [react()],
  server: {
    allowedHosts: ["localhost", ".test.pratyay.qzz.io"],
    host: true,
    port: 5173,
  },
});
