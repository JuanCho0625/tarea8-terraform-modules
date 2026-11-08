export default {
  async fetch(request, env) {
    if (request.method !== "GET") {
      return Response.json(
        { error: "Metodo no permitido" },
        { status: 405, headers: { Allow: "GET" } }
      );
    }

    const { results } = await env.DB.prepare("SELECT 1 AS ok").run();

    return Response.json({
      message: "Hola desde un Worker creado con Terraform",
      d1_connected: results?.[0]?.ok === 1,
    });
  },
};
