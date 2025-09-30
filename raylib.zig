// build with `zig build-exe raylib.zig -lc -lraylib`
const ray = @cImport({
    @cInclude("raylib.h");
});

pub fn main() void {
    const screenWidth = 640;
    const screenHeight = 480;
    ray.InitWindow(screenWidth, screenHeight, "raylib-zig window");
    defer ray.CloseWindow();

    while (!ray.WindowShouldClose()) {
        ray.BeginDrawing();
        defer ray.EndDrawing();
        // rendering graphics :
        ray.ClearBackground(ray.RAYWHITE);
        ray.DrawText("Calling native RayLib/C on Zig", 100, 200, 30, ray.LIGHTGRAY);
    }
}
