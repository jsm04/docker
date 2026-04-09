import { describe, it, expect } from 'bun:test';

type HealthResponse = {
	status: 'ok';
};

describe('health endpoint', () => {
	it('should return status ok', async () => {
		const res = await fetch('http://localhost:3000/health');
		const data = (await res.json()) as HealthResponse;

		expect(res.status).toBe(200);

		if (typeof data.status !== 'string') {
			throw new Error('Invalid response shape');
		}

		expect(data.status).toBe('ok');
	});
});
