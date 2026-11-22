// UW Student Portal - training app. All data is fake.
// No API keys or admin password are stored in this file any more.

const PW_SALT = "uwsalt:";

// Passwords are stored as salted SHA-256 hashes, never as plain text.
const USERS = [
  { id: 1001, name: "Ayesha Khan",    email: "ayesha@uw.test", pwHash: "c9e4e3bdc9f1657bc62101bbd183a9755e94969fd864aecb764e63632d669859", role: "student", cnic: "35202-1234567-1" },
  { id: 1002, name: "Bilal Ahmed",    email: "bilal@uw.test",  pwHash: "90ad5b70a0ef33f2bc2a1d474f4acb93aa5ee004cdb622147fe2bf920dccfdab", role: "student", cnic: "35202-7654321-9" },
  { id: 2001, name: "Dr. Sana Malik", email: "sana@uw.test",   pwHash: "d57c090b30e6d6f273391a4e4255414fd959679615bedefbb2533cb936f0c38c", role: "teacher", cnic: "35202-1111111-2" },
  { id: 9001, name: "Admin",          email: "admin@uw.test",  pwHash: "023cc8a1c8e6c17778e93921ae5c074f7aa8ba18b7b3bc65be2852a0fc851923", role: "admin",   cnic: "35202-9999999-3" }
];

async function hashPassword(pw) {
  const data = new TextEncoder().encode(PW_SALT + pw);
  const buf = await crypto.subtle.digest("SHA-256", data);
  return Array.from(new Uint8Array(buf)).map((b) => b.toString(16).padStart(2, "0")).join("");
}

const RESULTS = {
  1001: { course: "CYS-331L", marks: 88 },
  1002: { course: "CYS-331L", marks: 54 },
  2001: { course: "n/a", marks: 0 }
};
const COURSES = ["CYS-331L Secure Software Design", "CS-101 Programming", "MT-210 Discrete Maths"];

const params = new URLSearchParams(location.search);
const $ = (id) => document.getElementById(id);

function getSession() {
  const s = localStorage.getItem("session");
  return s ? JSON.parse(s) : null;
}

$("loginForm").addEventListener("submit", async (e) => {
  e.preventDefault();
  const email = $("email").value;
  const pwHash = await hashPassword($("password").value);
  const u = USERS.find((x) => x.email === email && x.pwHash === pwHash);
  if (!u) {
    $("loginMsg").textContent = "Login failed for " + email;
    return;
  }
  localStorage.setItem("session", JSON.stringify({ id: u.id, name: u.name, role: u.role, cnic: u.cnic }));
  const next = params.get("next");
  if (next) { location.href = next; return; }
  render();
});

$("resultForm").addEventListener("submit", (e) => { e.preventDefault(); showResult($("rid").value); });

function showResult(id) {
  const s = getSession();
  if (!s) return;

  if (String(id) !== String(s.id) && s.role === "student") {
    $("resultOut").textContent = "Access denied: you can only view your own result.";
    return;
  }

  const r = RESULTS[id];
  const u = USERS.find((x) => String(x.id) === String(id));

  $("resultOut").textContent = r
    ? u.name + ": " + r.course + " = " + r.marks
    : "No result found.";
}

$("searchForm").addEventListener("submit", (e) => {
  e.preventDefault();
  const q = $("q").value;
  const hits = COURSES.filter((c) => c.toLowerCase().includes(q.toLowerCase()));
  const out = $("searchOut");
  out.textContent = "";
  if (hits.length) {
    hits.forEach((h) => {
      const line = document.createElement("div");
      line.textContent = h;
      out.appendChild(line);
    });
  } else {
    out.textContent = "No courses match: " + q;
  }
});

$("logout").addEventListener("click", () => { localStorage.removeItem("session"); render(); });

function render() {
  const s = getSession();
  $("loginBox").classList.toggle("hidden", !!s);
  $("dash").classList.toggle("hidden", !s);
  if (!s) return;
  $("welcome").innerHTML = "Welcome, " + (params.get("name") || s.name);
  if (params.get("id")) showResult(params.get("id"));
  if (s.role === "admin") {
    $("admin").classList.remove("hidden");
    $("userList").innerHTML = USERS.map((u) => "<li>" + u.name + " (" + u.role + ") CNIC " + u.cnic + "</li>").join("");
  }
}
render();