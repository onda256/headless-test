function out(s) {
	document.getElementById('out').textContent = s;
}

let s = '', j = 0;

for (let i = 0x20; i <= 0x7e; i++) {
	s += String.fromCharCode(i);
	if (++j == 0x10) {
		s += '\n';
		j = 0;
	}
}

s += '\n';
j = 0;

for (let i = 0x3041; i <= 0x3094; i++) {
	s += String.fromCharCode(i);
	if (++j == 0x10) {
		s += '\n';
		j = 0;
	}
}

out(s);
