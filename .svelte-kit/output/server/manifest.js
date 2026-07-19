export const manifest = (() => {
function __memo(fn) {
	let value;
	return () => value ??= (value = fn());
}

return {
	appDir: "_app",
	appPath: "_app",
	assets: new Set(["robots.txt"]),
	mimeTypes: {".txt":"text/plain"},
	_: {
		client: {start:"_app/immutable/entry/start.CoRxA_8y.js",app:"_app/immutable/entry/app.D0-nA2Se.js",imports:["_app/immutable/entry/start.CoRxA_8y.js","_app/immutable/chunks/b0J2fl5a.js","_app/immutable/chunks/Cn04--rz.js","_app/immutable/entry/app.D0-nA2Se.js","_app/immutable/chunks/Cn04--rz.js","_app/immutable/chunks/xihTtKlq.js"],stylesheets:[],fonts:[],uses_env_dynamic_public:false},
		nodes: [
			__memo(() => import('./nodes/0.js')),
			__memo(() => import('./nodes/1.js'))
		],
		remotes: {
			
		},
		routes: [
			
		],
		prerendered_routes: new Set(["/"]),
		matchers: async () => {
			
			return {  };
		},
		server_assets: {}
	}
}
})();
