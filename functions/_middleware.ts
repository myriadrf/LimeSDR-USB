export const onRequest = async (context: any) => {
  const secret = context.env.CHILD_PROJECT_SECRET;
  const authHeader = context.request.headers.get("Authorization");

  console.log("=== Static Site Auth Middleware ===");
  console.log("URL:", context.request.url);
  console.log("Method:", context.request.method);
  console.log("Has secret:", !!secret);
  console.log("Secret:", secret);
  console.log("Auth header:", authHeader);
  console.log("Match:", authHeader === `Bearer ${secret}`);
  console.log("===================================");

  if (!secret) {
    console.error("CHILD_PROJECT_SECRET not configured!");
    return new Response("Server configuration error", {
      status: 500,
      headers: { "Content-Type": "text/plain" },
    });
  }

  if (!authHeader || authHeader !== `Bearer ${secret}`) {
    console.error("Authentication failed!");
    return new Response("Access Denied", {
      status: 403,
      headers: { "Content-Type": "text/plain" },
    });
  }

  console.log("Authentication successful!");
  return context.next();
};
