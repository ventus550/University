function createGenerator(n) {
	return function () {
		var _state = 0;
		return {
			next: function () {
				return {
					value: _state,
					done: _state++ >= n
				}
			}
		}
	}
}


var foo = {
	[Symbol.iterator]: createGenerator(10)
};

var foo1 = {
	[Symbol.iterator]: createGenerator(20)
};


var foo2 = {
	[Symbol.iterator]: createGenerator(30)
};

for (var f of foo)
	console.log(f);

for (var f of foo1)
	console.log(f);

for (var f of foo2)
	console.log(f);