const server = Bun.serve({
	port: 3000,
	fetch(req) {
		const url = new URL(req.url);

		if (url.pathname === '/') {
			return new Response(JSON.stringify({ status: 'server at /' }), {
				headers: { 'Content-Type': 'application/json' },
			});
		}

		if (url.pathname === '/health') {
			return new Response(JSON.stringify({ status: 'ok' }), {
				headers: { 'Content-Type': 'application/json' },
			});
		}

		return new Response('Not Found', { status: 404 });
	},
});

console.log(`Server running on http://localhost:${server.port}`);
