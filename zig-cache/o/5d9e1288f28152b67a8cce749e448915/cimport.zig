pub const __builtin_bswap16 = @import("std").zig.c_builtins.__builtin_bswap16;
pub const __builtin_bswap32 = @import("std").zig.c_builtins.__builtin_bswap32;
pub const __builtin_bswap64 = @import("std").zig.c_builtins.__builtin_bswap64;
pub const __builtin_signbit = @import("std").zig.c_builtins.__builtin_signbit;
pub const __builtin_signbitf = @import("std").zig.c_builtins.__builtin_signbitf;
pub const __builtin_popcount = @import("std").zig.c_builtins.__builtin_popcount;
pub const __builtin_ctz = @import("std").zig.c_builtins.__builtin_ctz;
pub const __builtin_clz = @import("std").zig.c_builtins.__builtin_clz;
pub const __builtin_sqrt = @import("std").zig.c_builtins.__builtin_sqrt;
pub const __builtin_sqrtf = @import("std").zig.c_builtins.__builtin_sqrtf;
pub const __builtin_sin = @import("std").zig.c_builtins.__builtin_sin;
pub const __builtin_sinf = @import("std").zig.c_builtins.__builtin_sinf;
pub const __builtin_cos = @import("std").zig.c_builtins.__builtin_cos;
pub const __builtin_cosf = @import("std").zig.c_builtins.__builtin_cosf;
pub const __builtin_exp = @import("std").zig.c_builtins.__builtin_exp;
pub const __builtin_expf = @import("std").zig.c_builtins.__builtin_expf;
pub const __builtin_exp2 = @import("std").zig.c_builtins.__builtin_exp2;
pub const __builtin_exp2f = @import("std").zig.c_builtins.__builtin_exp2f;
pub const __builtin_log = @import("std").zig.c_builtins.__builtin_log;
pub const __builtin_logf = @import("std").zig.c_builtins.__builtin_logf;
pub const __builtin_log2 = @import("std").zig.c_builtins.__builtin_log2;
pub const __builtin_log2f = @import("std").zig.c_builtins.__builtin_log2f;
pub const __builtin_log10 = @import("std").zig.c_builtins.__builtin_log10;
pub const __builtin_log10f = @import("std").zig.c_builtins.__builtin_log10f;
pub const __builtin_abs = @import("std").zig.c_builtins.__builtin_abs;
pub const __builtin_fabs = @import("std").zig.c_builtins.__builtin_fabs;
pub const __builtin_fabsf = @import("std").zig.c_builtins.__builtin_fabsf;
pub const __builtin_floor = @import("std").zig.c_builtins.__builtin_floor;
pub const __builtin_floorf = @import("std").zig.c_builtins.__builtin_floorf;
pub const __builtin_ceil = @import("std").zig.c_builtins.__builtin_ceil;
pub const __builtin_ceilf = @import("std").zig.c_builtins.__builtin_ceilf;
pub const __builtin_trunc = @import("std").zig.c_builtins.__builtin_trunc;
pub const __builtin_truncf = @import("std").zig.c_builtins.__builtin_truncf;
pub const __builtin_round = @import("std").zig.c_builtins.__builtin_round;
pub const __builtin_roundf = @import("std").zig.c_builtins.__builtin_roundf;
pub const __builtin_strlen = @import("std").zig.c_builtins.__builtin_strlen;
pub const __builtin_strcmp = @import("std").zig.c_builtins.__builtin_strcmp;
pub const __builtin_object_size = @import("std").zig.c_builtins.__builtin_object_size;
pub const __builtin___memset_chk = @import("std").zig.c_builtins.__builtin___memset_chk;
pub const __builtin_memset = @import("std").zig.c_builtins.__builtin_memset;
pub const __builtin___memcpy_chk = @import("std").zig.c_builtins.__builtin___memcpy_chk;
pub const __builtin_memcpy = @import("std").zig.c_builtins.__builtin_memcpy;
pub const __builtin_expect = @import("std").zig.c_builtins.__builtin_expect;
pub const __builtin_nanf = @import("std").zig.c_builtins.__builtin_nanf;
pub const __builtin_huge_valf = @import("std").zig.c_builtins.__builtin_huge_valf;
pub const __builtin_inff = @import("std").zig.c_builtins.__builtin_inff;
pub const __builtin_isnan = @import("std").zig.c_builtins.__builtin_isnan;
pub const __builtin_isinf = @import("std").zig.c_builtins.__builtin_isinf;
pub const __builtin_isinf_sign = @import("std").zig.c_builtins.__builtin_isinf_sign;
pub const __has_builtin = @import("std").zig.c_builtins.__has_builtin;
pub const __builtin_assume = @import("std").zig.c_builtins.__builtin_assume;
pub const __builtin_unreachable = @import("std").zig.c_builtins.__builtin_unreachable;
pub const __builtin_constant_p = @import("std").zig.c_builtins.__builtin_constant_p;
pub const __builtin_mul_overflow = @import("std").zig.c_builtins.__builtin_mul_overflow;
pub const __builtin_va_list = [*c]u8;
pub const __gnuc_va_list = __builtin_va_list;
pub const va_list = __builtin_va_list;
pub const struct_Vector2 = extern struct {
    x: f32,
    y: f32,
};
pub const Vector2 = struct_Vector2;
pub const struct_Vector3 = extern struct {
    x: f32,
    y: f32,
    z: f32,
};
pub const Vector3 = struct_Vector3;
pub const struct_Vector4 = extern struct {
    x: f32,
    y: f32,
    z: f32,
    w: f32,
};
pub const Vector4 = struct_Vector4;
pub const Quaternion = Vector4;
pub const struct_Matrix = extern struct {
    m0: f32,
    m4: f32,
    m8: f32,
    m12: f32,
    m1: f32,
    m5: f32,
    m9: f32,
    m13: f32,
    m2: f32,
    m6: f32,
    m10: f32,
    m14: f32,
    m3: f32,
    m7: f32,
    m11: f32,
    m15: f32,
};
pub const Matrix = struct_Matrix;
pub const struct_Color = extern struct {
    r: u8,
    g: u8,
    b: u8,
    a: u8,
};
pub const Color = struct_Color;
pub const struct_Rectangle = extern struct {
    x: f32,
    y: f32,
    width: f32,
    height: f32,
};
pub const Rectangle = struct_Rectangle;
pub const struct_Image = extern struct {
    data: ?*anyopaque,
    width: c_int,
    height: c_int,
    mipmaps: c_int,
    format: c_int,
};
pub const Image = struct_Image;
pub const struct_Texture = extern struct {
    id: c_uint,
    width: c_int,
    height: c_int,
    mipmaps: c_int,
    format: c_int,
};
pub const Texture = struct_Texture;
pub const Texture2D = Texture;
pub const TextureCubemap = Texture;
pub const struct_RenderTexture = extern struct {
    id: c_uint,
    texture: Texture,
    depth: Texture,
};
pub const RenderTexture = struct_RenderTexture;
pub const RenderTexture2D = RenderTexture;
pub const struct_NPatchInfo = extern struct {
    source: Rectangle,
    left: c_int,
    top: c_int,
    right: c_int,
    bottom: c_int,
    layout: c_int,
};
pub const NPatchInfo = struct_NPatchInfo;
pub const struct_GlyphInfo = extern struct {
    value: c_int,
    offsetX: c_int,
    offsetY: c_int,
    advanceX: c_int,
    image: Image,
};
pub const GlyphInfo = struct_GlyphInfo;
pub const struct_Font = extern struct {
    baseSize: c_int,
    glyphCount: c_int,
    glyphPadding: c_int,
    texture: Texture2D,
    recs: [*c]Rectangle,
    glyphs: [*c]GlyphInfo,
};
pub const Font = struct_Font;
pub const struct_Camera3D = extern struct {
    position: Vector3,
    target: Vector3,
    up: Vector3,
    fovy: f32,
    projection: c_int,
};
pub const Camera3D = struct_Camera3D;
pub const Camera = Camera3D;
pub const struct_Camera2D = extern struct {
    offset: Vector2,
    target: Vector2,
    rotation: f32,
    zoom: f32,
};
pub const Camera2D = struct_Camera2D;
pub const struct_Mesh = extern struct {
    vertexCount: c_int,
    triangleCount: c_int,
    vertices: [*c]f32,
    texcoords: [*c]f32,
    texcoords2: [*c]f32,
    normals: [*c]f32,
    tangents: [*c]f32,
    colors: [*c]u8,
    indices: [*c]c_ushort,
    animVertices: [*c]f32,
    animNormals: [*c]f32,
    boneIds: [*c]u8,
    boneWeights: [*c]f32,
    vaoId: c_uint,
    vboId: [*c]c_uint,
};
pub const Mesh = struct_Mesh;
pub const struct_Shader = extern struct {
    id: c_uint,
    locs: [*c]c_int,
};
pub const Shader = struct_Shader;
pub const struct_MaterialMap = extern struct {
    texture: Texture2D,
    color: Color,
    value: f32,
};
pub const MaterialMap = struct_MaterialMap;
pub const struct_Material = extern struct {
    shader: Shader,
    maps: [*c]MaterialMap,
    params: [4]f32,
};
pub const Material = struct_Material;
pub const struct_Transform = extern struct {
    translation: Vector3,
    rotation: Quaternion,
    scale: Vector3,
};
pub const Transform = struct_Transform;
pub const struct_BoneInfo = extern struct {
    name: [32]u8,
    parent: c_int,
};
pub const BoneInfo = struct_BoneInfo;
pub const struct_Model = extern struct {
    transform: Matrix,
    meshCount: c_int,
    materialCount: c_int,
    meshes: [*c]Mesh,
    materials: [*c]Material,
    meshMaterial: [*c]c_int,
    boneCount: c_int,
    bones: [*c]BoneInfo,
    bindPose: [*c]Transform,
};
pub const Model = struct_Model;
pub const struct_ModelAnimation = extern struct {
    boneCount: c_int,
    frameCount: c_int,
    bones: [*c]BoneInfo,
    framePoses: [*c][*c]Transform,
    name: [32]u8,
};
pub const ModelAnimation = struct_ModelAnimation;
pub const struct_Ray = extern struct {
    position: Vector3,
    direction: Vector3,
};
pub const Ray = struct_Ray;
pub const struct_RayCollision = extern struct {
    hit: bool,
    distance: f32,
    point: Vector3,
    normal: Vector3,
};
pub const RayCollision = struct_RayCollision;
pub const struct_BoundingBox = extern struct {
    min: Vector3,
    max: Vector3,
};
pub const BoundingBox = struct_BoundingBox;
pub const struct_Wave = extern struct {
    frameCount: c_uint,
    sampleRate: c_uint,
    sampleSize: c_uint,
    channels: c_uint,
    data: ?*anyopaque,
};
pub const Wave = struct_Wave;
pub const struct_rAudioBuffer = opaque {};
pub const rAudioBuffer = struct_rAudioBuffer;
pub const struct_rAudioProcessor = opaque {};
pub const rAudioProcessor = struct_rAudioProcessor;
pub const struct_AudioStream = extern struct {
    buffer: ?*rAudioBuffer,
    processor: ?*rAudioProcessor,
    sampleRate: c_uint,
    sampleSize: c_uint,
    channels: c_uint,
};
pub const AudioStream = struct_AudioStream;
pub const struct_Sound = extern struct {
    stream: AudioStream,
    frameCount: c_uint,
};
pub const Sound = struct_Sound;
pub const struct_Music = extern struct {
    stream: AudioStream,
    frameCount: c_uint,
    looping: bool,
    ctxType: c_int,
    ctxData: ?*anyopaque,
};
pub const Music = struct_Music;
pub const struct_VrDeviceInfo = extern struct {
    hResolution: c_int,
    vResolution: c_int,
    hScreenSize: f32,
    vScreenSize: f32,
    vScreenCenter: f32,
    eyeToScreenDistance: f32,
    lensSeparationDistance: f32,
    interpupillaryDistance: f32,
    lensDistortionValues: [4]f32,
    chromaAbCorrection: [4]f32,
};
pub const VrDeviceInfo = struct_VrDeviceInfo;
pub const struct_VrStereoConfig = extern struct {
    projection: [2]Matrix,
    viewOffset: [2]Matrix,
    leftLensCenter: [2]f32,
    rightLensCenter: [2]f32,
    leftScreenCenter: [2]f32,
    rightScreenCenter: [2]f32,
    scale: [2]f32,
    scaleIn: [2]f32,
};
pub const VrStereoConfig = struct_VrStereoConfig;
pub const struct_FilePathList = extern struct {
    capacity: c_uint,
    count: c_uint,
    paths: [*c][*c]u8,
};
pub const FilePathList = struct_FilePathList;
pub const FLAG_VSYNC_HINT: c_int = 64;
pub const FLAG_FULLSCREEN_MODE: c_int = 2;
pub const FLAG_WINDOW_RESIZABLE: c_int = 4;
pub const FLAG_WINDOW_UNDECORATED: c_int = 8;
pub const FLAG_WINDOW_HIDDEN: c_int = 128;
pub const FLAG_WINDOW_MINIMIZED: c_int = 512;
pub const FLAG_WINDOW_MAXIMIZED: c_int = 1024;
pub const FLAG_WINDOW_UNFOCUSED: c_int = 2048;
pub const FLAG_WINDOW_TOPMOST: c_int = 4096;
pub const FLAG_WINDOW_ALWAYS_RUN: c_int = 256;
pub const FLAG_WINDOW_TRANSPARENT: c_int = 16;
pub const FLAG_WINDOW_HIGHDPI: c_int = 8192;
pub const FLAG_WINDOW_MOUSE_PASSTHROUGH: c_int = 16384;
pub const FLAG_BORDERLESS_WINDOWED_MODE: c_int = 32768;
pub const FLAG_MSAA_4X_HINT: c_int = 32;
pub const FLAG_INTERLACED_HINT: c_int = 65536;
pub const ConfigFlags = c_uint;
pub const LOG_ALL: c_int = 0;
pub const LOG_TRACE: c_int = 1;
pub const LOG_DEBUG: c_int = 2;
pub const LOG_INFO: c_int = 3;
pub const LOG_WARNING: c_int = 4;
pub const LOG_ERROR: c_int = 5;
pub const LOG_FATAL: c_int = 6;
pub const LOG_NONE: c_int = 7;
pub const TraceLogLevel = c_uint;
pub const KEY_NULL: c_int = 0;
pub const KEY_APOSTROPHE: c_int = 39;
pub const KEY_COMMA: c_int = 44;
pub const KEY_MINUS: c_int = 45;
pub const KEY_PERIOD: c_int = 46;
pub const KEY_SLASH: c_int = 47;
pub const KEY_ZERO: c_int = 48;
pub const KEY_ONE: c_int = 49;
pub const KEY_TWO: c_int = 50;
pub const KEY_THREE: c_int = 51;
pub const KEY_FOUR: c_int = 52;
pub const KEY_FIVE: c_int = 53;
pub const KEY_SIX: c_int = 54;
pub const KEY_SEVEN: c_int = 55;
pub const KEY_EIGHT: c_int = 56;
pub const KEY_NINE: c_int = 57;
pub const KEY_SEMICOLON: c_int = 59;
pub const KEY_EQUAL: c_int = 61;
pub const KEY_A: c_int = 65;
pub const KEY_B: c_int = 66;
pub const KEY_C: c_int = 67;
pub const KEY_D: c_int = 68;
pub const KEY_E: c_int = 69;
pub const KEY_F: c_int = 70;
pub const KEY_G: c_int = 71;
pub const KEY_H: c_int = 72;
pub const KEY_I: c_int = 73;
pub const KEY_J: c_int = 74;
pub const KEY_K: c_int = 75;
pub const KEY_L: c_int = 76;
pub const KEY_M: c_int = 77;
pub const KEY_N: c_int = 78;
pub const KEY_O: c_int = 79;
pub const KEY_P: c_int = 80;
pub const KEY_Q: c_int = 81;
pub const KEY_R: c_int = 82;
pub const KEY_S: c_int = 83;
pub const KEY_T: c_int = 84;
pub const KEY_U: c_int = 85;
pub const KEY_V: c_int = 86;
pub const KEY_W: c_int = 87;
pub const KEY_X: c_int = 88;
pub const KEY_Y: c_int = 89;
pub const KEY_Z: c_int = 90;
pub const KEY_LEFT_BRACKET: c_int = 91;
pub const KEY_BACKSLASH: c_int = 92;
pub const KEY_RIGHT_BRACKET: c_int = 93;
pub const KEY_GRAVE: c_int = 96;
pub const KEY_SPACE: c_int = 32;
pub const KEY_ESCAPE: c_int = 256;
pub const KEY_ENTER: c_int = 257;
pub const KEY_TAB: c_int = 258;
pub const KEY_BACKSPACE: c_int = 259;
pub const KEY_INSERT: c_int = 260;
pub const KEY_DELETE: c_int = 261;
pub const KEY_RIGHT: c_int = 262;
pub const KEY_LEFT: c_int = 263;
pub const KEY_DOWN: c_int = 264;
pub const KEY_UP: c_int = 265;
pub const KEY_PAGE_UP: c_int = 266;
pub const KEY_PAGE_DOWN: c_int = 267;
pub const KEY_HOME: c_int = 268;
pub const KEY_END: c_int = 269;
pub const KEY_CAPS_LOCK: c_int = 280;
pub const KEY_SCROLL_LOCK: c_int = 281;
pub const KEY_NUM_LOCK: c_int = 282;
pub const KEY_PRINT_SCREEN: c_int = 283;
pub const KEY_PAUSE: c_int = 284;
pub const KEY_F1: c_int = 290;
pub const KEY_F2: c_int = 291;
pub const KEY_F3: c_int = 292;
pub const KEY_F4: c_int = 293;
pub const KEY_F5: c_int = 294;
pub const KEY_F6: c_int = 295;
pub const KEY_F7: c_int = 296;
pub const KEY_F8: c_int = 297;
pub const KEY_F9: c_int = 298;
pub const KEY_F10: c_int = 299;
pub const KEY_F11: c_int = 300;
pub const KEY_F12: c_int = 301;
pub const KEY_LEFT_SHIFT: c_int = 340;
pub const KEY_LEFT_CONTROL: c_int = 341;
pub const KEY_LEFT_ALT: c_int = 342;
pub const KEY_LEFT_SUPER: c_int = 343;
pub const KEY_RIGHT_SHIFT: c_int = 344;
pub const KEY_RIGHT_CONTROL: c_int = 345;
pub const KEY_RIGHT_ALT: c_int = 346;
pub const KEY_RIGHT_SUPER: c_int = 347;
pub const KEY_KB_MENU: c_int = 348;
pub const KEY_KP_0: c_int = 320;
pub const KEY_KP_1: c_int = 321;
pub const KEY_KP_2: c_int = 322;
pub const KEY_KP_3: c_int = 323;
pub const KEY_KP_4: c_int = 324;
pub const KEY_KP_5: c_int = 325;
pub const KEY_KP_6: c_int = 326;
pub const KEY_KP_7: c_int = 327;
pub const KEY_KP_8: c_int = 328;
pub const KEY_KP_9: c_int = 329;
pub const KEY_KP_DECIMAL: c_int = 330;
pub const KEY_KP_DIVIDE: c_int = 331;
pub const KEY_KP_MULTIPLY: c_int = 332;
pub const KEY_KP_SUBTRACT: c_int = 333;
pub const KEY_KP_ADD: c_int = 334;
pub const KEY_KP_ENTER: c_int = 335;
pub const KEY_KP_EQUAL: c_int = 336;
pub const KEY_BACK: c_int = 4;
pub const KEY_MENU: c_int = 82;
pub const KEY_VOLUME_UP: c_int = 24;
pub const KEY_VOLUME_DOWN: c_int = 25;
pub const KeyboardKey = c_uint;
pub const MOUSE_BUTTON_LEFT: c_int = 0;
pub const MOUSE_BUTTON_RIGHT: c_int = 1;
pub const MOUSE_BUTTON_MIDDLE: c_int = 2;
pub const MOUSE_BUTTON_SIDE: c_int = 3;
pub const MOUSE_BUTTON_EXTRA: c_int = 4;
pub const MOUSE_BUTTON_FORWARD: c_int = 5;
pub const MOUSE_BUTTON_BACK: c_int = 6;
pub const MouseButton = c_uint;
pub const MOUSE_CURSOR_DEFAULT: c_int = 0;
pub const MOUSE_CURSOR_ARROW: c_int = 1;
pub const MOUSE_CURSOR_IBEAM: c_int = 2;
pub const MOUSE_CURSOR_CROSSHAIR: c_int = 3;
pub const MOUSE_CURSOR_POINTING_HAND: c_int = 4;
pub const MOUSE_CURSOR_RESIZE_EW: c_int = 5;
pub const MOUSE_CURSOR_RESIZE_NS: c_int = 6;
pub const MOUSE_CURSOR_RESIZE_NWSE: c_int = 7;
pub const MOUSE_CURSOR_RESIZE_NESW: c_int = 8;
pub const MOUSE_CURSOR_RESIZE_ALL: c_int = 9;
pub const MOUSE_CURSOR_NOT_ALLOWED: c_int = 10;
pub const MouseCursor = c_uint;
pub const GAMEPAD_BUTTON_UNKNOWN: c_int = 0;
pub const GAMEPAD_BUTTON_LEFT_FACE_UP: c_int = 1;
pub const GAMEPAD_BUTTON_LEFT_FACE_RIGHT: c_int = 2;
pub const GAMEPAD_BUTTON_LEFT_FACE_DOWN: c_int = 3;
pub const GAMEPAD_BUTTON_LEFT_FACE_LEFT: c_int = 4;
pub const GAMEPAD_BUTTON_RIGHT_FACE_UP: c_int = 5;
pub const GAMEPAD_BUTTON_RIGHT_FACE_RIGHT: c_int = 6;
pub const GAMEPAD_BUTTON_RIGHT_FACE_DOWN: c_int = 7;
pub const GAMEPAD_BUTTON_RIGHT_FACE_LEFT: c_int = 8;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_1: c_int = 9;
pub const GAMEPAD_BUTTON_LEFT_TRIGGER_2: c_int = 10;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_1: c_int = 11;
pub const GAMEPAD_BUTTON_RIGHT_TRIGGER_2: c_int = 12;
pub const GAMEPAD_BUTTON_MIDDLE_LEFT: c_int = 13;
pub const GAMEPAD_BUTTON_MIDDLE: c_int = 14;
pub const GAMEPAD_BUTTON_MIDDLE_RIGHT: c_int = 15;
pub const GAMEPAD_BUTTON_LEFT_THUMB: c_int = 16;
pub const GAMEPAD_BUTTON_RIGHT_THUMB: c_int = 17;
pub const GamepadButton = c_uint;
pub const GAMEPAD_AXIS_LEFT_X: c_int = 0;
pub const GAMEPAD_AXIS_LEFT_Y: c_int = 1;
pub const GAMEPAD_AXIS_RIGHT_X: c_int = 2;
pub const GAMEPAD_AXIS_RIGHT_Y: c_int = 3;
pub const GAMEPAD_AXIS_LEFT_TRIGGER: c_int = 4;
pub const GAMEPAD_AXIS_RIGHT_TRIGGER: c_int = 5;
pub const GamepadAxis = c_uint;
pub const MATERIAL_MAP_ALBEDO: c_int = 0;
pub const MATERIAL_MAP_METALNESS: c_int = 1;
pub const MATERIAL_MAP_NORMAL: c_int = 2;
pub const MATERIAL_MAP_ROUGHNESS: c_int = 3;
pub const MATERIAL_MAP_OCCLUSION: c_int = 4;
pub const MATERIAL_MAP_EMISSION: c_int = 5;
pub const MATERIAL_MAP_HEIGHT: c_int = 6;
pub const MATERIAL_MAP_CUBEMAP: c_int = 7;
pub const MATERIAL_MAP_IRRADIANCE: c_int = 8;
pub const MATERIAL_MAP_PREFILTER: c_int = 9;
pub const MATERIAL_MAP_BRDF: c_int = 10;
pub const MaterialMapIndex = c_uint;
pub const SHADER_LOC_VERTEX_POSITION: c_int = 0;
pub const SHADER_LOC_VERTEX_TEXCOORD01: c_int = 1;
pub const SHADER_LOC_VERTEX_TEXCOORD02: c_int = 2;
pub const SHADER_LOC_VERTEX_NORMAL: c_int = 3;
pub const SHADER_LOC_VERTEX_TANGENT: c_int = 4;
pub const SHADER_LOC_VERTEX_COLOR: c_int = 5;
pub const SHADER_LOC_MATRIX_MVP: c_int = 6;
pub const SHADER_LOC_MATRIX_VIEW: c_int = 7;
pub const SHADER_LOC_MATRIX_PROJECTION: c_int = 8;
pub const SHADER_LOC_MATRIX_MODEL: c_int = 9;
pub const SHADER_LOC_MATRIX_NORMAL: c_int = 10;
pub const SHADER_LOC_VECTOR_VIEW: c_int = 11;
pub const SHADER_LOC_COLOR_DIFFUSE: c_int = 12;
pub const SHADER_LOC_COLOR_SPECULAR: c_int = 13;
pub const SHADER_LOC_COLOR_AMBIENT: c_int = 14;
pub const SHADER_LOC_MAP_ALBEDO: c_int = 15;
pub const SHADER_LOC_MAP_METALNESS: c_int = 16;
pub const SHADER_LOC_MAP_NORMAL: c_int = 17;
pub const SHADER_LOC_MAP_ROUGHNESS: c_int = 18;
pub const SHADER_LOC_MAP_OCCLUSION: c_int = 19;
pub const SHADER_LOC_MAP_EMISSION: c_int = 20;
pub const SHADER_LOC_MAP_HEIGHT: c_int = 21;
pub const SHADER_LOC_MAP_CUBEMAP: c_int = 22;
pub const SHADER_LOC_MAP_IRRADIANCE: c_int = 23;
pub const SHADER_LOC_MAP_PREFILTER: c_int = 24;
pub const SHADER_LOC_MAP_BRDF: c_int = 25;
pub const ShaderLocationIndex = c_uint;
pub const SHADER_UNIFORM_FLOAT: c_int = 0;
pub const SHADER_UNIFORM_VEC2: c_int = 1;
pub const SHADER_UNIFORM_VEC3: c_int = 2;
pub const SHADER_UNIFORM_VEC4: c_int = 3;
pub const SHADER_UNIFORM_INT: c_int = 4;
pub const SHADER_UNIFORM_IVEC2: c_int = 5;
pub const SHADER_UNIFORM_IVEC3: c_int = 6;
pub const SHADER_UNIFORM_IVEC4: c_int = 7;
pub const SHADER_UNIFORM_SAMPLER2D: c_int = 8;
pub const ShaderUniformDataType = c_uint;
pub const SHADER_ATTRIB_FLOAT: c_int = 0;
pub const SHADER_ATTRIB_VEC2: c_int = 1;
pub const SHADER_ATTRIB_VEC3: c_int = 2;
pub const SHADER_ATTRIB_VEC4: c_int = 3;
pub const ShaderAttributeDataType = c_uint;
pub const PIXELFORMAT_UNCOMPRESSED_GRAYSCALE: c_int = 1;
pub const PIXELFORMAT_UNCOMPRESSED_GRAY_ALPHA: c_int = 2;
pub const PIXELFORMAT_UNCOMPRESSED_R5G6B5: c_int = 3;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8: c_int = 4;
pub const PIXELFORMAT_UNCOMPRESSED_R5G5B5A1: c_int = 5;
pub const PIXELFORMAT_UNCOMPRESSED_R4G4B4A4: c_int = 6;
pub const PIXELFORMAT_UNCOMPRESSED_R8G8B8A8: c_int = 7;
pub const PIXELFORMAT_UNCOMPRESSED_R32: c_int = 8;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32: c_int = 9;
pub const PIXELFORMAT_UNCOMPRESSED_R32G32B32A32: c_int = 10;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGB: c_int = 11;
pub const PIXELFORMAT_COMPRESSED_DXT1_RGBA: c_int = 12;
pub const PIXELFORMAT_COMPRESSED_DXT3_RGBA: c_int = 13;
pub const PIXELFORMAT_COMPRESSED_DXT5_RGBA: c_int = 14;
pub const PIXELFORMAT_COMPRESSED_ETC1_RGB: c_int = 15;
pub const PIXELFORMAT_COMPRESSED_ETC2_RGB: c_int = 16;
pub const PIXELFORMAT_COMPRESSED_ETC2_EAC_RGBA: c_int = 17;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGB: c_int = 18;
pub const PIXELFORMAT_COMPRESSED_PVRT_RGBA: c_int = 19;
pub const PIXELFORMAT_COMPRESSED_ASTC_4x4_RGBA: c_int = 20;
pub const PIXELFORMAT_COMPRESSED_ASTC_8x8_RGBA: c_int = 21;
pub const PixelFormat = c_uint;
pub const TEXTURE_FILTER_POINT: c_int = 0;
pub const TEXTURE_FILTER_BILINEAR: c_int = 1;
pub const TEXTURE_FILTER_TRILINEAR: c_int = 2;
pub const TEXTURE_FILTER_ANISOTROPIC_4X: c_int = 3;
pub const TEXTURE_FILTER_ANISOTROPIC_8X: c_int = 4;
pub const TEXTURE_FILTER_ANISOTROPIC_16X: c_int = 5;
pub const TextureFilter = c_uint;
pub const TEXTURE_WRAP_REPEAT: c_int = 0;
pub const TEXTURE_WRAP_CLAMP: c_int = 1;
pub const TEXTURE_WRAP_MIRROR_REPEAT: c_int = 2;
pub const TEXTURE_WRAP_MIRROR_CLAMP: c_int = 3;
pub const TextureWrap = c_uint;
pub const CUBEMAP_LAYOUT_AUTO_DETECT: c_int = 0;
pub const CUBEMAP_LAYOUT_LINE_VERTICAL: c_int = 1;
pub const CUBEMAP_LAYOUT_LINE_HORIZONTAL: c_int = 2;
pub const CUBEMAP_LAYOUT_CROSS_THREE_BY_FOUR: c_int = 3;
pub const CUBEMAP_LAYOUT_CROSS_FOUR_BY_THREE: c_int = 4;
pub const CUBEMAP_LAYOUT_PANORAMA: c_int = 5;
pub const CubemapLayout = c_uint;
pub const FONT_DEFAULT: c_int = 0;
pub const FONT_BITMAP: c_int = 1;
pub const FONT_SDF: c_int = 2;
pub const FontType = c_uint;
pub const BLEND_ALPHA: c_int = 0;
pub const BLEND_ADDITIVE: c_int = 1;
pub const BLEND_MULTIPLIED: c_int = 2;
pub const BLEND_ADD_COLORS: c_int = 3;
pub const BLEND_SUBTRACT_COLORS: c_int = 4;
pub const BLEND_ALPHA_PREMULTIPLY: c_int = 5;
pub const BLEND_CUSTOM: c_int = 6;
pub const BLEND_CUSTOM_SEPARATE: c_int = 7;
pub const BlendMode = c_uint;
pub const GESTURE_NONE: c_int = 0;
pub const GESTURE_TAP: c_int = 1;
pub const GESTURE_DOUBLETAP: c_int = 2;
pub const GESTURE_HOLD: c_int = 4;
pub const GESTURE_DRAG: c_int = 8;
pub const GESTURE_SWIPE_RIGHT: c_int = 16;
pub const GESTURE_SWIPE_LEFT: c_int = 32;
pub const GESTURE_SWIPE_UP: c_int = 64;
pub const GESTURE_SWIPE_DOWN: c_int = 128;
pub const GESTURE_PINCH_IN: c_int = 256;
pub const GESTURE_PINCH_OUT: c_int = 512;
pub const Gesture = c_uint;
pub const CAMERA_CUSTOM: c_int = 0;
pub const CAMERA_FREE: c_int = 1;
pub const CAMERA_ORBITAL: c_int = 2;
pub const CAMERA_FIRST_PERSON: c_int = 3;
pub const CAMERA_THIRD_PERSON: c_int = 4;
pub const CameraMode = c_uint;
pub const CAMERA_PERSPECTIVE: c_int = 0;
pub const CAMERA_ORTHOGRAPHIC: c_int = 1;
pub const CameraProjection = c_uint;
pub const NPATCH_NINE_PATCH: c_int = 0;
pub const NPATCH_THREE_PATCH_VERTICAL: c_int = 1;
pub const NPATCH_THREE_PATCH_HORIZONTAL: c_int = 2;
pub const NPatchLayout = c_uint;
pub const TraceLogCallback = ?*const fn (c_int, [*c]const u8, va_list) callconv(.C) void;
pub const LoadFileDataCallback = ?*const fn ([*c]const u8, [*c]c_uint) callconv(.C) [*c]u8;
pub const SaveFileDataCallback = ?*const fn ([*c]const u8, ?*anyopaque, c_uint) callconv(.C) bool;
pub const LoadFileTextCallback = ?*const fn ([*c]const u8) callconv(.C) [*c]u8;
pub const SaveFileTextCallback = ?*const fn ([*c]const u8, [*c]u8) callconv(.C) bool;
pub extern fn InitWindow(width: c_int, height: c_int, title: [*c]const u8) void;
pub extern fn WindowShouldClose() bool;
pub extern fn CloseWindow() void;
pub extern fn IsWindowReady() bool;
pub extern fn IsWindowFullscreen() bool;
pub extern fn IsWindowHidden() bool;
pub extern fn IsWindowMinimized() bool;
pub extern fn IsWindowMaximized() bool;
pub extern fn IsWindowFocused() bool;
pub extern fn IsWindowResized() bool;
pub extern fn IsWindowState(flag: c_uint) bool;
pub extern fn SetWindowState(flags: c_uint) void;
pub extern fn ClearWindowState(flags: c_uint) void;
pub extern fn ToggleFullscreen() void;
pub extern fn ToggleBorderlessWindowed() void;
pub extern fn MaximizeWindow() void;
pub extern fn MinimizeWindow() void;
pub extern fn RestoreWindow() void;
pub extern fn SetWindowIcon(image: Image) void;
pub extern fn SetWindowIcons(images: [*c]Image, count: c_int) void;
pub extern fn SetWindowTitle(title: [*c]const u8) void;
pub extern fn SetWindowPosition(x: c_int, y: c_int) void;
pub extern fn SetWindowMonitor(monitor: c_int) void;
pub extern fn SetWindowMinSize(width: c_int, height: c_int) void;
pub extern fn SetWindowSize(width: c_int, height: c_int) void;
pub extern fn SetWindowOpacity(opacity: f32) void;
pub extern fn SetWindowFocused() void;
pub extern fn GetWindowHandle() ?*anyopaque;
pub extern fn GetScreenWidth() c_int;
pub extern fn GetScreenHeight() c_int;
pub extern fn GetRenderWidth() c_int;
pub extern fn GetRenderHeight() c_int;
pub extern fn GetMonitorCount() c_int;
pub extern fn GetCurrentMonitor() c_int;
pub extern fn GetMonitorPosition(monitor: c_int) Vector2;
pub extern fn GetMonitorWidth(monitor: c_int) c_int;
pub extern fn GetMonitorHeight(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalWidth(monitor: c_int) c_int;
pub extern fn GetMonitorPhysicalHeight(monitor: c_int) c_int;
pub extern fn GetMonitorRefreshRate(monitor: c_int) c_int;
pub extern fn GetWindowPosition() Vector2;
pub extern fn GetWindowScaleDPI() Vector2;
pub extern fn GetMonitorName(monitor: c_int) [*c]const u8;
pub extern fn SetClipboardText(text: [*c]const u8) void;
pub extern fn GetClipboardText() [*c]const u8;
pub extern fn EnableEventWaiting() void;
pub extern fn DisableEventWaiting() void;
pub extern fn SwapScreenBuffer() void;
pub extern fn PollInputEvents() void;
pub extern fn WaitTime(seconds: f64) void;
pub extern fn ShowCursor() void;
pub extern fn HideCursor() void;
pub extern fn IsCursorHidden() bool;
pub extern fn EnableCursor() void;
pub extern fn DisableCursor() void;
pub extern fn IsCursorOnScreen() bool;
pub extern fn ClearBackground(color: Color) void;
pub extern fn BeginDrawing() void;
pub extern fn EndDrawing() void;
pub extern fn BeginMode2D(camera: Camera2D) void;
pub extern fn EndMode2D() void;
pub extern fn BeginMode3D(camera: Camera3D) void;
pub extern fn EndMode3D() void;
pub extern fn BeginTextureMode(target: RenderTexture2D) void;
pub extern fn EndTextureMode() void;
pub extern fn BeginShaderMode(shader: Shader) void;
pub extern fn EndShaderMode() void;
pub extern fn BeginBlendMode(mode: c_int) void;
pub extern fn EndBlendMode() void;
pub extern fn BeginScissorMode(x: c_int, y: c_int, width: c_int, height: c_int) void;
pub extern fn EndScissorMode() void;
pub extern fn BeginVrStereoMode(config: VrStereoConfig) void;
pub extern fn EndVrStereoMode() void;
pub extern fn LoadVrStereoConfig(device: VrDeviceInfo) VrStereoConfig;
pub extern fn UnloadVrStereoConfig(config: VrStereoConfig) void;
pub extern fn LoadShader(vsFileName: [*c]const u8, fsFileName: [*c]const u8) Shader;
pub extern fn LoadShaderFromMemory(vsCode: [*c]const u8, fsCode: [*c]const u8) Shader;
pub extern fn IsShaderReady(shader: Shader) bool;
pub extern fn GetShaderLocation(shader: Shader, uniformName: [*c]const u8) c_int;
pub extern fn GetShaderLocationAttrib(shader: Shader, attribName: [*c]const u8) c_int;
pub extern fn SetShaderValue(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int) void;
pub extern fn SetShaderValueV(shader: Shader, locIndex: c_int, value: ?*const anyopaque, uniformType: c_int, count: c_int) void;
pub extern fn SetShaderValueMatrix(shader: Shader, locIndex: c_int, mat: Matrix) void;
pub extern fn SetShaderValueTexture(shader: Shader, locIndex: c_int, texture: Texture2D) void;
pub extern fn UnloadShader(shader: Shader) void;
pub extern fn GetMouseRay(mousePosition: Vector2, camera: Camera) Ray;
pub extern fn GetCameraMatrix(camera: Camera) Matrix;
pub extern fn GetCameraMatrix2D(camera: Camera2D) Matrix;
pub extern fn GetWorldToScreen(position: Vector3, camera: Camera) Vector2;
pub extern fn GetScreenToWorld2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn GetWorldToScreenEx(position: Vector3, camera: Camera, width: c_int, height: c_int) Vector2;
pub extern fn GetWorldToScreen2D(position: Vector2, camera: Camera2D) Vector2;
pub extern fn SetTargetFPS(fps: c_int) void;
pub extern fn GetFPS() c_int;
pub extern fn GetFrameTime() f32;
pub extern fn GetTime() f64;
pub extern fn GetRandomValue(min: c_int, max: c_int) c_int;
pub extern fn SetRandomSeed(seed: c_uint) void;
pub extern fn TakeScreenshot(fileName: [*c]const u8) void;
pub extern fn SetConfigFlags(flags: c_uint) void;
pub extern fn TraceLog(logLevel: c_int, text: [*c]const u8, ...) void;
pub extern fn SetTraceLogLevel(logLevel: c_int) void;
pub extern fn MemAlloc(size: c_uint) ?*anyopaque;
pub extern fn MemRealloc(ptr: ?*anyopaque, size: c_uint) ?*anyopaque;
pub extern fn MemFree(ptr: ?*anyopaque) void;
pub extern fn OpenURL(url: [*c]const u8) void;
pub extern fn SetTraceLogCallback(callback: TraceLogCallback) void;
pub extern fn SetLoadFileDataCallback(callback: LoadFileDataCallback) void;
pub extern fn SetSaveFileDataCallback(callback: SaveFileDataCallback) void;
pub extern fn SetLoadFileTextCallback(callback: LoadFileTextCallback) void;
pub extern fn SetSaveFileTextCallback(callback: SaveFileTextCallback) void;
pub extern fn LoadFileData(fileName: [*c]const u8, bytesRead: [*c]c_uint) [*c]u8;
pub extern fn UnloadFileData(data: [*c]u8) void;
pub extern fn SaveFileData(fileName: [*c]const u8, data: ?*anyopaque, bytesToWrite: c_uint) bool;
pub extern fn ExportDataAsCode(data: [*c]const u8, size: c_uint, fileName: [*c]const u8) bool;
pub extern fn LoadFileText(fileName: [*c]const u8) [*c]u8;
pub extern fn UnloadFileText(text: [*c]u8) void;
pub extern fn SaveFileText(fileName: [*c]const u8, text: [*c]u8) bool;
pub extern fn FileExists(fileName: [*c]const u8) bool;
pub extern fn DirectoryExists(dirPath: [*c]const u8) bool;
pub extern fn IsFileExtension(fileName: [*c]const u8, ext: [*c]const u8) bool;
pub extern fn GetFileLength(fileName: [*c]const u8) c_int;
pub extern fn GetFileExtension(fileName: [*c]const u8) [*c]const u8;
pub extern fn GetFileName(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetFileNameWithoutExt(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetDirectoryPath(filePath: [*c]const u8) [*c]const u8;
pub extern fn GetPrevDirectoryPath(dirPath: [*c]const u8) [*c]const u8;
pub extern fn GetWorkingDirectory() [*c]const u8;
pub extern fn GetApplicationDirectory() [*c]const u8;
pub extern fn ChangeDirectory(dir: [*c]const u8) bool;
pub extern fn IsPathFile(path: [*c]const u8) bool;
pub extern fn LoadDirectoryFiles(dirPath: [*c]const u8) FilePathList;
pub extern fn LoadDirectoryFilesEx(basePath: [*c]const u8, filter: [*c]const u8, scanSubdirs: bool) FilePathList;
pub extern fn UnloadDirectoryFiles(files: FilePathList) void;
pub extern fn IsFileDropped() bool;
pub extern fn LoadDroppedFiles() FilePathList;
pub extern fn UnloadDroppedFiles(files: FilePathList) void;
pub extern fn GetFileModTime(fileName: [*c]const u8) c_long;
pub extern fn CompressData(data: [*c]const u8, dataSize: c_int, compDataSize: [*c]c_int) [*c]u8;
pub extern fn DecompressData(compData: [*c]const u8, compDataSize: c_int, dataSize: [*c]c_int) [*c]u8;
pub extern fn EncodeDataBase64(data: [*c]const u8, dataSize: c_int, outputSize: [*c]c_int) [*c]u8;
pub extern fn DecodeDataBase64(data: [*c]const u8, outputSize: [*c]c_int) [*c]u8;
pub extern fn IsKeyPressed(key: c_int) bool;
pub extern fn IsKeyDown(key: c_int) bool;
pub extern fn IsKeyReleased(key: c_int) bool;
pub extern fn IsKeyUp(key: c_int) bool;
pub extern fn SetExitKey(key: c_int) void;
pub extern fn GetKeyPressed() c_int;
pub extern fn GetCharPressed() c_int;
pub extern fn IsGamepadAvailable(gamepad: c_int) bool;
pub extern fn GetGamepadName(gamepad: c_int) [*c]const u8;
pub extern fn IsGamepadButtonPressed(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonDown(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonReleased(gamepad: c_int, button: c_int) bool;
pub extern fn IsGamepadButtonUp(gamepad: c_int, button: c_int) bool;
pub extern fn GetGamepadButtonPressed() c_int;
pub extern fn GetGamepadAxisCount(gamepad: c_int) c_int;
pub extern fn GetGamepadAxisMovement(gamepad: c_int, axis: c_int) f32;
pub extern fn SetGamepadMappings(mappings: [*c]const u8) c_int;
pub extern fn IsMouseButtonPressed(button: c_int) bool;
pub extern fn IsMouseButtonDown(button: c_int) bool;
pub extern fn IsMouseButtonReleased(button: c_int) bool;
pub extern fn IsMouseButtonUp(button: c_int) bool;
pub extern fn GetMouseX() c_int;
pub extern fn GetMouseY() c_int;
pub extern fn GetMousePosition() Vector2;
pub extern fn GetMouseDelta() Vector2;
pub extern fn SetMousePosition(x: c_int, y: c_int) void;
pub extern fn SetMouseOffset(offsetX: c_int, offsetY: c_int) void;
pub extern fn SetMouseScale(scaleX: f32, scaleY: f32) void;
pub extern fn GetMouseWheelMove() f32;
pub extern fn GetMouseWheelMoveV() Vector2;
pub extern fn SetMouseCursor(cursor: c_int) void;
pub extern fn GetTouchX() c_int;
pub extern fn GetTouchY() c_int;
pub extern fn GetTouchPosition(index: c_int) Vector2;
pub extern fn GetTouchPointId(index: c_int) c_int;
pub extern fn GetTouchPointCount() c_int;
pub extern fn SetGesturesEnabled(flags: c_uint) void;
pub extern fn IsGestureDetected(gesture: c_int) bool;
pub extern fn GetGestureDetected() c_int;
pub extern fn GetGestureHoldDuration() f32;
pub extern fn GetGestureDragVector() Vector2;
pub extern fn GetGestureDragAngle() f32;
pub extern fn GetGesturePinchVector() Vector2;
pub extern fn GetGesturePinchAngle() f32;
pub extern fn UpdateCamera(camera: [*c]Camera, mode: c_int) void;
pub extern fn UpdateCameraPro(camera: [*c]Camera, movement: Vector3, rotation: Vector3, zoom: f32) void;
pub extern fn SetShapesTexture(texture: Texture2D, source: Rectangle) void;
pub extern fn DrawPixel(posX: c_int, posY: c_int, color: Color) void;
pub extern fn DrawPixelV(position: Vector2, color: Color) void;
pub extern fn DrawLine(startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn DrawLineV(startPos: Vector2, endPos: Vector2, color: Color) void;
pub extern fn DrawLineEx(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezier(startPos: Vector2, endPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezierQuad(startPos: Vector2, endPos: Vector2, controlPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineBezierCubic(startPos: Vector2, endPos: Vector2, startControlPos: Vector2, endControlPos: Vector2, thick: f32, color: Color) void;
pub extern fn DrawLineStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawCircle(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawCircleSector(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleSectorLines(center: Vector2, radius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawCircleGradient(centerX: c_int, centerY: c_int, radius: f32, color1: Color, color2: Color) void;
pub extern fn DrawCircleV(center: Vector2, radius: f32, color: Color) void;
pub extern fn DrawCircleLines(centerX: c_int, centerY: c_int, radius: f32, color: Color) void;
pub extern fn DrawEllipse(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawEllipseLines(centerX: c_int, centerY: c_int, radiusH: f32, radiusV: f32, color: Color) void;
pub extern fn DrawRing(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRingLines(center: Vector2, innerRadius: f32, outerRadius: f32, startAngle: f32, endAngle: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangle(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleV(position: Vector2, size: Vector2, color: Color) void;
pub extern fn DrawRectangleRec(rec: Rectangle, color: Color) void;
pub extern fn DrawRectanglePro(rec: Rectangle, origin: Vector2, rotation: f32, color: Color) void;
pub extern fn DrawRectangleGradientV(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientH(posX: c_int, posY: c_int, width: c_int, height: c_int, color1: Color, color2: Color) void;
pub extern fn DrawRectangleGradientEx(rec: Rectangle, col1: Color, col2: Color, col3: Color, col4: Color) void;
pub extern fn DrawRectangleLines(posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn DrawRectangleLinesEx(rec: Rectangle, lineThick: f32, color: Color) void;
pub extern fn DrawRectangleRounded(rec: Rectangle, roundness: f32, segments: c_int, color: Color) void;
pub extern fn DrawRectangleRoundedLines(rec: Rectangle, roundness: f32, segments: c_int, lineThick: f32, color: Color) void;
pub extern fn DrawTriangle(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleLines(v1: Vector2, v2: Vector2, v3: Vector2, color: Color) void;
pub extern fn DrawTriangleFan(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawTriangleStrip(points: [*c]Vector2, pointCount: c_int, color: Color) void;
pub extern fn DrawPoly(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLines(center: Vector2, sides: c_int, radius: f32, rotation: f32, color: Color) void;
pub extern fn DrawPolyLinesEx(center: Vector2, sides: c_int, radius: f32, rotation: f32, lineThick: f32, color: Color) void;
pub extern fn CheckCollisionRecs(rec1: Rectangle, rec2: Rectangle) bool;
pub extern fn CheckCollisionCircles(center1: Vector2, radius1: f32, center2: Vector2, radius2: f32) bool;
pub extern fn CheckCollisionCircleRec(center: Vector2, radius: f32, rec: Rectangle) bool;
pub extern fn CheckCollisionPointRec(point: Vector2, rec: Rectangle) bool;
pub extern fn CheckCollisionPointCircle(point: Vector2, center: Vector2, radius: f32) bool;
pub extern fn CheckCollisionPointTriangle(point: Vector2, p1: Vector2, p2: Vector2, p3: Vector2) bool;
pub extern fn CheckCollisionPointPoly(point: Vector2, points: [*c]Vector2, pointCount: c_int) bool;
pub extern fn CheckCollisionLines(startPos1: Vector2, endPos1: Vector2, startPos2: Vector2, endPos2: Vector2, collisionPoint: [*c]Vector2) bool;
pub extern fn CheckCollisionPointLine(point: Vector2, p1: Vector2, p2: Vector2, threshold: c_int) bool;
pub extern fn GetCollisionRec(rec1: Rectangle, rec2: Rectangle) Rectangle;
pub extern fn LoadImage(fileName: [*c]const u8) Image;
pub extern fn LoadImageRaw(fileName: [*c]const u8, width: c_int, height: c_int, format: c_int, headerSize: c_int) Image;
pub extern fn LoadImageAnim(fileName: [*c]const u8, frames: [*c]c_int) Image;
pub extern fn LoadImageFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Image;
pub extern fn LoadImageFromTexture(texture: Texture2D) Image;
pub extern fn LoadImageFromScreen() Image;
pub extern fn IsImageReady(image: Image) bool;
pub extern fn UnloadImage(image: Image) void;
pub extern fn ExportImage(image: Image, fileName: [*c]const u8) bool;
pub extern fn ExportImageToMemory(image: Image, fileType: [*c]const u8, fileSize: [*c]c_int) [*c]u8;
pub extern fn ExportImageAsCode(image: Image, fileName: [*c]const u8) bool;
pub extern fn GenImageColor(width: c_int, height: c_int, color: Color) Image;
pub extern fn GenImageGradientLinear(width: c_int, height: c_int, direction: c_int, start: Color, end: Color) Image;
pub extern fn GenImageGradientRadial(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageGradientSquare(width: c_int, height: c_int, density: f32, inner: Color, outer: Color) Image;
pub extern fn GenImageChecked(width: c_int, height: c_int, checksX: c_int, checksY: c_int, col1: Color, col2: Color) Image;
pub extern fn GenImageWhiteNoise(width: c_int, height: c_int, factor: f32) Image;
pub extern fn GenImagePerlinNoise(width: c_int, height: c_int, offsetX: c_int, offsetY: c_int, scale: f32) Image;
pub extern fn GenImageCellular(width: c_int, height: c_int, tileSize: c_int) Image;
pub extern fn GenImageText(width: c_int, height: c_int, text: [*c]const u8) Image;
pub extern fn ImageCopy(image: Image) Image;
pub extern fn ImageFromImage(image: Image, rec: Rectangle) Image;
pub extern fn ImageText(text: [*c]const u8, fontSize: c_int, color: Color) Image;
pub extern fn ImageTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32, tint: Color) Image;
pub extern fn ImageFormat(image: [*c]Image, newFormat: c_int) void;
pub extern fn ImageToPOT(image: [*c]Image, fill: Color) void;
pub extern fn ImageCrop(image: [*c]Image, crop: Rectangle) void;
pub extern fn ImageAlphaCrop(image: [*c]Image, threshold: f32) void;
pub extern fn ImageAlphaClear(image: [*c]Image, color: Color, threshold: f32) void;
pub extern fn ImageAlphaMask(image: [*c]Image, alphaMask: Image) void;
pub extern fn ImageAlphaPremultiply(image: [*c]Image) void;
pub extern fn ImageBlurGaussian(image: [*c]Image, blurSize: c_int) void;
pub extern fn ImageResize(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeNN(image: [*c]Image, newWidth: c_int, newHeight: c_int) void;
pub extern fn ImageResizeCanvas(image: [*c]Image, newWidth: c_int, newHeight: c_int, offsetX: c_int, offsetY: c_int, fill: Color) void;
pub extern fn ImageMipmaps(image: [*c]Image) void;
pub extern fn ImageDither(image: [*c]Image, rBpp: c_int, gBpp: c_int, bBpp: c_int, aBpp: c_int) void;
pub extern fn ImageFlipVertical(image: [*c]Image) void;
pub extern fn ImageFlipHorizontal(image: [*c]Image) void;
pub extern fn ImageRotate(image: [*c]Image, degrees: c_int) void;
pub extern fn ImageRotateCW(image: [*c]Image) void;
pub extern fn ImageRotateCCW(image: [*c]Image) void;
pub extern fn ImageColorTint(image: [*c]Image, color: Color) void;
pub extern fn ImageColorInvert(image: [*c]Image) void;
pub extern fn ImageColorGrayscale(image: [*c]Image) void;
pub extern fn ImageColorContrast(image: [*c]Image, contrast: f32) void;
pub extern fn ImageColorBrightness(image: [*c]Image, brightness: c_int) void;
pub extern fn ImageColorReplace(image: [*c]Image, color: Color, replace: Color) void;
pub extern fn LoadImageColors(image: Image) [*c]Color;
pub extern fn LoadImagePalette(image: Image, maxPaletteSize: c_int, colorCount: [*c]c_int) [*c]Color;
pub extern fn UnloadImageColors(colors: [*c]Color) void;
pub extern fn UnloadImagePalette(colors: [*c]Color) void;
pub extern fn GetImageAlphaBorder(image: Image, threshold: f32) Rectangle;
pub extern fn GetImageColor(image: Image, x: c_int, y: c_int) Color;
pub extern fn ImageClearBackground(dst: [*c]Image, color: Color) void;
pub extern fn ImageDrawPixel(dst: [*c]Image, posX: c_int, posY: c_int, color: Color) void;
pub extern fn ImageDrawPixelV(dst: [*c]Image, position: Vector2, color: Color) void;
pub extern fn ImageDrawLine(dst: [*c]Image, startPosX: c_int, startPosY: c_int, endPosX: c_int, endPosY: c_int, color: Color) void;
pub extern fn ImageDrawLineV(dst: [*c]Image, start: Vector2, end: Vector2, color: Color) void;
pub extern fn ImageDrawCircle(dst: [*c]Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleV(dst: [*c]Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleLines(dst: [*c]Image, centerX: c_int, centerY: c_int, radius: c_int, color: Color) void;
pub extern fn ImageDrawCircleLinesV(dst: [*c]Image, center: Vector2, radius: c_int, color: Color) void;
pub extern fn ImageDrawRectangle(dst: [*c]Image, posX: c_int, posY: c_int, width: c_int, height: c_int, color: Color) void;
pub extern fn ImageDrawRectangleV(dst: [*c]Image, position: Vector2, size: Vector2, color: Color) void;
pub extern fn ImageDrawRectangleRec(dst: [*c]Image, rec: Rectangle, color: Color) void;
pub extern fn ImageDrawRectangleLines(dst: [*c]Image, rec: Rectangle, thick: c_int, color: Color) void;
pub extern fn ImageDraw(dst: [*c]Image, src: Image, srcRec: Rectangle, dstRec: Rectangle, tint: Color) void;
pub extern fn ImageDrawText(dst: [*c]Image, text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn ImageDrawTextEx(dst: [*c]Image, font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn LoadTexture(fileName: [*c]const u8) Texture2D;
pub extern fn LoadTextureFromImage(image: Image) Texture2D;
pub extern fn LoadTextureCubemap(image: Image, layout: c_int) TextureCubemap;
pub extern fn LoadRenderTexture(width: c_int, height: c_int) RenderTexture2D;
pub extern fn IsTextureReady(texture: Texture2D) bool;
pub extern fn UnloadTexture(texture: Texture2D) void;
pub extern fn IsRenderTextureReady(target: RenderTexture2D) bool;
pub extern fn UnloadRenderTexture(target: RenderTexture2D) void;
pub extern fn UpdateTexture(texture: Texture2D, pixels: ?*const anyopaque) void;
pub extern fn UpdateTextureRec(texture: Texture2D, rec: Rectangle, pixels: ?*const anyopaque) void;
pub extern fn GenTextureMipmaps(texture: [*c]Texture2D) void;
pub extern fn SetTextureFilter(texture: Texture2D, filter: c_int) void;
pub extern fn SetTextureWrap(texture: Texture2D, wrap: c_int) void;
pub extern fn DrawTexture(texture: Texture2D, posX: c_int, posY: c_int, tint: Color) void;
pub extern fn DrawTextureV(texture: Texture2D, position: Vector2, tint: Color) void;
pub extern fn DrawTextureEx(texture: Texture2D, position: Vector2, rotation: f32, scale: f32, tint: Color) void;
pub extern fn DrawTextureRec(texture: Texture2D, source: Rectangle, position: Vector2, tint: Color) void;
pub extern fn DrawTexturePro(texture: Texture2D, source: Rectangle, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn DrawTextureNPatch(texture: Texture2D, nPatchInfo: NPatchInfo, dest: Rectangle, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn Fade(color: Color, alpha: f32) Color;
pub extern fn ColorToInt(color: Color) c_int;
pub extern fn ColorNormalize(color: Color) Vector4;
pub extern fn ColorFromNormalized(normalized: Vector4) Color;
pub extern fn ColorToHSV(color: Color) Vector3;
pub extern fn ColorFromHSV(hue: f32, saturation: f32, value: f32) Color;
pub extern fn ColorTint(color: Color, tint: Color) Color;
pub extern fn ColorBrightness(color: Color, factor: f32) Color;
pub extern fn ColorContrast(color: Color, contrast: f32) Color;
pub extern fn ColorAlpha(color: Color, alpha: f32) Color;
pub extern fn ColorAlphaBlend(dst: Color, src: Color, tint: Color) Color;
pub extern fn GetColor(hexValue: c_uint) Color;
pub extern fn GetPixelColor(srcPtr: ?*anyopaque, format: c_int) Color;
pub extern fn SetPixelColor(dstPtr: ?*anyopaque, color: Color, format: c_int) void;
pub extern fn GetPixelDataSize(width: c_int, height: c_int, format: c_int) c_int;
pub extern fn GetFontDefault() Font;
pub extern fn LoadFont(fileName: [*c]const u8) Font;
pub extern fn LoadFontEx(fileName: [*c]const u8, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int) Font;
pub extern fn LoadFontFromImage(image: Image, key: Color, firstChar: c_int) Font;
pub extern fn LoadFontFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int) Font;
pub extern fn IsFontReady(font: Font) bool;
pub extern fn LoadFontData(fileData: [*c]const u8, dataSize: c_int, fontSize: c_int, fontChars: [*c]c_int, glyphCount: c_int, @"type": c_int) [*c]GlyphInfo;
pub extern fn GenImageFontAtlas(chars: [*c]const GlyphInfo, recs: [*c][*c]Rectangle, glyphCount: c_int, fontSize: c_int, padding: c_int, packMethod: c_int) Image;
pub extern fn UnloadFontData(chars: [*c]GlyphInfo, glyphCount: c_int) void;
pub extern fn UnloadFont(font: Font) void;
pub extern fn ExportFontAsCode(font: Font, fileName: [*c]const u8) bool;
pub extern fn DrawFPS(posX: c_int, posY: c_int) void;
pub extern fn DrawText(text: [*c]const u8, posX: c_int, posY: c_int, fontSize: c_int, color: Color) void;
pub extern fn DrawTextEx(font: Font, text: [*c]const u8, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextPro(font: Font, text: [*c]const u8, position: Vector2, origin: Vector2, rotation: f32, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn DrawTextCodepoint(font: Font, codepoint: c_int, position: Vector2, fontSize: f32, tint: Color) void;
pub extern fn DrawTextCodepoints(font: Font, codepoints: [*c]const c_int, count: c_int, position: Vector2, fontSize: f32, spacing: f32, tint: Color) void;
pub extern fn SetTextLineSpacing(spacing: c_int) void;
pub extern fn MeasureText(text: [*c]const u8, fontSize: c_int) c_int;
pub extern fn MeasureTextEx(font: Font, text: [*c]const u8, fontSize: f32, spacing: f32) Vector2;
pub extern fn GetGlyphIndex(font: Font, codepoint: c_int) c_int;
pub extern fn GetGlyphInfo(font: Font, codepoint: c_int) GlyphInfo;
pub extern fn GetGlyphAtlasRec(font: Font, codepoint: c_int) Rectangle;
pub extern fn LoadUTF8(codepoints: [*c]const c_int, length: c_int) [*c]u8;
pub extern fn UnloadUTF8(text: [*c]u8) void;
pub extern fn LoadCodepoints(text: [*c]const u8, count: [*c]c_int) [*c]c_int;
pub extern fn UnloadCodepoints(codepoints: [*c]c_int) void;
pub extern fn GetCodepointCount(text: [*c]const u8) c_int;
pub extern fn GetCodepoint(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn GetCodepointNext(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn GetCodepointPrevious(text: [*c]const u8, codepointSize: [*c]c_int) c_int;
pub extern fn CodepointToUTF8(codepoint: c_int, utf8Size: [*c]c_int) [*c]const u8;
pub extern fn TextCopy(dst: [*c]u8, src: [*c]const u8) c_int;
pub extern fn TextIsEqual(text1: [*c]const u8, text2: [*c]const u8) bool;
pub extern fn TextLength(text: [*c]const u8) c_uint;
pub extern fn TextFormat(text: [*c]const u8, ...) [*c]const u8;
pub extern fn TextSubtext(text: [*c]const u8, position: c_int, length: c_int) [*c]const u8;
pub extern fn TextReplace(text: [*c]u8, replace: [*c]const u8, by: [*c]const u8) [*c]u8;
pub extern fn TextInsert(text: [*c]const u8, insert: [*c]const u8, position: c_int) [*c]u8;
pub extern fn TextJoin(textList: [*c][*c]const u8, count: c_int, delimiter: [*c]const u8) [*c]const u8;
pub extern fn TextSplit(text: [*c]const u8, delimiter: u8, count: [*c]c_int) [*c][*c]const u8;
pub extern fn TextAppend(text: [*c]u8, append: [*c]const u8, position: [*c]c_int) void;
pub extern fn TextFindIndex(text: [*c]const u8, find: [*c]const u8) c_int;
pub extern fn TextToUpper(text: [*c]const u8) [*c]const u8;
pub extern fn TextToLower(text: [*c]const u8) [*c]const u8;
pub extern fn TextToPascal(text: [*c]const u8) [*c]const u8;
pub extern fn TextToInteger(text: [*c]const u8) c_int;
pub extern fn DrawLine3D(startPos: Vector3, endPos: Vector3, color: Color) void;
pub extern fn DrawPoint3D(position: Vector3, color: Color) void;
pub extern fn DrawCircle3D(center: Vector3, radius: f32, rotationAxis: Vector3, rotationAngle: f32, color: Color) void;
pub extern fn DrawTriangle3D(v1: Vector3, v2: Vector3, v3: Vector3, color: Color) void;
pub extern fn DrawTriangleStrip3D(points: [*c]Vector3, pointCount: c_int, color: Color) void;
pub extern fn DrawCube(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawCubeWires(position: Vector3, width: f32, height: f32, length: f32, color: Color) void;
pub extern fn DrawCubeWiresV(position: Vector3, size: Vector3, color: Color) void;
pub extern fn DrawSphere(centerPos: Vector3, radius: f32, color: Color) void;
pub extern fn DrawSphereEx(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawSphereWires(centerPos: Vector3, radius: f32, rings: c_int, slices: c_int, color: Color) void;
pub extern fn DrawCylinder(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawCylinderWires(position: Vector3, radiusTop: f32, radiusBottom: f32, height: f32, slices: c_int, color: Color) void;
pub extern fn DrawCylinderWiresEx(startPos: Vector3, endPos: Vector3, startRadius: f32, endRadius: f32, sides: c_int, color: Color) void;
pub extern fn DrawCapsule(startPos: Vector3, endPos: Vector3, radius: f32, slices: c_int, rings: c_int, color: Color) void;
pub extern fn DrawCapsuleWires(startPos: Vector3, endPos: Vector3, radius: f32, slices: c_int, rings: c_int, color: Color) void;
pub extern fn DrawPlane(centerPos: Vector3, size: Vector2, color: Color) void;
pub extern fn DrawRay(ray: Ray, color: Color) void;
pub extern fn DrawGrid(slices: c_int, spacing: f32) void;
pub extern fn LoadModel(fileName: [*c]const u8) Model;
pub extern fn LoadModelFromMesh(mesh: Mesh) Model;
pub extern fn IsModelReady(model: Model) bool;
pub extern fn UnloadModel(model: Model) void;
pub extern fn GetModelBoundingBox(model: Model) BoundingBox;
pub extern fn DrawModel(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawModelWires(model: Model, position: Vector3, scale: f32, tint: Color) void;
pub extern fn DrawModelWiresEx(model: Model, position: Vector3, rotationAxis: Vector3, rotationAngle: f32, scale: Vector3, tint: Color) void;
pub extern fn DrawBoundingBox(box: BoundingBox, color: Color) void;
pub extern fn DrawBillboard(camera: Camera, texture: Texture2D, position: Vector3, size: f32, tint: Color) void;
pub extern fn DrawBillboardRec(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, size: Vector2, tint: Color) void;
pub extern fn DrawBillboardPro(camera: Camera, texture: Texture2D, source: Rectangle, position: Vector3, up: Vector3, size: Vector2, origin: Vector2, rotation: f32, tint: Color) void;
pub extern fn UploadMesh(mesh: [*c]Mesh, dynamic: bool) void;
pub extern fn UpdateMeshBuffer(mesh: Mesh, index: c_int, data: ?*const anyopaque, dataSize: c_int, offset: c_int) void;
pub extern fn UnloadMesh(mesh: Mesh) void;
pub extern fn DrawMesh(mesh: Mesh, material: Material, transform: Matrix) void;
pub extern fn DrawMeshInstanced(mesh: Mesh, material: Material, transforms: [*c]const Matrix, instances: c_int) void;
pub extern fn ExportMesh(mesh: Mesh, fileName: [*c]const u8) bool;
pub extern fn GetMeshBoundingBox(mesh: Mesh) BoundingBox;
pub extern fn GenMeshTangents(mesh: [*c]Mesh) void;
pub extern fn GenMeshPoly(sides: c_int, radius: f32) Mesh;
pub extern fn GenMeshPlane(width: f32, length: f32, resX: c_int, resZ: c_int) Mesh;
pub extern fn GenMeshCube(width: f32, height: f32, length: f32) Mesh;
pub extern fn GenMeshSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshHemiSphere(radius: f32, rings: c_int, slices: c_int) Mesh;
pub extern fn GenMeshCylinder(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshCone(radius: f32, height: f32, slices: c_int) Mesh;
pub extern fn GenMeshTorus(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshKnot(radius: f32, size: f32, radSeg: c_int, sides: c_int) Mesh;
pub extern fn GenMeshHeightmap(heightmap: Image, size: Vector3) Mesh;
pub extern fn GenMeshCubicmap(cubicmap: Image, cubeSize: Vector3) Mesh;
pub extern fn LoadMaterials(fileName: [*c]const u8, materialCount: [*c]c_int) [*c]Material;
pub extern fn LoadMaterialDefault() Material;
pub extern fn IsMaterialReady(material: Material) bool;
pub extern fn UnloadMaterial(material: Material) void;
pub extern fn SetMaterialTexture(material: [*c]Material, mapType: c_int, texture: Texture2D) void;
pub extern fn SetModelMeshMaterial(model: [*c]Model, meshId: c_int, materialId: c_int) void;
pub extern fn LoadModelAnimations(fileName: [*c]const u8, animCount: [*c]c_uint) [*c]ModelAnimation;
pub extern fn UpdateModelAnimation(model: Model, anim: ModelAnimation, frame: c_int) void;
pub extern fn UnloadModelAnimation(anim: ModelAnimation) void;
pub extern fn UnloadModelAnimations(animations: [*c]ModelAnimation, count: c_uint) void;
pub extern fn IsModelAnimationValid(model: Model, anim: ModelAnimation) bool;
pub extern fn CheckCollisionSpheres(center1: Vector3, radius1: f32, center2: Vector3, radius2: f32) bool;
pub extern fn CheckCollisionBoxes(box1: BoundingBox, box2: BoundingBox) bool;
pub extern fn CheckCollisionBoxSphere(box: BoundingBox, center: Vector3, radius: f32) bool;
pub extern fn GetRayCollisionSphere(ray: Ray, center: Vector3, radius: f32) RayCollision;
pub extern fn GetRayCollisionBox(ray: Ray, box: BoundingBox) RayCollision;
pub extern fn GetRayCollisionMesh(ray: Ray, mesh: Mesh, transform: Matrix) RayCollision;
pub extern fn GetRayCollisionTriangle(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3) RayCollision;
pub extern fn GetRayCollisionQuad(ray: Ray, p1: Vector3, p2: Vector3, p3: Vector3, p4: Vector3) RayCollision;
pub const AudioCallback = ?*const fn (?*anyopaque, c_uint) callconv(.C) void;
pub extern fn InitAudioDevice() void;
pub extern fn CloseAudioDevice() void;
pub extern fn IsAudioDeviceReady() bool;
pub extern fn SetMasterVolume(volume: f32) void;
pub extern fn LoadWave(fileName: [*c]const u8) Wave;
pub extern fn LoadWaveFromMemory(fileType: [*c]const u8, fileData: [*c]const u8, dataSize: c_int) Wave;
pub extern fn IsWaveReady(wave: Wave) bool;
pub extern fn LoadSound(fileName: [*c]const u8) Sound;
pub extern fn LoadSoundFromWave(wave: Wave) Sound;
pub extern fn LoadSoundAlias(source: Sound) Sound;
pub extern fn IsSoundReady(sound: Sound) bool;
pub extern fn UpdateSound(sound: Sound, data: ?*const anyopaque, sampleCount: c_int) void;
pub extern fn UnloadWave(wave: Wave) void;
pub extern fn UnloadSound(sound: Sound) void;
pub extern fn UnloadSoundAlias(alias: Sound) void;
pub extern fn ExportWave(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn ExportWaveAsCode(wave: Wave, fileName: [*c]const u8) bool;
pub extern fn PlaySound(sound: Sound) void;
pub extern fn StopSound(sound: Sound) void;
pub extern fn PauseSound(sound: Sound) void;
pub extern fn ResumeSound(sound: Sound) void;
pub extern fn IsSoundPlaying(sound: Sound) bool;
pub extern fn SetSoundVolume(sound: Sound, volume: f32) void;
pub extern fn SetSoundPitch(sound: Sound, pitch: f32) void;
pub extern fn SetSoundPan(sound: Sound, pan: f32) void;
pub extern fn WaveCopy(wave: Wave) Wave;
pub extern fn WaveCrop(wave: [*c]Wave, initSample: c_int, finalSample: c_int) void;
pub extern fn WaveFormat(wave: [*c]Wave, sampleRate: c_int, sampleSize: c_int, channels: c_int) void;
pub extern fn LoadWaveSamples(wave: Wave) [*c]f32;
pub extern fn UnloadWaveSamples(samples: [*c]f32) void;
pub extern fn LoadMusicStream(fileName: [*c]const u8) Music;
pub extern fn LoadMusicStreamFromMemory(fileType: [*c]const u8, data: [*c]const u8, dataSize: c_int) Music;
pub extern fn IsMusicReady(music: Music) bool;
pub extern fn UnloadMusicStream(music: Music) void;
pub extern fn PlayMusicStream(music: Music) void;
pub extern fn IsMusicStreamPlaying(music: Music) bool;
pub extern fn UpdateMusicStream(music: Music) void;
pub extern fn StopMusicStream(music: Music) void;
pub extern fn PauseMusicStream(music: Music) void;
pub extern fn ResumeMusicStream(music: Music) void;
pub extern fn SeekMusicStream(music: Music, position: f32) void;
pub extern fn SetMusicVolume(music: Music, volume: f32) void;
pub extern fn SetMusicPitch(music: Music, pitch: f32) void;
pub extern fn SetMusicPan(music: Music, pan: f32) void;
pub extern fn GetMusicTimeLength(music: Music) f32;
pub extern fn GetMusicTimePlayed(music: Music) f32;
pub extern fn LoadAudioStream(sampleRate: c_uint, sampleSize: c_uint, channels: c_uint) AudioStream;
pub extern fn IsAudioStreamReady(stream: AudioStream) bool;
pub extern fn UnloadAudioStream(stream: AudioStream) void;
pub extern fn UpdateAudioStream(stream: AudioStream, data: ?*const anyopaque, frameCount: c_int) void;
pub extern fn IsAudioStreamProcessed(stream: AudioStream) bool;
pub extern fn PlayAudioStream(stream: AudioStream) void;
pub extern fn PauseAudioStream(stream: AudioStream) void;
pub extern fn ResumeAudioStream(stream: AudioStream) void;
pub extern fn IsAudioStreamPlaying(stream: AudioStream) bool;
pub extern fn StopAudioStream(stream: AudioStream) void;
pub extern fn SetAudioStreamVolume(stream: AudioStream, volume: f32) void;
pub extern fn SetAudioStreamPitch(stream: AudioStream, pitch: f32) void;
pub extern fn SetAudioStreamPan(stream: AudioStream, pan: f32) void;
pub extern fn SetAudioStreamBufferSizeDefault(size: c_int) void;
pub extern fn SetAudioStreamCallback(stream: AudioStream, callback: AudioCallback) void;
pub extern fn AttachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn DetachAudioStreamProcessor(stream: AudioStream, processor: AudioCallback) void;
pub extern fn AttachAudioMixedProcessor(processor: AudioCallback) void;
pub extern fn DetachAudioMixedProcessor(processor: AudioCallback) void;
pub const struct_float3 = extern struct {
    v: [3]f32,
};
pub const float3 = struct_float3;
pub const struct_float16 = extern struct {
    v: [16]f32,
};
pub const float16 = struct_float16; // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:590:3: warning: TODO implement translation of stmt class GCCAsmStmtClass
// C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:587:36: warning: unable to translate function, demoted to extern
pub extern fn __debugbreak() void;
pub extern fn __mingw_get_crt_info() [*c]const u8;
pub const rsize_t = usize;
pub const ptrdiff_t = c_longlong;
pub const wchar_t = c_ushort;
pub const wint_t = c_ushort;
pub const wctype_t = c_ushort;
pub const errno_t = c_int;
pub const __time32_t = c_long;
pub const __time64_t = c_longlong;
pub const time_t = __time64_t;
pub const struct_tagLC_ID = extern struct {
    wLanguage: c_ushort,
    wCountry: c_ushort,
    wCodePage: c_ushort,
};
pub const LC_ID = struct_tagLC_ID;
const struct_unnamed_1 = extern struct {
    locale: [*c]u8,
    wlocale: [*c]wchar_t,
    refcount: [*c]c_int,
    wrefcount: [*c]c_int,
};
pub const struct_lconv = opaque {};
pub const struct___lc_time_data = opaque {};
pub const struct_threadlocaleinfostruct = extern struct {
    refcount: c_int,
    lc_codepage: c_uint,
    lc_collate_cp: c_uint,
    lc_handle: [6]c_ulong,
    lc_id: [6]LC_ID,
    lc_category: [6]struct_unnamed_1,
    lc_clike: c_int,
    mb_cur_max: c_int,
    lconv_intl_refcount: [*c]c_int,
    lconv_num_refcount: [*c]c_int,
    lconv_mon_refcount: [*c]c_int,
    lconv: ?*struct_lconv,
    ctype1_refcount: [*c]c_int,
    ctype1: [*c]c_ushort,
    pctype: [*c]const c_ushort,
    pclmap: [*c]const u8,
    pcumap: [*c]const u8,
    lc_time_curr: ?*struct___lc_time_data,
};
pub const struct_threadmbcinfostruct = opaque {};
pub const pthreadlocinfo = [*c]struct_threadlocaleinfostruct;
pub const pthreadmbcinfo = ?*struct_threadmbcinfostruct;
pub const struct_localeinfo_struct = extern struct {
    locinfo: pthreadlocinfo,
    mbcinfo: pthreadmbcinfo,
};
pub const _locale_tstruct = struct_localeinfo_struct;
pub const _locale_t = [*c]struct_localeinfo_struct;
pub const LPLC_ID = [*c]struct_tagLC_ID;
pub const threadlocinfo = struct_threadlocaleinfostruct;
pub const struct__exception = extern struct {
    type: c_int,
    name: [*c]const u8,
    arg1: f64,
    arg2: f64,
    retval: f64,
};
const struct_unnamed_2 = extern struct {
    low: c_uint,
    high: c_uint,
};
pub const union___mingw_dbl_type_t = extern union {
    x: f64,
    val: c_ulonglong,
    lh: struct_unnamed_2,
};
pub const __mingw_dbl_type_t = union___mingw_dbl_type_t;
pub const union___mingw_flt_type_t = extern union {
    x: f32,
    val: c_uint,
};
pub const __mingw_flt_type_t = union___mingw_flt_type_t; // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:137:11: warning: struct demoted to opaque type - has bitfield
const struct_unnamed_3 = opaque {};
pub const union___mingw_ldbl_type_t = extern union {
    x: c_longdouble,
    lh: struct_unnamed_3,
};
pub const __mingw_ldbl_type_t = union___mingw_ldbl_type_t;
pub extern var __imp__HUGE: [*c]f64;
pub extern fn __mingw_raise_matherr(typ: c_int, name: [*c]const u8, a1: f64, a2: f64, rslt: f64) void;
pub extern fn __mingw_setusermatherr(?*const fn ([*c]struct__exception) callconv(.C) c_int) void;
pub extern fn __setusermatherr(?*const fn ([*c]struct__exception) callconv(.C) c_int) void;
pub extern fn sin(_X: f64) f64;
pub extern fn cos(_X: f64) f64;
pub extern fn tan(_X: f64) f64;
pub extern fn sinh(_X: f64) f64;
pub extern fn cosh(_X: f64) f64;
pub extern fn tanh(_X: f64) f64;
pub extern fn asin(_X: f64) f64;
pub extern fn acos(_X: f64) f64;
pub extern fn atan(_X: f64) f64;
pub extern fn atan2(_Y: f64, _X: f64) f64;
pub extern fn exp(_X: f64) f64;
pub extern fn log(_X: f64) f64;
pub extern fn log10(_X: f64) f64;
pub extern fn pow(_X: f64, _Y: f64) f64;
pub extern fn sqrt(_X: f64) f64;
pub extern fn ceil(_X: f64) f64;
pub extern fn floor(_X: f64) f64;
pub extern fn fabsf(x: f32) f32;
pub extern fn fabsl(c_longdouble) c_longdouble;
pub extern fn fabs(_X: f64) f64;
pub extern fn ldexp(_X: f64, _Y: c_int) f64;
pub extern fn frexp(_X: f64, _Y: [*c]c_int) f64;
pub extern fn modf(_X: f64, _Y: [*c]f64) f64;
pub extern fn fmod(_X: f64, _Y: f64) f64;
pub extern fn sincos(__x: f64, p_sin: [*c]f64, p_cos: [*c]f64) void;
pub extern fn sincosl(__x: c_longdouble, p_sin: [*c]c_longdouble, p_cos: [*c]c_longdouble) void;
pub extern fn sincosf(__x: f32, p_sin: [*c]f32, p_cos: [*c]f32) void;
pub extern fn abs(_X: c_int) c_int;
pub extern fn labs(_X: c_long) c_long;
pub extern fn atof(_String: [*c]const u8) f64;
pub extern fn _atof_l(_String: [*c]const u8, _Locale: _locale_t) f64;
pub const struct__complex = extern struct {
    x: f64,
    y: f64,
};
pub extern fn _cabs(_ComplexA: struct__complex) f64;
pub extern fn _hypot(_X: f64, _Y: f64) f64;
pub extern fn _j0(_X: f64) f64;
pub extern fn _j1(_X: f64) f64;
pub extern fn _jn(_X: c_int, _Y: f64) f64;
pub extern fn _y0(_X: f64) f64;
pub extern fn _y1(_X: f64) f64;
pub extern fn _yn(_X: c_int, _Y: f64) f64;
pub extern fn _matherr([*c]struct__exception) c_int;
pub extern fn _chgsign(_X: f64) f64;
pub extern fn _copysign(_Number: f64, _Sign: f64) f64;
pub extern fn _logb(f64) f64;
pub extern fn _nextafter(f64, f64) f64;
pub extern fn _scalb(f64, c_long) f64;
pub extern fn _finite(f64) c_int;
pub extern fn _fpclass(f64) c_int;
pub extern fn _isnan(f64) c_int;
pub extern fn j0(f64) f64;
pub extern fn j1(f64) f64;
pub extern fn jn(c_int, f64) f64;
pub extern fn y0(f64) f64;
pub extern fn y1(f64) f64;
pub extern fn yn(c_int, f64) f64;
pub extern fn chgsign(f64) f64;
pub extern fn finite(f64) c_int;
pub extern fn fpclass(f64) c_int;
pub const float_t = f32;
pub const double_t = f64;
pub extern fn __fpclassifyl(c_longdouble) c_int;
pub extern fn __fpclassifyf(f32) c_int;
pub extern fn __fpclassify(f64) c_int;
pub extern fn __isnan(f64) c_int;
pub extern fn __isnanf(f32) c_int;
pub extern fn __isnanl(c_longdouble) c_int;
pub extern fn __signbit(f64) c_int;
pub extern fn __signbitf(f32) c_int;
pub extern fn __signbitl(c_longdouble) c_int;
pub extern fn sinf(_X: f32) f32;
pub extern fn sinl(c_longdouble) c_longdouble;
pub extern fn cosf(_X: f32) f32;
pub extern fn cosl(c_longdouble) c_longdouble;
pub extern fn tanf(_X: f32) f32;
pub extern fn tanl(c_longdouble) c_longdouble;
pub extern fn asinf(_X: f32) f32;
pub extern fn asinl(c_longdouble) c_longdouble;
pub extern fn acosf(f32) f32;
pub extern fn acosl(c_longdouble) c_longdouble;
pub extern fn atanf(f32) f32;
pub extern fn atanl(c_longdouble) c_longdouble;
pub extern fn atan2f(f32, f32) f32;
pub extern fn atan2l(c_longdouble, c_longdouble) c_longdouble;
pub extern fn sinhf(_X: f32) f32;
pub extern fn sinhl(c_longdouble) c_longdouble;
pub extern fn coshf(_X: f32) f32;
pub extern fn coshl(c_longdouble) c_longdouble;
pub extern fn tanhf(_X: f32) f32;
pub extern fn tanhl(c_longdouble) c_longdouble;
pub extern fn acosh(f64) f64;
pub extern fn acoshf(f32) f32;
pub extern fn acoshl(c_longdouble) c_longdouble;
pub extern fn asinh(f64) f64;
pub extern fn asinhf(f32) f32;
pub extern fn asinhl(c_longdouble) c_longdouble;
pub extern fn atanh(f64) f64;
pub extern fn atanhf(f32) f32;
pub extern fn atanhl(c_longdouble) c_longdouble;
pub extern fn expf(_X: f32) f32;
pub extern fn expl(c_longdouble) c_longdouble;
pub extern fn exp2(f64) f64;
pub extern fn exp2f(f32) f32;
pub extern fn exp2l(c_longdouble) c_longdouble;
pub extern fn expm1(f64) f64;
pub extern fn expm1f(f32) f32;
pub extern fn expm1l(c_longdouble) c_longdouble;
pub extern fn frexpf(_X: f32, _Y: [*c]c_int) f32;
pub extern fn frexpl(c_longdouble, [*c]c_int) c_longdouble;
pub extern fn ilogb(f64) c_int;
pub extern fn ilogbf(f32) c_int;
pub extern fn ilogbl(c_longdouble) c_int;
pub extern fn ldexpf(_X: f32, _Y: c_int) f32;
pub extern fn ldexpl(c_longdouble, c_int) c_longdouble;
pub extern fn logf(f32) f32;
pub extern fn logl(c_longdouble) c_longdouble;
pub extern fn log10f(f32) f32;
pub extern fn log10l(c_longdouble) c_longdouble;
pub extern fn log1p(f64) f64;
pub extern fn log1pf(f32) f32;
pub extern fn log1pl(c_longdouble) c_longdouble;
pub extern fn log2(f64) f64;
pub extern fn log2f(f32) f32;
pub extern fn log2l(c_longdouble) c_longdouble;
pub extern fn logb(f64) f64;
pub extern fn logbf(f32) f32;
pub extern fn logbl(c_longdouble) c_longdouble;
pub extern fn modff(f32, [*c]f32) f32;
pub extern fn modfl(c_longdouble, [*c]c_longdouble) c_longdouble;
pub extern fn scalbn(f64, c_int) f64;
pub extern fn scalbnf(f32, c_int) f32;
pub extern fn scalbnl(c_longdouble, c_int) c_longdouble;
pub extern fn scalbln(f64, c_long) f64;
pub extern fn scalblnf(f32, c_long) f32;
pub extern fn scalblnl(c_longdouble, c_long) c_longdouble;
pub extern fn cbrt(f64) f64;
pub extern fn cbrtf(f32) f32;
pub extern fn cbrtl(c_longdouble) c_longdouble;
pub extern fn hypot(f64, f64) f64;
pub extern fn hypotf(x: f32, y: f32) f32;
pub extern fn hypotl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn powf(_X: f32, _Y: f32) f32;
pub extern fn powl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn sqrtf(f32) f32;
pub extern fn sqrtl(c_longdouble) c_longdouble;
pub extern fn erf(f64) f64;
pub extern fn erff(f32) f32;
pub extern fn erfl(c_longdouble) c_longdouble;
pub extern fn erfc(f64) f64;
pub extern fn erfcf(f32) f32;
pub extern fn erfcl(c_longdouble) c_longdouble;
pub extern fn lgamma(f64) f64;
pub extern fn lgammaf(f32) f32;
pub extern fn lgammal(c_longdouble) c_longdouble;
pub extern var signgam: c_int;
pub extern fn tgamma(f64) f64;
pub extern fn tgammaf(f32) f32;
pub extern fn tgammal(c_longdouble) c_longdouble;
pub extern fn ceilf(f32) f32;
pub extern fn ceill(c_longdouble) c_longdouble;
pub extern fn floorf(f32) f32;
pub extern fn floorl(c_longdouble) c_longdouble;
pub extern fn nearbyint(f64) f64;
pub extern fn nearbyintf(f32) f32;
pub extern fn nearbyintl(c_longdouble) c_longdouble;
pub extern fn rint(f64) f64;
pub extern fn rintf(f32) f32;
pub extern fn rintl(c_longdouble) c_longdouble;
pub extern fn lrint(f64) c_long;
pub extern fn lrintf(f32) c_long;
pub extern fn lrintl(c_longdouble) c_long;
pub extern fn llrint(f64) c_longlong;
pub extern fn llrintf(f32) c_longlong;
pub extern fn llrintl(c_longdouble) c_longlong;
pub extern fn round(f64) f64;
pub extern fn roundf(f32) f32;
pub extern fn roundl(c_longdouble) c_longdouble;
pub extern fn lround(f64) c_long;
pub extern fn lroundf(f32) c_long;
pub extern fn lroundl(c_longdouble) c_long;
pub extern fn llround(f64) c_longlong;
pub extern fn llroundf(f32) c_longlong;
pub extern fn llroundl(c_longdouble) c_longlong;
pub extern fn trunc(f64) f64;
pub extern fn truncf(f32) f32;
pub extern fn truncl(c_longdouble) c_longdouble;
pub extern fn fmodf(f32, f32) f32;
pub extern fn fmodl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remainder(f64, f64) f64;
pub extern fn remainderf(f32, f32) f32;
pub extern fn remainderl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn remquo(f64, f64, [*c]c_int) f64;
pub extern fn remquof(f32, f32, [*c]c_int) f32;
pub extern fn remquol(c_longdouble, c_longdouble, [*c]c_int) c_longdouble;
pub extern fn copysign(f64, f64) f64;
pub extern fn copysignf(f32, f32) f32;
pub extern fn copysignl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nan(tagp: [*c]const u8) f64;
pub extern fn nanf(tagp: [*c]const u8) f32;
pub extern fn nanl(tagp: [*c]const u8) c_longdouble;
pub extern fn nextafter(f64, f64) f64;
pub extern fn nextafterf(f32, f32) f32;
pub extern fn nextafterl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn nexttoward(f64, c_longdouble) f64;
pub extern fn nexttowardf(f32, c_longdouble) f32;
pub extern fn nexttowardl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fdim(x: f64, y: f64) f64;
pub extern fn fdimf(x: f32, y: f32) f32;
pub extern fn fdiml(x: c_longdouble, y: c_longdouble) c_longdouble;
pub extern fn fmax(f64, f64) f64;
pub extern fn fmaxf(f32, f32) f32;
pub extern fn fmaxl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fmin(f64, f64) f64;
pub extern fn fminf(f32, f32) f32;
pub extern fn fminl(c_longdouble, c_longdouble) c_longdouble;
pub extern fn fma(f64, f64, f64) f64;
pub extern fn fmaf(f32, f32, f32) f32;
pub extern fn fmal(c_longdouble, c_longdouble, c_longdouble) c_longdouble;
pub extern fn _copysignf(_Number: f32, _Sign: f32) f32;
pub extern fn _chgsignf(_X: f32) f32;
pub extern fn _logbf(_X: f32) f32;
pub extern fn _nextafterf(_X: f32, _Y: f32) f32;
pub extern fn _finitef(_X: f32) c_int;
pub extern fn _isnanf(_X: f32) c_int;
pub extern fn _fpclassf(_X: f32) c_int;
pub extern fn _chgsignl(c_longdouble) c_longdouble;
pub fn Clamp(arg_value: f32, arg_min: f32, arg_max: f32) callconv(.C) f32 {
    var value = arg_value;
    var min = arg_min;
    var max = arg_max;
    var result: f32 = if (value < min) min else value;
    if (result > max) {
        result = max;
    }
    return result;
}
pub fn Lerp(arg_start: f32, arg_end: f32, arg_amount: f32) callconv(.C) f32 {
    var start = arg_start;
    var end = arg_end;
    var amount = arg_amount;
    var result: f32 = start + (amount * (end - start));
    return result;
}
pub fn Normalize(arg_value: f32, arg_start: f32, arg_end: f32) callconv(.C) f32 {
    var value = arg_value;
    var start = arg_start;
    var end = arg_end;
    var result: f32 = (value - start) / (end - start);
    return result;
}
pub fn Remap(arg_value: f32, arg_inputStart: f32, arg_inputEnd: f32, arg_outputStart: f32, arg_outputEnd: f32) callconv(.C) f32 {
    var value = arg_value;
    var inputStart = arg_inputStart;
    var inputEnd = arg_inputEnd;
    var outputStart = arg_outputStart;
    var outputEnd = arg_outputEnd;
    var result: f32 = (((value - inputStart) / (inputEnd - inputStart)) * (outputEnd - outputStart)) + outputStart;
    return result;
}
pub fn Wrap(arg_value: f32, arg_min: f32, arg_max: f32) callconv(.C) f32 {
    var value = arg_value;
    var min = arg_min;
    var max = arg_max;
    var result: f32 = value - ((max - min) * floorf((value - min) / (max - min)));
    return result;
}
pub fn FloatEquals(arg_x: f32, arg_y: f32) callconv(.C) c_int {
    var x = arg_x;
    var y = arg_y;
    var result: c_int = @intFromBool(fabsf(x - y) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(x), fabsf(y)))));
    return result;
}
pub fn Vector2Zero() callconv(.C) Vector2 {
    var result: Vector2 = Vector2{
        .x = 0.0,
        .y = 0.0,
    };
    return result;
}
pub fn Vector2One() callconv(.C) Vector2 {
    var result: Vector2 = Vector2{
        .x = 1.0,
        .y = 1.0,
    };
    return result;
}
pub fn Vector2Add(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) Vector2 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector2 = Vector2{
        .x = v1.x + v2.x,
        .y = v1.y + v2.y,
    };
    return result;
}
pub fn Vector2AddValue(arg_v: Vector2, arg_add: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var add = arg_add;
    var result: Vector2 = Vector2{
        .x = v.x + add,
        .y = v.y + add,
    };
    return result;
}
pub fn Vector2Subtract(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) Vector2 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector2 = Vector2{
        .x = v1.x - v2.x,
        .y = v1.y - v2.y,
    };
    return result;
}
pub fn Vector2SubtractValue(arg_v: Vector2, arg_sub: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var sub = arg_sub;
    var result: Vector2 = Vector2{
        .x = v.x - sub,
        .y = v.y - sub,
    };
    return result;
}
pub fn Vector2Length(arg_v: Vector2) callconv(.C) f32 {
    var v = arg_v;
    var result: f32 = sqrtf((v.x * v.x) + (v.y * v.y));
    return result;
}
pub fn Vector2LengthSqr(arg_v: Vector2) callconv(.C) f32 {
    var v = arg_v;
    var result: f32 = (v.x * v.x) + (v.y * v.y);
    return result;
}
pub fn Vector2DotProduct(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = (v1.x * v2.x) + (v1.y * v2.y);
    return result;
}
pub fn Vector2Distance(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = sqrtf(((v1.x - v2.x) * (v1.x - v2.x)) + ((v1.y - v2.y) * (v1.y - v2.y)));
    return result;
}
pub fn Vector2DistanceSqr(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = ((v1.x - v2.x) * (v1.x - v2.x)) + ((v1.y - v2.y) * (v1.y - v2.y));
    return result;
}
pub fn Vector2Angle(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = 0.0;
    var dot: f32 = (v1.x * v2.x) + (v1.y * v2.y);
    var det: f32 = (v1.x * v2.y) - (v1.y * v2.x);
    result = -atan2f(det, dot);
    return result;
}
pub fn Vector2LineAngle(arg_start: Vector2, arg_end: Vector2) callconv(.C) f32 {
    var start = arg_start;
    var end = arg_end;
    var result: f32 = 0.0;
    result = atan2f(end.y - start.y, end.x - start.x);
    return result;
}
pub fn Vector2Scale(arg_v: Vector2, arg_scale: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var scale = arg_scale;
    var result: Vector2 = Vector2{
        .x = v.x * scale,
        .y = v.y * scale,
    };
    return result;
}
pub fn Vector2Multiply(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) Vector2 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector2 = Vector2{
        .x = v1.x * v2.x,
        .y = v1.y * v2.y,
    };
    return result;
}
pub fn Vector2Negate(arg_v: Vector2) callconv(.C) Vector2 {
    var v = arg_v;
    var result: Vector2 = Vector2{
        .x = -v.x,
        .y = -v.y,
    };
    return result;
}
pub fn Vector2Divide(arg_v1: Vector2, arg_v2: Vector2) callconv(.C) Vector2 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector2 = Vector2{
        .x = v1.x / v2.x,
        .y = v1.y / v2.y,
    };
    return result;
}
pub fn Vector2Normalize(arg_v: Vector2) callconv(.C) Vector2 {
    var v = arg_v;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    var length: f32 = sqrtf((v.x * v.x) + (v.y * v.y));
    if (length > @as(f32, @floatFromInt(@as(c_int, 0)))) {
        var ilength: f32 = 1.0 / length;
        result.x = v.x * ilength;
        result.y = v.y * ilength;
    }
    return result;
}
pub fn Vector2Transform(arg_v: Vector2, arg_mat: Matrix) callconv(.C) Vector2 {
    var v = arg_v;
    var mat = arg_mat;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    var x: f32 = v.x;
    var y: f32 = v.y;
    var z: f32 = 0;
    result.x = (((mat.m0 * x) + (mat.m4 * y)) + (mat.m8 * z)) + mat.m12;
    result.y = (((mat.m1 * x) + (mat.m5 * y)) + (mat.m9 * z)) + mat.m13;
    return result;
}
pub fn Vector2Lerp(arg_v1: Vector2, arg_v2: Vector2, arg_amount: f32) callconv(.C) Vector2 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var amount = arg_amount;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    result.x = v1.x + (amount * (v2.x - v1.x));
    result.y = v1.y + (amount * (v2.y - v1.y));
    return result;
}
pub fn Vector2Reflect(arg_v: Vector2, arg_normal: Vector2) callconv(.C) Vector2 {
    var v = arg_v;
    var normal = arg_normal;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    var dotProduct: f32 = (v.x * normal.x) + (v.y * normal.y);
    result.x = v.x - ((2.0 * normal.x) * dotProduct);
    result.y = v.y - ((2.0 * normal.y) * dotProduct);
    return result;
}
pub fn Vector2Rotate(arg_v: Vector2, arg_angle: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var angle = arg_angle;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    var cosres: f32 = cosf(angle);
    var sinres: f32 = sinf(angle);
    result.x = (v.x * cosres) - (v.y * sinres);
    result.y = (v.x * sinres) + (v.y * cosres);
    return result;
}
pub fn Vector2MoveTowards(arg_v: Vector2, arg_target: Vector2, arg_maxDistance: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var target = arg_target;
    var maxDistance = arg_maxDistance;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    var dx: f32 = target.x - v.x;
    var dy: f32 = target.y - v.y;
    var value: f32 = (dx * dx) + (dy * dy);
    if ((value == @as(f32, @floatFromInt(@as(c_int, 0)))) or ((maxDistance >= @as(f32, @floatFromInt(@as(c_int, 0)))) and (value <= (maxDistance * maxDistance)))) return target;
    var dist: f32 = sqrtf(value);
    result.x = v.x + ((dx / dist) * maxDistance);
    result.y = v.y + ((dy / dist) * maxDistance);
    return result;
}
pub fn Vector2Invert(arg_v: Vector2) callconv(.C) Vector2 {
    var v = arg_v;
    var result: Vector2 = Vector2{
        .x = 1.0 / v.x,
        .y = 1.0 / v.y,
    };
    return result;
}
pub fn Vector2Clamp(arg_v: Vector2, arg_min: Vector2, arg_max: Vector2) callconv(.C) Vector2 {
    var v = arg_v;
    var min = arg_min;
    var max = arg_max;
    var result: Vector2 = Vector2{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
    };
    result.x = fminf(max.x, fmaxf(min.x, v.x));
    result.y = fminf(max.y, fmaxf(min.y, v.y));
    return result;
}
pub fn Vector2ClampValue(arg_v: Vector2, arg_min: f32, arg_max: f32) callconv(.C) Vector2 {
    var v = arg_v;
    var min = arg_min;
    var max = arg_max;
    var result: Vector2 = v;
    var length: f32 = (v.x * v.x) + (v.y * v.y);
    if (length > 0.0) {
        length = sqrtf(length);
        if (length < min) {
            var scale: f32 = min / length;
            result.x = v.x * scale;
            result.y = v.y * scale;
        } else if (length > max) {
            var scale: f32 = max / length;
            result.x = v.x * scale;
            result.y = v.y * scale;
        }
    }
    return result;
}
pub fn Vector2Equals(arg_p: Vector2, arg_q: Vector2) callconv(.C) c_int {
    var p = arg_p;
    var q = arg_q;
    var result: c_int = @intFromBool((fabsf(p.x - q.x) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.x), fabsf(q.x))))) and (fabsf(p.y - q.y) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.y), fabsf(q.y))))));
    return result;
}
pub fn Vector3Zero() callconv(.C) Vector3 {
    var result: Vector3 = Vector3{
        .x = 0.0,
        .y = 0.0,
        .z = 0.0,
    };
    return result;
}
pub fn Vector3One() callconv(.C) Vector3 {
    var result: Vector3 = Vector3{
        .x = 1.0,
        .y = 1.0,
        .z = 1.0,
    };
    return result;
}
pub fn Vector3Add(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = v1.x + v2.x,
        .y = v1.y + v2.y,
        .z = v1.z + v2.z,
    };
    return result;
}
pub fn Vector3AddValue(arg_v: Vector3, arg_add: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var add = arg_add;
    var result: Vector3 = Vector3{
        .x = v.x + add,
        .y = v.y + add,
        .z = v.z + add,
    };
    return result;
}
pub fn Vector3Subtract(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = v1.x - v2.x,
        .y = v1.y - v2.y,
        .z = v1.z - v2.z,
    };
    return result;
}
pub fn Vector3SubtractValue(arg_v: Vector3, arg_sub: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var sub = arg_sub;
    var result: Vector3 = Vector3{
        .x = v.x - sub,
        .y = v.y - sub,
        .z = v.z - sub,
    };
    return result;
}
pub fn Vector3Scale(arg_v: Vector3, arg_scalar: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var scalar = arg_scalar;
    var result: Vector3 = Vector3{
        .x = v.x * scalar,
        .y = v.y * scalar,
        .z = v.z * scalar,
    };
    return result;
}
pub fn Vector3Multiply(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = v1.x * v2.x,
        .y = v1.y * v2.y,
        .z = v1.z * v2.z,
    };
    return result;
}
pub fn Vector3CrossProduct(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = (v1.y * v2.z) - (v1.z * v2.y),
        .y = (v1.z * v2.x) - (v1.x * v2.z),
        .z = (v1.x * v2.y) - (v1.y * v2.x),
    };
    return result;
}
pub fn Vector3Perpendicular(arg_v: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var min: f32 = @as(f32, @floatCast(fabs(@as(f64, @floatCast(v.x)))));
    var cardinalAxis: Vector3 = Vector3{
        .x = 1.0,
        .y = 0.0,
        .z = 0.0,
    };
    if (fabsf(v.y) < min) {
        min = @as(f32, @floatCast(fabs(@as(f64, @floatCast(v.y)))));
        var tmp: Vector3 = Vector3{
            .x = 0.0,
            .y = 1.0,
            .z = 0.0,
        };
        cardinalAxis = tmp;
    }
    if (fabsf(v.z) < min) {
        var tmp: Vector3 = Vector3{
            .x = 0.0,
            .y = 0.0,
            .z = 1.0,
        };
        cardinalAxis = tmp;
    }
    result.x = (v.y * cardinalAxis.z) - (v.z * cardinalAxis.y);
    result.y = (v.z * cardinalAxis.x) - (v.x * cardinalAxis.z);
    result.z = (v.x * cardinalAxis.y) - (v.y * cardinalAxis.x);
    return result;
}
pub fn Vector3Length(v: Vector3) callconv(.C) f32 {
    var result: f32 = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    return result;
}
pub fn Vector3LengthSqr(v: Vector3) callconv(.C) f32 {
    var result: f32 = ((v.x * v.x) + (v.y * v.y)) + (v.z * v.z);
    return result;
}
pub fn Vector3DotProduct(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = ((v1.x * v2.x) + (v1.y * v2.y)) + (v1.z * v2.z);
    return result;
}
pub fn Vector3Distance(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = 0.0;
    var dx: f32 = v2.x - v1.x;
    var dy: f32 = v2.y - v1.y;
    var dz: f32 = v2.z - v1.z;
    result = sqrtf(((dx * dx) + (dy * dy)) + (dz * dz));
    return result;
}
pub fn Vector3DistanceSqr(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = 0.0;
    var dx: f32 = v2.x - v1.x;
    var dy: f32 = v2.y - v1.y;
    var dz: f32 = v2.z - v1.z;
    result = ((dx * dx) + (dy * dy)) + (dz * dz);
    return result;
}
pub fn Vector3Angle(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) f32 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: f32 = 0.0;
    var cross: Vector3 = Vector3{
        .x = (v1.y * v2.z) - (v1.z * v2.y),
        .y = (v1.z * v2.x) - (v1.x * v2.z),
        .z = (v1.x * v2.y) - (v1.y * v2.x),
    };
    var len: f32 = sqrtf(((cross.x * cross.x) + (cross.y * cross.y)) + (cross.z * cross.z));
    var dot: f32 = ((v1.x * v2.x) + (v1.y * v2.y)) + (v1.z * v2.z);
    result = atan2f(len, dot);
    return result;
}
pub fn Vector3Negate(arg_v: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var result: Vector3 = Vector3{
        .x = -v.x,
        .y = -v.y,
        .z = -v.z,
    };
    return result;
}
pub fn Vector3Divide(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = v1.x / v2.x,
        .y = v1.y / v2.y,
        .z = v1.z / v2.z,
    };
    return result;
}
pub fn Vector3Normalize(arg_v: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var result: Vector3 = v;
    var length: f32 = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    if (length != 0.0) {
        var ilength: f32 = 1.0 / length;
        result.x *= ilength;
        result.y *= ilength;
        result.z *= ilength;
    }
    return result;
}
pub fn Vector3OrthoNormalize(arg_v1: [*c]Vector3, arg_v2: [*c]Vector3) callconv(.C) void {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var length: f32 = 0.0;
    var ilength: f32 = 0.0;
    var v: Vector3 = v1.*;
    length = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    if (length == 0.0) {
        length = 1.0;
    }
    ilength = 1.0 / length;
    v1.*.x *= ilength;
    v1.*.y *= ilength;
    v1.*.z *= ilength;
    var vn1: Vector3 = Vector3{
        .x = (v1.*.y * v2.*.z) - (v1.*.z * v2.*.y),
        .y = (v1.*.z * v2.*.x) - (v1.*.x * v2.*.z),
        .z = (v1.*.x * v2.*.y) - (v1.*.y * v2.*.x),
    };
    v = vn1;
    length = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    if (length == 0.0) {
        length = 1.0;
    }
    ilength = 1.0 / length;
    vn1.x *= ilength;
    vn1.y *= ilength;
    vn1.z *= ilength;
    var vn2: Vector3 = Vector3{
        .x = (vn1.y * v1.*.z) - (vn1.z * v1.*.y),
        .y = (vn1.z * v1.*.x) - (vn1.x * v1.*.z),
        .z = (vn1.x * v1.*.y) - (vn1.y * v1.*.x),
    };
    v2.* = vn2;
}
pub fn Vector3Transform(arg_v: Vector3, arg_mat: Matrix) callconv(.C) Vector3 {
    var v = arg_v;
    var mat = arg_mat;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var x: f32 = v.x;
    var y: f32 = v.y;
    var z: f32 = v.z;
    result.x = (((mat.m0 * x) + (mat.m4 * y)) + (mat.m8 * z)) + mat.m12;
    result.y = (((mat.m1 * x) + (mat.m5 * y)) + (mat.m9 * z)) + mat.m13;
    result.z = (((mat.m2 * x) + (mat.m6 * y)) + (mat.m10 * z)) + mat.m14;
    return result;
}
pub fn Vector3RotateByQuaternion(arg_v: Vector3, arg_q: Quaternion) callconv(.C) Vector3 {
    var v = arg_v;
    var q = arg_q;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    result.x = ((v.x * ((((q.x * q.x) + (q.w * q.w)) - (q.y * q.y)) - (q.z * q.z))) + (v.y * (((@as(f32, @floatFromInt(@as(c_int, 2))) * q.x) * q.y) - ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.w) * q.z)))) + (v.z * (((@as(f32, @floatFromInt(@as(c_int, 2))) * q.x) * q.z) + ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.w) * q.y)));
    result.y = ((v.x * (((@as(f32, @floatFromInt(@as(c_int, 2))) * q.w) * q.z) + ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.x) * q.y))) + (v.y * ((((q.w * q.w) - (q.x * q.x)) + (q.y * q.y)) - (q.z * q.z)))) + (v.z * (((@as(f32, @floatFromInt(-@as(c_int, 2))) * q.w) * q.x) + ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.y) * q.z)));
    result.z = ((v.x * (((@as(f32, @floatFromInt(-@as(c_int, 2))) * q.w) * q.y) + ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.x) * q.z))) + (v.y * (((@as(f32, @floatFromInt(@as(c_int, 2))) * q.w) * q.x) + ((@as(f32, @floatFromInt(@as(c_int, 2))) * q.y) * q.z)))) + (v.z * ((((q.w * q.w) - (q.x * q.x)) - (q.y * q.y)) + (q.z * q.z)));
    return result;
}
pub fn Vector3RotateByAxisAngle(arg_v: Vector3, arg_axis: Vector3, arg_angle: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var axis = arg_axis;
    var angle = arg_angle;
    var result: Vector3 = v;
    var length: f32 = sqrtf(((axis.x * axis.x) + (axis.y * axis.y)) + (axis.z * axis.z));
    if (length == 0.0) {
        length = 1.0;
    }
    var ilength: f32 = 1.0 / length;
    axis.x *= ilength;
    axis.y *= ilength;
    axis.z *= ilength;
    angle /= 2.0;
    var a: f32 = sinf(angle);
    var b: f32 = axis.x * a;
    var c: f32 = axis.y * a;
    var d: f32 = axis.z * a;
    a = cosf(angle);
    var w: Vector3 = Vector3{
        .x = b,
        .y = c,
        .z = d,
    };
    var wv: Vector3 = Vector3{
        .x = (w.y * v.z) - (w.z * v.y),
        .y = (w.z * v.x) - (w.x * v.z),
        .z = (w.x * v.y) - (w.y * v.x),
    };
    var wwv: Vector3 = Vector3{
        .x = (w.y * wv.z) - (w.z * wv.y),
        .y = (w.z * wv.x) - (w.x * wv.z),
        .z = (w.x * wv.y) - (w.y * wv.x),
    };
    a *= @as(f32, @floatFromInt(@as(c_int, 2)));
    wv.x *= a;
    wv.y *= a;
    wv.z *= a;
    wwv.x *= @as(f32, @floatFromInt(@as(c_int, 2)));
    wwv.y *= @as(f32, @floatFromInt(@as(c_int, 2)));
    wwv.z *= @as(f32, @floatFromInt(@as(c_int, 2)));
    result.x += wv.x;
    result.y += wv.y;
    result.z += wv.z;
    result.x += wwv.x;
    result.y += wwv.y;
    result.z += wwv.z;
    return result;
}
pub fn Vector3Lerp(arg_v1: Vector3, arg_v2: Vector3, arg_amount: f32) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var amount = arg_amount;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    result.x = v1.x + (amount * (v2.x - v1.x));
    result.y = v1.y + (amount * (v2.y - v1.y));
    result.z = v1.z + (amount * (v2.z - v1.z));
    return result;
}
pub fn Vector3Reflect(arg_v: Vector3, arg_normal: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var normal = arg_normal;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var dotProduct: f32 = ((v.x * normal.x) + (v.y * normal.y)) + (v.z * normal.z);
    result.x = v.x - ((2.0 * normal.x) * dotProduct);
    result.y = v.y - ((2.0 * normal.y) * dotProduct);
    result.z = v.z - ((2.0 * normal.z) * dotProduct);
    return result;
}
pub fn Vector3Min(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    result.x = fminf(v1.x, v2.x);
    result.y = fminf(v1.y, v2.y);
    result.z = fminf(v1.z, v2.z);
    return result;
}
pub fn Vector3Max(arg_v1: Vector3, arg_v2: Vector3) callconv(.C) Vector3 {
    var v1 = arg_v1;
    var v2 = arg_v2;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    result.x = fmaxf(v1.x, v2.x);
    result.y = fmaxf(v1.y, v2.y);
    result.z = fmaxf(v1.z, v2.z);
    return result;
}
pub fn Vector3Barycenter(arg_p: Vector3, arg_a: Vector3, arg_b: Vector3, arg_c: Vector3) callconv(.C) Vector3 {
    var p = arg_p;
    var a = arg_a;
    var b = arg_b;
    var c = arg_c;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var v0: Vector3 = Vector3{
        .x = b.x - a.x,
        .y = b.y - a.y,
        .z = b.z - a.z,
    };
    var v1: Vector3 = Vector3{
        .x = c.x - a.x,
        .y = c.y - a.y,
        .z = c.z - a.z,
    };
    var v2: Vector3 = Vector3{
        .x = p.x - a.x,
        .y = p.y - a.y,
        .z = p.z - a.z,
    };
    var d00: f32 = ((v0.x * v0.x) + (v0.y * v0.y)) + (v0.z * v0.z);
    var d01: f32 = ((v0.x * v1.x) + (v0.y * v1.y)) + (v0.z * v1.z);
    var d11: f32 = ((v1.x * v1.x) + (v1.y * v1.y)) + (v1.z * v1.z);
    var d20: f32 = ((v2.x * v0.x) + (v2.y * v0.y)) + (v2.z * v0.z);
    var d21: f32 = ((v2.x * v1.x) + (v2.y * v1.y)) + (v2.z * v1.z);
    var denom: f32 = (d00 * d11) - (d01 * d01);
    result.y = ((d11 * d20) - (d01 * d21)) / denom;
    result.z = ((d00 * d21) - (d01 * d20)) / denom;
    result.x = 1.0 - (result.z + result.y);
    return result;
}
pub fn Vector3Unproject(arg_source: Vector3, arg_projection: Matrix, arg_view: Matrix) callconv(.C) Vector3 {
    var source = arg_source;
    var projection = arg_projection;
    var view = arg_view;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var matViewProj: Matrix = Matrix{
        .m0 = (((view.m0 * projection.m0) + (view.m1 * projection.m4)) + (view.m2 * projection.m8)) + (view.m3 * projection.m12),
        .m4 = (((view.m0 * projection.m1) + (view.m1 * projection.m5)) + (view.m2 * projection.m9)) + (view.m3 * projection.m13),
        .m8 = (((view.m0 * projection.m2) + (view.m1 * projection.m6)) + (view.m2 * projection.m10)) + (view.m3 * projection.m14),
        .m12 = (((view.m0 * projection.m3) + (view.m1 * projection.m7)) + (view.m2 * projection.m11)) + (view.m3 * projection.m15),
        .m1 = (((view.m4 * projection.m0) + (view.m5 * projection.m4)) + (view.m6 * projection.m8)) + (view.m7 * projection.m12),
        .m5 = (((view.m4 * projection.m1) + (view.m5 * projection.m5)) + (view.m6 * projection.m9)) + (view.m7 * projection.m13),
        .m9 = (((view.m4 * projection.m2) + (view.m5 * projection.m6)) + (view.m6 * projection.m10)) + (view.m7 * projection.m14),
        .m13 = (((view.m4 * projection.m3) + (view.m5 * projection.m7)) + (view.m6 * projection.m11)) + (view.m7 * projection.m15),
        .m2 = (((view.m8 * projection.m0) + (view.m9 * projection.m4)) + (view.m10 * projection.m8)) + (view.m11 * projection.m12),
        .m6 = (((view.m8 * projection.m1) + (view.m9 * projection.m5)) + (view.m10 * projection.m9)) + (view.m11 * projection.m13),
        .m10 = (((view.m8 * projection.m2) + (view.m9 * projection.m6)) + (view.m10 * projection.m10)) + (view.m11 * projection.m14),
        .m14 = (((view.m8 * projection.m3) + (view.m9 * projection.m7)) + (view.m10 * projection.m11)) + (view.m11 * projection.m15),
        .m3 = (((view.m12 * projection.m0) + (view.m13 * projection.m4)) + (view.m14 * projection.m8)) + (view.m15 * projection.m12),
        .m7 = (((view.m12 * projection.m1) + (view.m13 * projection.m5)) + (view.m14 * projection.m9)) + (view.m15 * projection.m13),
        .m11 = (((view.m12 * projection.m2) + (view.m13 * projection.m6)) + (view.m14 * projection.m10)) + (view.m15 * projection.m14),
        .m15 = (((view.m12 * projection.m3) + (view.m13 * projection.m7)) + (view.m14 * projection.m11)) + (view.m15 * projection.m15),
    };
    var a00: f32 = matViewProj.m0;
    var a01: f32 = matViewProj.m1;
    var a02: f32 = matViewProj.m2;
    var a03: f32 = matViewProj.m3;
    var a10: f32 = matViewProj.m4;
    var a11: f32 = matViewProj.m5;
    var a12: f32 = matViewProj.m6;
    var a13: f32 = matViewProj.m7;
    var a20: f32 = matViewProj.m8;
    var a21: f32 = matViewProj.m9;
    var a22: f32 = matViewProj.m10;
    var a23: f32 = matViewProj.m11;
    var a30: f32 = matViewProj.m12;
    var a31: f32 = matViewProj.m13;
    var a32: f32 = matViewProj.m14;
    var a33: f32 = matViewProj.m15;
    var b00: f32 = (a00 * a11) - (a01 * a10);
    var b01: f32 = (a00 * a12) - (a02 * a10);
    var b02: f32 = (a00 * a13) - (a03 * a10);
    var b03: f32 = (a01 * a12) - (a02 * a11);
    var b04: f32 = (a01 * a13) - (a03 * a11);
    var b05: f32 = (a02 * a13) - (a03 * a12);
    var b06: f32 = (a20 * a31) - (a21 * a30);
    var b07: f32 = (a20 * a32) - (a22 * a30);
    var b08: f32 = (a20 * a33) - (a23 * a30);
    var b09: f32 = (a21 * a32) - (a22 * a31);
    var b10: f32 = (a21 * a33) - (a23 * a31);
    var b11: f32 = (a22 * a33) - (a23 * a32);
    var invDet: f32 = 1.0 / ((((((b00 * b11) - (b01 * b10)) + (b02 * b09)) + (b03 * b08)) - (b04 * b07)) + (b05 * b06));
    var matViewProjInv: Matrix = Matrix{
        .m0 = (((a11 * b11) - (a12 * b10)) + (a13 * b09)) * invDet,
        .m4 = (((-a01 * b11) + (a02 * b10)) - (a03 * b09)) * invDet,
        .m8 = (((a31 * b05) - (a32 * b04)) + (a33 * b03)) * invDet,
        .m12 = (((-a21 * b05) + (a22 * b04)) - (a23 * b03)) * invDet,
        .m1 = (((-a10 * b11) + (a12 * b08)) - (a13 * b07)) * invDet,
        .m5 = (((a00 * b11) - (a02 * b08)) + (a03 * b07)) * invDet,
        .m9 = (((-a30 * b05) + (a32 * b02)) - (a33 * b01)) * invDet,
        .m13 = (((a20 * b05) - (a22 * b02)) + (a23 * b01)) * invDet,
        .m2 = (((a10 * b10) - (a11 * b08)) + (a13 * b06)) * invDet,
        .m6 = (((-a00 * b10) + (a01 * b08)) - (a03 * b06)) * invDet,
        .m10 = (((a30 * b04) - (a31 * b02)) + (a33 * b00)) * invDet,
        .m14 = (((-a20 * b04) + (a21 * b02)) - (a23 * b00)) * invDet,
        .m3 = (((-a10 * b09) + (a11 * b07)) - (a12 * b06)) * invDet,
        .m7 = (((a00 * b09) - (a01 * b07)) + (a02 * b06)) * invDet,
        .m11 = (((-a30 * b03) + (a31 * b01)) - (a32 * b00)) * invDet,
        .m15 = (((a20 * b03) - (a21 * b01)) + (a22 * b00)) * invDet,
    };
    var quat: Quaternion = Quaternion{
        .x = source.x,
        .y = source.y,
        .z = source.z,
        .w = 1.0,
    };
    var qtransformed: Quaternion = Quaternion{
        .x = (((matViewProjInv.m0 * quat.x) + (matViewProjInv.m4 * quat.y)) + (matViewProjInv.m8 * quat.z)) + (matViewProjInv.m12 * quat.w),
        .y = (((matViewProjInv.m1 * quat.x) + (matViewProjInv.m5 * quat.y)) + (matViewProjInv.m9 * quat.z)) + (matViewProjInv.m13 * quat.w),
        .z = (((matViewProjInv.m2 * quat.x) + (matViewProjInv.m6 * quat.y)) + (matViewProjInv.m10 * quat.z)) + (matViewProjInv.m14 * quat.w),
        .w = (((matViewProjInv.m3 * quat.x) + (matViewProjInv.m7 * quat.y)) + (matViewProjInv.m11 * quat.z)) + (matViewProjInv.m15 * quat.w),
    };
    result.x = qtransformed.x / qtransformed.w;
    result.y = qtransformed.y / qtransformed.w;
    result.z = qtransformed.z / qtransformed.w;
    return result;
}
pub fn Vector3ToFloatV(arg_v: Vector3) callconv(.C) float3 {
    var v = arg_v;
    var buffer: float3 = float3{
        .v = [1]f32{
            0,
        } ++ [1]f32{0} ** 2,
    };
    buffer.v[@as(c_uint, @intCast(@as(c_int, 0)))] = v.x;
    buffer.v[@as(c_uint, @intCast(@as(c_int, 1)))] = v.y;
    buffer.v[@as(c_uint, @intCast(@as(c_int, 2)))] = v.z;
    return buffer;
}
pub fn Vector3Invert(arg_v: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var result: Vector3 = Vector3{
        .x = 1.0 / v.x,
        .y = 1.0 / v.y,
        .z = 1.0 / v.z,
    };
    return result;
}
pub fn Vector3Clamp(arg_v: Vector3, arg_min: Vector3, arg_max: Vector3) callconv(.C) Vector3 {
    var v = arg_v;
    var min = arg_min;
    var max = arg_max;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    result.x = fminf(max.x, fmaxf(min.x, v.x));
    result.y = fminf(max.y, fmaxf(min.y, v.y));
    result.z = fminf(max.z, fmaxf(min.z, v.z));
    return result;
}
pub fn Vector3ClampValue(arg_v: Vector3, arg_min: f32, arg_max: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var min = arg_min;
    var max = arg_max;
    var result: Vector3 = v;
    var length: f32 = ((v.x * v.x) + (v.y * v.y)) + (v.z * v.z);
    if (length > 0.0) {
        length = sqrtf(length);
        if (length < min) {
            var scale: f32 = min / length;
            result.x = v.x * scale;
            result.y = v.y * scale;
            result.z = v.z * scale;
        } else if (length > max) {
            var scale: f32 = max / length;
            result.x = v.x * scale;
            result.y = v.y * scale;
            result.z = v.z * scale;
        }
    }
    return result;
}
pub fn Vector3Equals(arg_p: Vector3, arg_q: Vector3) callconv(.C) c_int {
    var p = arg_p;
    var q = arg_q;
    var result: c_int = @intFromBool(((fabsf(p.x - q.x) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.x), fabsf(q.x))))) and (fabsf(p.y - q.y) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.y), fabsf(q.y)))))) and (fabsf(p.z - q.z) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.z), fabsf(q.z))))));
    return result;
}
pub fn Vector3Refract(arg_v: Vector3, arg_n: Vector3, arg_r: f32) callconv(.C) Vector3 {
    var v = arg_v;
    var n = arg_n;
    var r = arg_r;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var dot: f32 = ((v.x * n.x) + (v.y * n.y)) + (v.z * n.z);
    var d: f32 = 1.0 - ((r * r) * (1.0 - (dot * dot)));
    if (d >= 0.0) {
        d = sqrtf(d);
        v.x = (r * v.x) - (((r * dot) + d) * n.x);
        v.y = (r * v.y) - (((r * dot) + d) * n.y);
        v.z = (r * v.z) - (((r * dot) + d) * n.z);
        result = v;
    }
    return result;
}
pub fn MatrixDeterminant(arg_mat: Matrix) callconv(.C) f32 {
    var mat = arg_mat;
    var result: f32 = 0.0;
    var a00: f32 = mat.m0;
    var a01: f32 = mat.m1;
    var a02: f32 = mat.m2;
    var a03: f32 = mat.m3;
    var a10: f32 = mat.m4;
    var a11: f32 = mat.m5;
    var a12: f32 = mat.m6;
    var a13: f32 = mat.m7;
    var a20: f32 = mat.m8;
    var a21: f32 = mat.m9;
    var a22: f32 = mat.m10;
    var a23: f32 = mat.m11;
    var a30: f32 = mat.m12;
    var a31: f32 = mat.m13;
    var a32: f32 = mat.m14;
    var a33: f32 = mat.m15;
    result = (((((((((((((((((((((((((a30 * a21) * a12) * a03) - (((a20 * a31) * a12) * a03)) - (((a30 * a11) * a22) * a03)) + (((a10 * a31) * a22) * a03)) + (((a20 * a11) * a32) * a03)) - (((a10 * a21) * a32) * a03)) - (((a30 * a21) * a02) * a13)) + (((a20 * a31) * a02) * a13)) + (((a30 * a01) * a22) * a13)) - (((a00 * a31) * a22) * a13)) - (((a20 * a01) * a32) * a13)) + (((a00 * a21) * a32) * a13)) + (((a30 * a11) * a02) * a23)) - (((a10 * a31) * a02) * a23)) - (((a30 * a01) * a12) * a23)) + (((a00 * a31) * a12) * a23)) + (((a10 * a01) * a32) * a23)) - (((a00 * a11) * a32) * a23)) - (((a20 * a11) * a02) * a33)) + (((a10 * a21) * a02) * a33)) + (((a20 * a01) * a12) * a33)) - (((a00 * a21) * a12) * a33)) - (((a10 * a01) * a22) * a33)) + (((a00 * a11) * a22) * a33);
    return result;
}
pub fn MatrixTrace(arg_mat: Matrix) callconv(.C) f32 {
    var mat = arg_mat;
    var result: f32 = ((mat.m0 + mat.m5) + mat.m10) + mat.m15;
    return result;
}
pub fn MatrixTranspose(arg_mat: Matrix) callconv(.C) Matrix {
    var mat = arg_mat;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    result.m0 = mat.m0;
    result.m1 = mat.m4;
    result.m2 = mat.m8;
    result.m3 = mat.m12;
    result.m4 = mat.m1;
    result.m5 = mat.m5;
    result.m6 = mat.m9;
    result.m7 = mat.m13;
    result.m8 = mat.m2;
    result.m9 = mat.m6;
    result.m10 = mat.m10;
    result.m11 = mat.m14;
    result.m12 = mat.m3;
    result.m13 = mat.m7;
    result.m14 = mat.m11;
    result.m15 = mat.m15;
    return result;
}
pub fn MatrixInvert(arg_mat: Matrix) callconv(.C) Matrix {
    var mat = arg_mat;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var a00: f32 = mat.m0;
    var a01: f32 = mat.m1;
    var a02: f32 = mat.m2;
    var a03: f32 = mat.m3;
    var a10: f32 = mat.m4;
    var a11: f32 = mat.m5;
    var a12: f32 = mat.m6;
    var a13: f32 = mat.m7;
    var a20: f32 = mat.m8;
    var a21: f32 = mat.m9;
    var a22: f32 = mat.m10;
    var a23: f32 = mat.m11;
    var a30: f32 = mat.m12;
    var a31: f32 = mat.m13;
    var a32: f32 = mat.m14;
    var a33: f32 = mat.m15;
    var b00: f32 = (a00 * a11) - (a01 * a10);
    var b01: f32 = (a00 * a12) - (a02 * a10);
    var b02: f32 = (a00 * a13) - (a03 * a10);
    var b03: f32 = (a01 * a12) - (a02 * a11);
    var b04: f32 = (a01 * a13) - (a03 * a11);
    var b05: f32 = (a02 * a13) - (a03 * a12);
    var b06: f32 = (a20 * a31) - (a21 * a30);
    var b07: f32 = (a20 * a32) - (a22 * a30);
    var b08: f32 = (a20 * a33) - (a23 * a30);
    var b09: f32 = (a21 * a32) - (a22 * a31);
    var b10: f32 = (a21 * a33) - (a23 * a31);
    var b11: f32 = (a22 * a33) - (a23 * a32);
    var invDet: f32 = 1.0 / ((((((b00 * b11) - (b01 * b10)) + (b02 * b09)) + (b03 * b08)) - (b04 * b07)) + (b05 * b06));
    result.m0 = (((a11 * b11) - (a12 * b10)) + (a13 * b09)) * invDet;
    result.m1 = (((-a01 * b11) + (a02 * b10)) - (a03 * b09)) * invDet;
    result.m2 = (((a31 * b05) - (a32 * b04)) + (a33 * b03)) * invDet;
    result.m3 = (((-a21 * b05) + (a22 * b04)) - (a23 * b03)) * invDet;
    result.m4 = (((-a10 * b11) + (a12 * b08)) - (a13 * b07)) * invDet;
    result.m5 = (((a00 * b11) - (a02 * b08)) + (a03 * b07)) * invDet;
    result.m6 = (((-a30 * b05) + (a32 * b02)) - (a33 * b01)) * invDet;
    result.m7 = (((a20 * b05) - (a22 * b02)) + (a23 * b01)) * invDet;
    result.m8 = (((a10 * b10) - (a11 * b08)) + (a13 * b06)) * invDet;
    result.m9 = (((-a00 * b10) + (a01 * b08)) - (a03 * b06)) * invDet;
    result.m10 = (((a30 * b04) - (a31 * b02)) + (a33 * b00)) * invDet;
    result.m11 = (((-a20 * b04) + (a21 * b02)) - (a23 * b00)) * invDet;
    result.m12 = (((-a10 * b09) + (a11 * b07)) - (a12 * b06)) * invDet;
    result.m13 = (((a00 * b09) - (a01 * b07)) + (a02 * b06)) * invDet;
    result.m14 = (((-a30 * b03) + (a31 * b01)) - (a32 * b00)) * invDet;
    result.m15 = (((a20 * b03) - (a21 * b01)) + (a22 * b00)) * invDet;
    return result;
}
pub fn MatrixIdentity() callconv(.C) Matrix {
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    return result;
}
pub fn MatrixAdd(arg_left: Matrix, arg_right: Matrix) callconv(.C) Matrix {
    var left = arg_left;
    var right = arg_right;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    result.m0 = left.m0 + right.m0;
    result.m1 = left.m1 + right.m1;
    result.m2 = left.m2 + right.m2;
    result.m3 = left.m3 + right.m3;
    result.m4 = left.m4 + right.m4;
    result.m5 = left.m5 + right.m5;
    result.m6 = left.m6 + right.m6;
    result.m7 = left.m7 + right.m7;
    result.m8 = left.m8 + right.m8;
    result.m9 = left.m9 + right.m9;
    result.m10 = left.m10 + right.m10;
    result.m11 = left.m11 + right.m11;
    result.m12 = left.m12 + right.m12;
    result.m13 = left.m13 + right.m13;
    result.m14 = left.m14 + right.m14;
    result.m15 = left.m15 + right.m15;
    return result;
}
pub fn MatrixSubtract(arg_left: Matrix, arg_right: Matrix) callconv(.C) Matrix {
    var left = arg_left;
    var right = arg_right;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    result.m0 = left.m0 - right.m0;
    result.m1 = left.m1 - right.m1;
    result.m2 = left.m2 - right.m2;
    result.m3 = left.m3 - right.m3;
    result.m4 = left.m4 - right.m4;
    result.m5 = left.m5 - right.m5;
    result.m6 = left.m6 - right.m6;
    result.m7 = left.m7 - right.m7;
    result.m8 = left.m8 - right.m8;
    result.m9 = left.m9 - right.m9;
    result.m10 = left.m10 - right.m10;
    result.m11 = left.m11 - right.m11;
    result.m12 = left.m12 - right.m12;
    result.m13 = left.m13 - right.m13;
    result.m14 = left.m14 - right.m14;
    result.m15 = left.m15 - right.m15;
    return result;
}
pub fn MatrixMultiply(arg_left: Matrix, arg_right: Matrix) callconv(.C) Matrix {
    var left = arg_left;
    var right = arg_right;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    result.m0 = (((left.m0 * right.m0) + (left.m1 * right.m4)) + (left.m2 * right.m8)) + (left.m3 * right.m12);
    result.m1 = (((left.m0 * right.m1) + (left.m1 * right.m5)) + (left.m2 * right.m9)) + (left.m3 * right.m13);
    result.m2 = (((left.m0 * right.m2) + (left.m1 * right.m6)) + (left.m2 * right.m10)) + (left.m3 * right.m14);
    result.m3 = (((left.m0 * right.m3) + (left.m1 * right.m7)) + (left.m2 * right.m11)) + (left.m3 * right.m15);
    result.m4 = (((left.m4 * right.m0) + (left.m5 * right.m4)) + (left.m6 * right.m8)) + (left.m7 * right.m12);
    result.m5 = (((left.m4 * right.m1) + (left.m5 * right.m5)) + (left.m6 * right.m9)) + (left.m7 * right.m13);
    result.m6 = (((left.m4 * right.m2) + (left.m5 * right.m6)) + (left.m6 * right.m10)) + (left.m7 * right.m14);
    result.m7 = (((left.m4 * right.m3) + (left.m5 * right.m7)) + (left.m6 * right.m11)) + (left.m7 * right.m15);
    result.m8 = (((left.m8 * right.m0) + (left.m9 * right.m4)) + (left.m10 * right.m8)) + (left.m11 * right.m12);
    result.m9 = (((left.m8 * right.m1) + (left.m9 * right.m5)) + (left.m10 * right.m9)) + (left.m11 * right.m13);
    result.m10 = (((left.m8 * right.m2) + (left.m9 * right.m6)) + (left.m10 * right.m10)) + (left.m11 * right.m14);
    result.m11 = (((left.m8 * right.m3) + (left.m9 * right.m7)) + (left.m10 * right.m11)) + (left.m11 * right.m15);
    result.m12 = (((left.m12 * right.m0) + (left.m13 * right.m4)) + (left.m14 * right.m8)) + (left.m15 * right.m12);
    result.m13 = (((left.m12 * right.m1) + (left.m13 * right.m5)) + (left.m14 * right.m9)) + (left.m15 * right.m13);
    result.m14 = (((left.m12 * right.m2) + (left.m13 * right.m6)) + (left.m14 * right.m10)) + (left.m15 * right.m14);
    result.m15 = (((left.m12 * right.m3) + (left.m13 * right.m7)) + (left.m14 * right.m11)) + (left.m15 * right.m15);
    return result;
}
pub fn MatrixTranslate(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) Matrix {
    var x = arg_x;
    var y = arg_y;
    var z = arg_z;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = x,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = y,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = z,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    return result;
}
pub fn MatrixRotate(arg_axis: Vector3, arg_angle: f32) callconv(.C) Matrix {
    var axis = arg_axis;
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var x: f32 = axis.x;
    var y: f32 = axis.y;
    var z: f32 = axis.z;
    var lengthSquared: f32 = ((x * x) + (y * y)) + (z * z);
    if ((lengthSquared != 1.0) and (lengthSquared != 0.0)) {
        var ilength: f32 = 1.0 / sqrtf(lengthSquared);
        x *= ilength;
        y *= ilength;
        z *= ilength;
    }
    var sinres: f32 = sinf(angle);
    var cosres: f32 = cosf(angle);
    var t: f32 = 1.0 - cosres;
    result.m0 = ((x * x) * t) + cosres;
    result.m1 = ((y * x) * t) + (z * sinres);
    result.m2 = ((z * x) * t) - (y * sinres);
    result.m3 = 0.0;
    result.m4 = ((x * y) * t) - (z * sinres);
    result.m5 = ((y * y) * t) + cosres;
    result.m6 = ((z * y) * t) + (x * sinres);
    result.m7 = 0.0;
    result.m8 = ((x * z) * t) + (y * sinres);
    result.m9 = ((y * z) * t) - (x * sinres);
    result.m10 = ((z * z) * t) + cosres;
    result.m11 = 0.0;
    result.m12 = 0.0;
    result.m13 = 0.0;
    result.m14 = 0.0;
    result.m15 = 1.0;
    return result;
}
pub fn MatrixRotateX(arg_angle: f32) callconv(.C) Matrix {
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    var cosres: f32 = cosf(angle);
    var sinres: f32 = sinf(angle);
    result.m5 = cosres;
    result.m6 = sinres;
    result.m9 = -sinres;
    result.m10 = cosres;
    return result;
}
pub fn MatrixRotateY(arg_angle: f32) callconv(.C) Matrix {
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    var cosres: f32 = cosf(angle);
    var sinres: f32 = sinf(angle);
    result.m0 = cosres;
    result.m2 = -sinres;
    result.m8 = sinres;
    result.m10 = cosres;
    return result;
}
pub fn MatrixRotateZ(arg_angle: f32) callconv(.C) Matrix {
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    var cosres: f32 = cosf(angle);
    var sinres: f32 = sinf(angle);
    result.m0 = cosres;
    result.m1 = sinres;
    result.m4 = -sinres;
    result.m5 = cosres;
    return result;
}
pub fn MatrixRotateXYZ(arg_angle: Vector3) callconv(.C) Matrix {
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    var cosz: f32 = cosf(-angle.z);
    var sinz: f32 = sinf(-angle.z);
    var cosy: f32 = cosf(-angle.y);
    var siny: f32 = sinf(-angle.y);
    var cosx: f32 = cosf(-angle.x);
    var sinx: f32 = sinf(-angle.x);
    result.m0 = cosz * cosy;
    result.m1 = ((cosz * siny) * sinx) - (sinz * cosx);
    result.m2 = ((cosz * siny) * cosx) + (sinz * sinx);
    result.m4 = sinz * cosy;
    result.m5 = ((sinz * siny) * sinx) + (cosz * cosx);
    result.m6 = ((sinz * siny) * cosx) - (cosz * sinx);
    result.m8 = -siny;
    result.m9 = cosy * sinx;
    result.m10 = cosy * cosx;
    return result;
}
pub fn MatrixRotateZYX(arg_angle: Vector3) callconv(.C) Matrix {
    var angle = arg_angle;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var cz: f32 = cosf(angle.z);
    var sz: f32 = sinf(angle.z);
    var cy: f32 = cosf(angle.y);
    var sy: f32 = sinf(angle.y);
    var cx: f32 = cosf(angle.x);
    var sx: f32 = sinf(angle.x);
    result.m0 = cz * cy;
    result.m4 = ((cz * sy) * sx) - (cx * sz);
    result.m8 = (sz * sx) + ((cz * cx) * sy);
    result.m12 = 0;
    result.m1 = cy * sz;
    result.m5 = (cz * cx) + ((sz * sy) * sx);
    result.m9 = ((cx * sz) * sy) - (cz * sx);
    result.m13 = 0;
    result.m2 = -sy;
    result.m6 = cy * sx;
    result.m10 = cy * cx;
    result.m14 = 0;
    result.m3 = 0;
    result.m7 = 0;
    result.m11 = 0;
    result.m15 = 1;
    return result;
}
pub fn MatrixScale(arg_x: f32, arg_y: f32, arg_z: f32) callconv(.C) Matrix {
    var x = arg_x;
    var y = arg_y;
    var z = arg_z;
    var result: Matrix = Matrix{
        .m0 = x,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = y,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = z,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    return result;
}
pub fn MatrixFrustum(arg_left: f64, arg_right: f64, arg_bottom: f64, arg_top: f64, arg_near: f64, arg_far: f64) callconv(.C) Matrix {
    var left = arg_left;
    var right = arg_right;
    var bottom = arg_bottom;
    var top = arg_top;
    var near = arg_near;
    var far = arg_far;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var rl: f32 = @as(f32, @floatCast(right - left));
    var tb: f32 = @as(f32, @floatCast(top - bottom));
    var @"fn": f32 = @as(f32, @floatCast(far - near));
    result.m0 = (@as(f32, @floatCast(near)) * 2.0) / rl;
    result.m1 = 0.0;
    result.m2 = 0.0;
    result.m3 = 0.0;
    result.m4 = 0.0;
    result.m5 = (@as(f32, @floatCast(near)) * 2.0) / tb;
    result.m6 = 0.0;
    result.m7 = 0.0;
    result.m8 = (@as(f32, @floatCast(right)) + @as(f32, @floatCast(left))) / rl;
    result.m9 = (@as(f32, @floatCast(top)) + @as(f32, @floatCast(bottom))) / tb;
    result.m10 = -(@as(f32, @floatCast(far)) + @as(f32, @floatCast(near))) / @"fn";
    result.m11 = -1.0;
    result.m12 = 0.0;
    result.m13 = 0.0;
    result.m14 = -((@as(f32, @floatCast(far)) * @as(f32, @floatCast(near))) * 2.0) / @"fn";
    result.m15 = 0.0;
    return result;
}
pub fn MatrixPerspective(arg_fovY: f64, arg_aspect: f64, arg_nearPlane: f64, arg_farPlane: f64) callconv(.C) Matrix {
    var fovY = arg_fovY;
    var aspect = arg_aspect;
    var nearPlane = arg_nearPlane;
    var farPlane = arg_farPlane;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var top: f64 = nearPlane * tan(fovY * 0.5);
    var bottom: f64 = -top;
    var right: f64 = top * aspect;
    var left: f64 = -right;
    var rl: f32 = @as(f32, @floatCast(right - left));
    var tb: f32 = @as(f32, @floatCast(top - bottom));
    var @"fn": f32 = @as(f32, @floatCast(farPlane - nearPlane));
    result.m0 = (@as(f32, @floatCast(nearPlane)) * 2.0) / rl;
    result.m5 = (@as(f32, @floatCast(nearPlane)) * 2.0) / tb;
    result.m8 = (@as(f32, @floatCast(right)) + @as(f32, @floatCast(left))) / rl;
    result.m9 = (@as(f32, @floatCast(top)) + @as(f32, @floatCast(bottom))) / tb;
    result.m10 = -(@as(f32, @floatCast(farPlane)) + @as(f32, @floatCast(nearPlane))) / @"fn";
    result.m11 = -1.0;
    result.m14 = -((@as(f32, @floatCast(farPlane)) * @as(f32, @floatCast(nearPlane))) * 2.0) / @"fn";
    return result;
}
pub fn MatrixOrtho(arg_left: f64, arg_right: f64, arg_bottom: f64, arg_top: f64, arg_nearPlane: f64, arg_farPlane: f64) callconv(.C) Matrix {
    var left = arg_left;
    var right = arg_right;
    var bottom = arg_bottom;
    var top = arg_top;
    var nearPlane = arg_nearPlane;
    var farPlane = arg_farPlane;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var rl: f32 = @as(f32, @floatCast(right - left));
    var tb: f32 = @as(f32, @floatCast(top - bottom));
    var @"fn": f32 = @as(f32, @floatCast(farPlane - nearPlane));
    result.m0 = 2.0 / rl;
    result.m1 = 0.0;
    result.m2 = 0.0;
    result.m3 = 0.0;
    result.m4 = 0.0;
    result.m5 = 2.0 / tb;
    result.m6 = 0.0;
    result.m7 = 0.0;
    result.m8 = 0.0;
    result.m9 = 0.0;
    result.m10 = -2.0 / @"fn";
    result.m11 = 0.0;
    result.m12 = -(@as(f32, @floatCast(left)) + @as(f32, @floatCast(right))) / rl;
    result.m13 = -(@as(f32, @floatCast(top)) + @as(f32, @floatCast(bottom))) / tb;
    result.m14 = -(@as(f32, @floatCast(farPlane)) + @as(f32, @floatCast(nearPlane))) / @"fn";
    result.m15 = 1.0;
    return result;
}
pub fn MatrixLookAt(arg_eye: Vector3, arg_target: Vector3, arg_up: Vector3) callconv(.C) Matrix {
    var eye = arg_eye;
    var target = arg_target;
    var up = arg_up;
    var result: Matrix = Matrix{
        .m0 = @as(f32, @floatFromInt(@as(c_int, 0))),
        .m4 = 0,
        .m8 = 0,
        .m12 = 0,
        .m1 = 0,
        .m5 = 0,
        .m9 = 0,
        .m13 = 0,
        .m2 = 0,
        .m6 = 0,
        .m10 = 0,
        .m14 = 0,
        .m3 = 0,
        .m7 = 0,
        .m11 = 0,
        .m15 = 0,
    };
    var length: f32 = 0.0;
    var ilength: f32 = 0.0;
    var vz: Vector3 = Vector3{
        .x = eye.x - target.x,
        .y = eye.y - target.y,
        .z = eye.z - target.z,
    };
    var v: Vector3 = vz;
    length = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    if (length == 0.0) {
        length = 1.0;
    }
    ilength = 1.0 / length;
    vz.x *= ilength;
    vz.y *= ilength;
    vz.z *= ilength;
    var vx: Vector3 = Vector3{
        .x = (up.y * vz.z) - (up.z * vz.y),
        .y = (up.z * vz.x) - (up.x * vz.z),
        .z = (up.x * vz.y) - (up.y * vz.x),
    };
    v = vx;
    length = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
    if (length == 0.0) {
        length = 1.0;
    }
    ilength = 1.0 / length;
    vx.x *= ilength;
    vx.y *= ilength;
    vx.z *= ilength;
    var vy: Vector3 = Vector3{
        .x = (vz.y * vx.z) - (vz.z * vx.y),
        .y = (vz.z * vx.x) - (vz.x * vx.z),
        .z = (vz.x * vx.y) - (vz.y * vx.x),
    };
    result.m0 = vx.x;
    result.m1 = vy.x;
    result.m2 = vz.x;
    result.m3 = 0.0;
    result.m4 = vx.y;
    result.m5 = vy.y;
    result.m6 = vz.y;
    result.m7 = 0.0;
    result.m8 = vx.z;
    result.m9 = vy.z;
    result.m10 = vz.z;
    result.m11 = 0.0;
    result.m12 = -(((vx.x * eye.x) + (vx.y * eye.y)) + (vx.z * eye.z));
    result.m13 = -(((vy.x * eye.x) + (vy.y * eye.y)) + (vy.z * eye.z));
    result.m14 = -(((vz.x * eye.x) + (vz.y * eye.y)) + (vz.z * eye.z));
    result.m15 = 1.0;
    return result;
}
pub fn MatrixToFloatV(arg_mat: Matrix) callconv(.C) float16 {
    var mat = arg_mat;
    var result: float16 = float16{
        .v = [1]f32{
            0,
        } ++ [1]f32{0} ** 15,
    };
    result.v[@as(c_uint, @intCast(@as(c_int, 0)))] = mat.m0;
    result.v[@as(c_uint, @intCast(@as(c_int, 1)))] = mat.m1;
    result.v[@as(c_uint, @intCast(@as(c_int, 2)))] = mat.m2;
    result.v[@as(c_uint, @intCast(@as(c_int, 3)))] = mat.m3;
    result.v[@as(c_uint, @intCast(@as(c_int, 4)))] = mat.m4;
    result.v[@as(c_uint, @intCast(@as(c_int, 5)))] = mat.m5;
    result.v[@as(c_uint, @intCast(@as(c_int, 6)))] = mat.m6;
    result.v[@as(c_uint, @intCast(@as(c_int, 7)))] = mat.m7;
    result.v[@as(c_uint, @intCast(@as(c_int, 8)))] = mat.m8;
    result.v[@as(c_uint, @intCast(@as(c_int, 9)))] = mat.m9;
    result.v[@as(c_uint, @intCast(@as(c_int, 10)))] = mat.m10;
    result.v[@as(c_uint, @intCast(@as(c_int, 11)))] = mat.m11;
    result.v[@as(c_uint, @intCast(@as(c_int, 12)))] = mat.m12;
    result.v[@as(c_uint, @intCast(@as(c_int, 13)))] = mat.m13;
    result.v[@as(c_uint, @intCast(@as(c_int, 14)))] = mat.m14;
    result.v[@as(c_uint, @intCast(@as(c_int, 15)))] = mat.m15;
    return result;
}
pub fn QuaternionAdd(arg_q1: Quaternion, arg_q2: Quaternion) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var result: Quaternion = Quaternion{
        .x = q1.x + q2.x,
        .y = q1.y + q2.y,
        .z = q1.z + q2.z,
        .w = q1.w + q2.w,
    };
    return result;
}
pub fn QuaternionAddValue(arg_q: Quaternion, arg_add: f32) callconv(.C) Quaternion {
    var q = arg_q;
    var add = arg_add;
    var result: Quaternion = Quaternion{
        .x = q.x + add,
        .y = q.y + add,
        .z = q.z + add,
        .w = q.w + add,
    };
    return result;
}
pub fn QuaternionSubtract(arg_q1: Quaternion, arg_q2: Quaternion) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var result: Quaternion = Quaternion{
        .x = q1.x - q2.x,
        .y = q1.y - q2.y,
        .z = q1.z - q2.z,
        .w = q1.w - q2.w,
    };
    return result;
}
pub fn QuaternionSubtractValue(arg_q: Quaternion, arg_sub: f32) callconv(.C) Quaternion {
    var q = arg_q;
    var sub = arg_sub;
    var result: Quaternion = Quaternion{
        .x = q.x - sub,
        .y = q.y - sub,
        .z = q.z - sub,
        .w = q.w - sub,
    };
    return result;
}
pub fn QuaternionIdentity() callconv(.C) Quaternion {
    var result: Quaternion = Quaternion{
        .x = 0.0,
        .y = 0.0,
        .z = 0.0,
        .w = 1.0,
    };
    return result;
}
pub fn QuaternionLength(arg_q: Quaternion) callconv(.C) f32 {
    var q = arg_q;
    var result: f32 = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
    return result;
}
pub fn QuaternionNormalize(arg_q: Quaternion) callconv(.C) Quaternion {
    var q = arg_q;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var length: f32 = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
    if (length == 0.0) {
        length = 1.0;
    }
    var ilength: f32 = 1.0 / length;
    result.x = q.x * ilength;
    result.y = q.y * ilength;
    result.z = q.z * ilength;
    result.w = q.w * ilength;
    return result;
}
pub fn QuaternionInvert(arg_q: Quaternion) callconv(.C) Quaternion {
    var q = arg_q;
    var result: Quaternion = q;
    var lengthSq: f32 = (((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w);
    if (lengthSq != 0.0) {
        var invLength: f32 = 1.0 / lengthSq;
        result.x *= -invLength;
        result.y *= -invLength;
        result.z *= -invLength;
        result.w *= invLength;
    }
    return result;
}
pub fn QuaternionMultiply(arg_q1: Quaternion, arg_q2: Quaternion) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var qax: f32 = q1.x;
    var qay: f32 = q1.y;
    var qaz: f32 = q1.z;
    var qaw: f32 = q1.w;
    var qbx: f32 = q2.x;
    var qby: f32 = q2.y;
    var qbz: f32 = q2.z;
    var qbw: f32 = q2.w;
    result.x = (((qax * qbw) + (qaw * qbx)) + (qay * qbz)) - (qaz * qby);
    result.y = (((qay * qbw) + (qaw * qby)) + (qaz * qbx)) - (qax * qbz);
    result.z = (((qaz * qbw) + (qaw * qbz)) + (qax * qby)) - (qay * qbx);
    result.w = (((qaw * qbw) - (qax * qbx)) - (qay * qby)) - (qaz * qbz);
    return result;
}
pub fn QuaternionScale(arg_q: Quaternion, arg_mul: f32) callconv(.C) Quaternion {
    var q = arg_q;
    var mul = arg_mul;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    result.x = q.x * mul;
    result.y = q.y * mul;
    result.z = q.z * mul;
    result.w = q.w * mul;
    return result;
}
pub fn QuaternionDivide(arg_q1: Quaternion, arg_q2: Quaternion) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var result: Quaternion = Quaternion{
        .x = q1.x / q2.x,
        .y = q1.y / q2.y,
        .z = q1.z / q2.z,
        .w = q1.w / q2.w,
    };
    return result;
}
pub fn QuaternionLerp(arg_q1: Quaternion, arg_q2: Quaternion, arg_amount: f32) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var amount = arg_amount;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    result.x = q1.x + (amount * (q2.x - q1.x));
    result.y = q1.y + (amount * (q2.y - q1.y));
    result.z = q1.z + (amount * (q2.z - q1.z));
    result.w = q1.w + (amount * (q2.w - q1.w));
    return result;
}
pub fn QuaternionNlerp(arg_q1: Quaternion, arg_q2: Quaternion, arg_amount: f32) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var amount = arg_amount;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    result.x = q1.x + (amount * (q2.x - q1.x));
    result.y = q1.y + (amount * (q2.y - q1.y));
    result.z = q1.z + (amount * (q2.z - q1.z));
    result.w = q1.w + (amount * (q2.w - q1.w));
    var q: Quaternion = result;
    var length: f32 = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
    if (length == 0.0) {
        length = 1.0;
    }
    var ilength: f32 = 1.0 / length;
    result.x = q.x * ilength;
    result.y = q.y * ilength;
    result.z = q.z * ilength;
    result.w = q.w * ilength;
    return result;
}
pub fn QuaternionSlerp(arg_q1: Quaternion, arg_q2: Quaternion, arg_amount: f32) callconv(.C) Quaternion {
    var q1 = arg_q1;
    var q2 = arg_q2;
    var amount = arg_amount;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var cosHalfTheta: f32 = (((q1.x * q2.x) + (q1.y * q2.y)) + (q1.z * q2.z)) + (q1.w * q2.w);
    if (cosHalfTheta < @as(f32, @floatFromInt(@as(c_int, 0)))) {
        q2.x = -q2.x;
        q2.y = -q2.y;
        q2.z = -q2.z;
        q2.w = -q2.w;
        cosHalfTheta = -cosHalfTheta;
    }
    if (fabsf(cosHalfTheta) >= 1.0) {
        result = q1;
    } else if (cosHalfTheta > 0.949999988079071) {
        result = QuaternionNlerp(q1, q2, amount);
    } else {
        var halfTheta: f32 = acosf(cosHalfTheta);
        var sinHalfTheta: f32 = sqrtf(1.0 - (cosHalfTheta * cosHalfTheta));
        if (fabsf(sinHalfTheta) < 0.0010000000474974513) {
            result.x = (q1.x * 0.5) + (q2.x * 0.5);
            result.y = (q1.y * 0.5) + (q2.y * 0.5);
            result.z = (q1.z * 0.5) + (q2.z * 0.5);
            result.w = (q1.w * 0.5) + (q2.w * 0.5);
        } else {
            var ratioA: f32 = sinf((@as(f32, @floatFromInt(@as(c_int, 1))) - amount) * halfTheta) / sinHalfTheta;
            var ratioB: f32 = sinf(amount * halfTheta) / sinHalfTheta;
            result.x = (q1.x * ratioA) + (q2.x * ratioB);
            result.y = (q1.y * ratioA) + (q2.y * ratioB);
            result.z = (q1.z * ratioA) + (q2.z * ratioB);
            result.w = (q1.w * ratioA) + (q2.w * ratioB);
        }
    }
    return result;
}
pub fn QuaternionFromVector3ToVector3(arg_from: Vector3, arg_to: Vector3) callconv(.C) Quaternion {
    var from = arg_from;
    var to = arg_to;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var cos2Theta: f32 = ((from.x * to.x) + (from.y * to.y)) + (from.z * to.z);
    var cross: Vector3 = Vector3{
        .x = (from.y * to.z) - (from.z * to.y),
        .y = (from.z * to.x) - (from.x * to.z),
        .z = (from.x * to.y) - (from.y * to.x),
    };
    result.x = cross.x;
    result.y = cross.y;
    result.z = cross.z;
    result.w = 1.0 + cos2Theta;
    var q: Quaternion = result;
    var length: f32 = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
    if (length == 0.0) {
        length = 1.0;
    }
    var ilength: f32 = 1.0 / length;
    result.x = q.x * ilength;
    result.y = q.y * ilength;
    result.z = q.z * ilength;
    result.w = q.w * ilength;
    return result;
}
pub fn QuaternionFromMatrix(arg_mat: Matrix) callconv(.C) Quaternion {
    var mat = arg_mat;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var fourWSquaredMinus1: f32 = (mat.m0 + mat.m5) + mat.m10;
    var fourXSquaredMinus1: f32 = (mat.m0 - mat.m5) - mat.m10;
    var fourYSquaredMinus1: f32 = (mat.m5 - mat.m0) - mat.m10;
    var fourZSquaredMinus1: f32 = (mat.m10 - mat.m0) - mat.m5;
    var biggestIndex: c_int = 0;
    var fourBiggestSquaredMinus1: f32 = fourWSquaredMinus1;
    if (fourXSquaredMinus1 > fourBiggestSquaredMinus1) {
        fourBiggestSquaredMinus1 = fourXSquaredMinus1;
        biggestIndex = 1;
    }
    if (fourYSquaredMinus1 > fourBiggestSquaredMinus1) {
        fourBiggestSquaredMinus1 = fourYSquaredMinus1;
        biggestIndex = 2;
    }
    if (fourZSquaredMinus1 > fourBiggestSquaredMinus1) {
        fourBiggestSquaredMinus1 = fourZSquaredMinus1;
        biggestIndex = 3;
    }
    var biggestVal: f32 = sqrtf(fourBiggestSquaredMinus1 + 1.0) * 0.5;
    var mult: f32 = 0.25 / biggestVal;
    while (true) {
        switch (biggestIndex) {
            @as(c_int, 0) => {
                result.w = biggestVal;
                result.x = (mat.m6 - mat.m9) * mult;
                result.y = (mat.m8 - mat.m2) * mult;
                result.z = (mat.m1 - mat.m4) * mult;
                break;
            },
            @as(c_int, 1) => {
                result.x = biggestVal;
                result.w = (mat.m6 - mat.m9) * mult;
                result.y = (mat.m1 + mat.m4) * mult;
                result.z = (mat.m8 + mat.m2) * mult;
                break;
            },
            @as(c_int, 2) => {
                result.y = biggestVal;
                result.w = (mat.m8 - mat.m2) * mult;
                result.x = (mat.m1 + mat.m4) * mult;
                result.z = (mat.m6 + mat.m9) * mult;
                break;
            },
            @as(c_int, 3) => {
                result.z = biggestVal;
                result.w = (mat.m1 - mat.m4) * mult;
                result.x = (mat.m8 + mat.m2) * mult;
                result.y = (mat.m6 + mat.m9) * mult;
                break;
            },
            else => {},
        }
        break;
    }
    return result;
}
pub fn QuaternionToMatrix(arg_q: Quaternion) callconv(.C) Matrix {
    var q = arg_q;
    var result: Matrix = Matrix{
        .m0 = 1.0,
        .m4 = 0.0,
        .m8 = 0.0,
        .m12 = 0.0,
        .m1 = 0.0,
        .m5 = 1.0,
        .m9 = 0.0,
        .m13 = 0.0,
        .m2 = 0.0,
        .m6 = 0.0,
        .m10 = 1.0,
        .m14 = 0.0,
        .m3 = 0.0,
        .m7 = 0.0,
        .m11 = 0.0,
        .m15 = 1.0,
    };
    var a2: f32 = q.x * q.x;
    var b2: f32 = q.y * q.y;
    var c2: f32 = q.z * q.z;
    var ac: f32 = q.x * q.z;
    var ab: f32 = q.x * q.y;
    var bc: f32 = q.y * q.z;
    var ad: f32 = q.w * q.x;
    var bd: f32 = q.w * q.y;
    var cd: f32 = q.w * q.z;
    result.m0 = @as(f32, @floatFromInt(@as(c_int, 1))) - (@as(f32, @floatFromInt(@as(c_int, 2))) * (b2 + c2));
    result.m1 = @as(f32, @floatFromInt(@as(c_int, 2))) * (ab + cd);
    result.m2 = @as(f32, @floatFromInt(@as(c_int, 2))) * (ac - bd);
    result.m4 = @as(f32, @floatFromInt(@as(c_int, 2))) * (ab - cd);
    result.m5 = @as(f32, @floatFromInt(@as(c_int, 1))) - (@as(f32, @floatFromInt(@as(c_int, 2))) * (a2 + c2));
    result.m6 = @as(f32, @floatFromInt(@as(c_int, 2))) * (bc + ad);
    result.m8 = @as(f32, @floatFromInt(@as(c_int, 2))) * (ac + bd);
    result.m9 = @as(f32, @floatFromInt(@as(c_int, 2))) * (bc - ad);
    result.m10 = @as(f32, @floatFromInt(@as(c_int, 1))) - (@as(f32, @floatFromInt(@as(c_int, 2))) * (a2 + b2));
    return result;
}
pub fn QuaternionFromAxisAngle(arg_axis: Vector3, arg_angle: f32) callconv(.C) Quaternion {
    var axis = arg_axis;
    var angle = arg_angle;
    var result: Quaternion = Quaternion{
        .x = 0.0,
        .y = 0.0,
        .z = 0.0,
        .w = 1.0,
    };
    var axisLength: f32 = sqrtf(((axis.x * axis.x) + (axis.y * axis.y)) + (axis.z * axis.z));
    if (axisLength != 0.0) {
        angle *= 0.5;
        var length: f32 = 0.0;
        var ilength: f32 = 0.0;
        var v: Vector3 = axis;
        length = sqrtf(((v.x * v.x) + (v.y * v.y)) + (v.z * v.z));
        if (length == 0.0) {
            length = 1.0;
        }
        ilength = 1.0 / length;
        axis.x *= ilength;
        axis.y *= ilength;
        axis.z *= ilength;
        var sinres: f32 = sinf(angle);
        var cosres: f32 = cosf(angle);
        result.x = axis.x * sinres;
        result.y = axis.y * sinres;
        result.z = axis.z * sinres;
        result.w = cosres;
        var q: Quaternion = result;
        length = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
        if (length == 0.0) {
            length = 1.0;
        }
        ilength = 1.0 / length;
        result.x = q.x * ilength;
        result.y = q.y * ilength;
        result.z = q.z * ilength;
        result.w = q.w * ilength;
    }
    return result;
}
pub fn QuaternionToAxisAngle(arg_q: Quaternion, arg_outAxis: [*c]Vector3, arg_outAngle: [*c]f32) callconv(.C) void {
    var q = arg_q;
    var outAxis = arg_outAxis;
    var outAngle = arg_outAngle;
    if (fabsf(q.w) > 1.0) {
        var length: f32 = sqrtf((((q.x * q.x) + (q.y * q.y)) + (q.z * q.z)) + (q.w * q.w));
        if (length == 0.0) {
            length = 1.0;
        }
        var ilength: f32 = 1.0 / length;
        q.x = q.x * ilength;
        q.y = q.y * ilength;
        q.z = q.z * ilength;
        q.w = q.w * ilength;
    }
    var resAxis: Vector3 = Vector3{
        .x = 0.0,
        .y = 0.0,
        .z = 0.0,
    };
    var resAngle: f32 = 2.0 * acosf(q.w);
    var den: f32 = sqrtf(1.0 - (q.w * q.w));
    if (den > 0.00009999999747378752) {
        resAxis.x = q.x / den;
        resAxis.y = q.y / den;
        resAxis.z = q.z / den;
    } else {
        resAxis.x = 1.0;
    }
    outAxis.* = resAxis;
    outAngle.* = resAngle;
}
pub fn QuaternionFromEuler(arg_pitch: f32, arg_yaw: f32, arg_roll: f32) callconv(.C) Quaternion {
    var pitch = arg_pitch;
    var yaw = arg_yaw;
    var roll = arg_roll;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    var x0: f32 = cosf(pitch * 0.5);
    var x1: f32 = sinf(pitch * 0.5);
    var y0_1: f32 = cosf(yaw * 0.5);
    var y1_2: f32 = sinf(yaw * 0.5);
    var z0: f32 = cosf(roll * 0.5);
    var z1: f32 = sinf(roll * 0.5);
    result.x = ((x1 * y0_1) * z0) - ((x0 * y1_2) * z1);
    result.y = ((x0 * y1_2) * z0) + ((x1 * y0_1) * z1);
    result.z = ((x0 * y0_1) * z1) - ((x1 * y1_2) * z0);
    result.w = ((x0 * y0_1) * z0) + ((x1 * y1_2) * z1);
    return result;
}
pub fn QuaternionToEuler(arg_q: Quaternion) callconv(.C) Vector3 {
    var q = arg_q;
    var result: Vector3 = Vector3{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
    };
    var x0: f32 = 2.0 * ((q.w * q.x) + (q.y * q.z));
    var x1: f32 = 1.0 - (2.0 * ((q.x * q.x) + (q.y * q.y)));
    result.x = atan2f(x0, x1);
    var y0_1: f32 = 2.0 * ((q.w * q.y) - (q.z * q.x));
    y0_1 = if (y0_1 > 1.0) 1.0 else y0_1;
    y0_1 = if (y0_1 < -1.0) -1.0 else y0_1;
    result.y = asinf(y0_1);
    var z0: f32 = 2.0 * ((q.w * q.z) + (q.x * q.y));
    var z1: f32 = 1.0 - (2.0 * ((q.y * q.y) + (q.z * q.z)));
    result.z = atan2f(z0, z1);
    return result;
}
pub fn QuaternionTransform(arg_q: Quaternion, arg_mat: Matrix) callconv(.C) Quaternion {
    var q = arg_q;
    var mat = arg_mat;
    var result: Quaternion = Quaternion{
        .x = @as(f32, @floatFromInt(@as(c_int, 0))),
        .y = 0,
        .z = 0,
        .w = 0,
    };
    result.x = (((mat.m0 * q.x) + (mat.m4 * q.y)) + (mat.m8 * q.z)) + (mat.m12 * q.w);
    result.y = (((mat.m1 * q.x) + (mat.m5 * q.y)) + (mat.m9 * q.z)) + (mat.m13 * q.w);
    result.z = (((mat.m2 * q.x) + (mat.m6 * q.y)) + (mat.m10 * q.z)) + (mat.m14 * q.w);
    result.w = (((mat.m3 * q.x) + (mat.m7 * q.y)) + (mat.m11 * q.z)) + (mat.m15 * q.w);
    return result;
}
pub fn QuaternionEquals(arg_p: Quaternion, arg_q: Quaternion) callconv(.C) c_int {
    var p = arg_p;
    var q = arg_q;
    var result: c_int = @intFromBool(((((fabsf(p.x - q.x) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.x), fabsf(q.x))))) and (fabsf(p.y - q.y) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.y), fabsf(q.y)))))) and (fabsf(p.z - q.z) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.z), fabsf(q.z)))))) and (fabsf(p.w - q.w) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.w), fabsf(q.w)))))) or ((((fabsf(p.x + q.x) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.x), fabsf(q.x))))) and (fabsf(p.y + q.y) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.y), fabsf(q.y)))))) and (fabsf(p.z + q.z) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.z), fabsf(q.z)))))) and (fabsf(p.w + q.w) <= (0.0000009999999974752427 * fmaxf(1.0, fmaxf(fabsf(p.w), fabsf(q.w)))))));
    return result;
}
pub const __INTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):79:9
pub const __UINTMAX_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):85:9
pub const __FLT16_DENORM_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):108:9
pub const __FLT16_EPSILON__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):112:9
pub const __FLT16_MAX__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):118:9
pub const __FLT16_MIN__ = @compileError("unable to translate C expr: unexpected token 'IntegerLiteral'"); // (no file):121:9
pub const __INT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `LL`"); // (no file):183:9
pub const __UINT32_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `U`"); // (no file):205:9
pub const __UINT64_C_SUFFIX__ = @compileError("unable to translate macro: undefined identifier `ULL`"); // (no file):213:9
pub const __seg_gs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):342:9
pub const __seg_fs = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):343:9
pub const __declspec = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):423:9
pub const _cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):424:9
pub const __cdecl = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):425:9
pub const _stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):426:9
pub const __stdcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):427:9
pub const _fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):428:9
pub const __fastcall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):429:9
pub const _thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):430:9
pub const __thiscall = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):431:9
pub const _pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):432:9
pub const __pascal = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // (no file):433:9
pub const va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\include/stdarg.h:33:9
pub const va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\include/stdarg.h:35:9
pub const va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\include/stdarg.h:36:9
pub const __va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\include/stdarg.h:41:9
pub const va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\include/stdarg.h:46:9
pub const RL_MALLOC = @compileError("unable to translate macro: undefined identifier `malloc`"); // C:\code\redefine\zig-cache\i\5c690dd0957aad475dd4f0b41919d0db\include/raylib.h:122:13
pub const RL_CALLOC = @compileError("unable to translate macro: undefined identifier `calloc`"); // C:\code\redefine\zig-cache\i\5c690dd0957aad475dd4f0b41919d0db\include/raylib.h:125:13
pub const RL_REALLOC = @compileError("unable to translate macro: undefined identifier `realloc`"); // C:\code\redefine\zig-cache\i\5c690dd0957aad475dd4f0b41919d0db\include/raylib.h:128:13
pub const RL_FREE = @compileError("unable to translate macro: undefined identifier `free`"); // C:\code\redefine\zig-cache\i\5c690dd0957aad475dd4f0b41919d0db\include/raylib.h:131:13
pub const RMAPI = @compileError("unable to translate C expr: unexpected token 'inline'"); // C:\code\redefine\zig-cache\i\5c690dd0957aad475dd4f0b41919d0db\include/raymath.h:73:17
pub const __STRINGIFY = @compileError("unable to translate C expr: unexpected token '#'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:10:9
pub const __MINGW64_VERSION_STR = @compileError("unable to translate C expr: unexpected token 'StringLiteral'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:26:9
pub const __MINGW_IMP_SYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:119:11
pub const __MINGW_IMP_LSYMBOL = @compileError("unable to translate macro: undefined identifier `__imp_`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:120:11
pub const __MINGW_LSYMBOL = @compileError("unable to translate C expr: unexpected token '##'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:122:11
pub const __MINGW_ASM_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:130:9
pub const __MINGW_ASM_CRT_CALL = @compileError("unable to translate macro: undefined identifier `__asm__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:131:9
pub const __MINGW_EXTENSION = @compileError("unable to translate macro: undefined identifier `__extension__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:163:13
pub const __MINGW_POISON_NAME = @compileError("unable to translate macro: undefined identifier `_layout_has_not_been_verified_and_its_declaration_is_most_likely_incorrect`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:203:11
pub const __MINGW_ATTRIB_DEPRECATED_STR = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:247:11
pub const __MINGW_MS_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:270:9
pub const __MINGW_MS_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:273:9
pub const __MINGW_GNU_PRINTF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:276:9
pub const __MINGW_GNU_SCANF = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:279:9
pub const __mingw_ovr = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:289:11
pub const __MINGW_SELECTANY = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_mac.h:304:9
pub const __MINGW_CRT_NAME_CONCAT2 = @compileError("unable to translate macro: undefined identifier `_s`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_secapi.h:41:9
pub const __CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY_0_3_ = @compileError("unable to translate C expr: unexpected token 'Identifier'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw_secapi.h:69:9
pub const __MINGW_IMPORT = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:51:12
pub const _CRTIMP = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:59:15
pub const _inline = @compileError("unable to translate macro: undefined identifier `__inline`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:81:9
pub const __CRT_INLINE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:90:11
pub const __MINGW_INTRIN_INLINE = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:97:9
pub const __UNUSED_PARAM = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:111:11
pub const __restrict_arr = @compileError("unable to translate macro: undefined identifier `__restrict`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:126:10
pub const __MINGW_ATTRIB_NORETURN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:142:9
pub const __MINGW_ATTRIB_CONST = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:143:9
pub const __MINGW_ATTRIB_MALLOC = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:153:9
pub const __MINGW_ATTRIB_PURE = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:154:9
pub const __MINGW_ATTRIB_NONNULL = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:167:9
pub const __MINGW_ATTRIB_UNUSED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:173:9
pub const __MINGW_ATTRIB_USED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:179:9
pub const __MINGW_ATTRIB_DEPRECATED = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:180:9
pub const __MINGW_ATTRIB_DEPRECATED_MSG = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:182:9
pub const __MINGW_NOTHROW = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:197:9
pub const __MINGW_PRAGMA_PARAM = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:215:9
pub const __MINGW_BROKEN_INTERFACE = @compileError("unable to translate macro: undefined identifier `message`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:218:9
pub const __forceinline = @compileError("unable to translate macro: undefined identifier `__inline__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:273:9
pub const _crt_va_start = @compileError("unable to translate macro: undefined identifier `__builtin_va_start`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/vadefs.h:48:9
pub const _crt_va_arg = @compileError("unable to translate macro: undefined identifier `__builtin_va_arg`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/vadefs.h:49:9
pub const _crt_va_end = @compileError("unable to translate macro: undefined identifier `__builtin_va_end`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/vadefs.h:50:9
pub const _crt_va_copy = @compileError("unable to translate macro: undefined identifier `__builtin_va_copy`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/vadefs.h:51:9
pub const __CRT_STRINGIZE = @compileError("unable to translate C expr: unexpected token '#'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:292:9
pub const __CRT_WIDE = @compileError("unable to translate macro: undefined identifier `L`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:297:9
pub const _CRT_DEPRECATE_TEXT = @compileError("unable to translate macro: undefined identifier `deprecated`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:356:9
pub const _CRT_INSECURE_DEPRECATE_MEMORY = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:359:9
pub const _CRT_INSECURE_DEPRECATE_GLOBALS = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:363:9
pub const _CRT_OBSOLETE = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:371:9
pub const _CRT_ALIGN = @compileError("unable to translate macro: undefined identifier `__attribute__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:398:9
pub const _CRT_glob = @compileError("unable to translate macro: undefined identifier `_dowildcard`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:462:9
pub const _UNION_NAME = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:482:9
pub const _STRUCT_NAME = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:483:9
pub const __CRT_UUID_DECL = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/_mingw.h:570:9
pub const _CRT_SECURE_CPP_NOTHROW = @compileError("unable to translate macro: undefined identifier `throw`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:143:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:262:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:263:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:264:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:265:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:266:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:267:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:268:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:269:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:270:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:271:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:272:9
pub const __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:273:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:277:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:279:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:281:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:283:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 = @compileError("unable to translate macro: undefined identifier `__func_name`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:285:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:422:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:423:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:424:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_3_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:425:9
pub const __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4_EX = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:426:9
pub const __crt_typefix = @compileError("unable to translate C expr: unexpected token 'Eof'"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/corecrt.h:486:9
pub const __mingw_types_compatible_p = @compileError("unable to translate macro: undefined identifier `__builtin_types_compatible_p`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:97:9
pub const __mingw_choose_expr = @compileError("unable to translate macro: undefined identifier `__builtin_choose_expr`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:105:9
pub const HUGE_VAL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_val`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:156:9
pub const HUGE_VALL = @compileError("unable to translate macro: undefined identifier `__builtin_huge_vall`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:350:9
pub const fpclassify = @compileError("unable to translate macro: undefined identifier `__typeof__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:492:9
pub const isnan = @compileError("unable to translate macro: undefined identifier `__typeof__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:586:9
pub const signbit = @compileError("unable to translate macro: undefined identifier `__typeof__`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:646:9
pub const isgreater = @compileError("unable to translate macro: undefined identifier `__builtin_isgreater`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1144:9
pub const isgreaterequal = @compileError("unable to translate macro: undefined identifier `__builtin_isgreaterequal`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1145:9
pub const isless = @compileError("unable to translate macro: undefined identifier `__builtin_isless`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1146:9
pub const islessequal = @compileError("unable to translate macro: undefined identifier `__builtin_islessequal`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1147:9
pub const islessgreater = @compileError("unable to translate macro: undefined identifier `__builtin_islessgreater`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1148:9
pub const isunordered = @compileError("unable to translate macro: undefined identifier `__builtin_isunordered`"); // C:\ProgramData\chocolatey\lib\zig\tools\zig-windows-x86_64-0.11.0\lib\libc\include\any-windows-any/math.h:1149:9
pub const __llvm__ = @as(c_int, 1);
pub const __clang__ = @as(c_int, 1);
pub const __clang_major__ = @as(c_int, 16);
pub const __clang_minor__ = @as(c_int, 0);
pub const __clang_patchlevel__ = @as(c_int, 6);
pub const __clang_version__ = "16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)";
pub const __GNUC__ = @as(c_int, 4);
pub const __GNUC_MINOR__ = @as(c_int, 2);
pub const __GNUC_PATCHLEVEL__ = @as(c_int, 1);
pub const __GXX_ABI_VERSION = @as(c_int, 1002);
pub const __ATOMIC_RELAXED = @as(c_int, 0);
pub const __ATOMIC_CONSUME = @as(c_int, 1);
pub const __ATOMIC_ACQUIRE = @as(c_int, 2);
pub const __ATOMIC_RELEASE = @as(c_int, 3);
pub const __ATOMIC_ACQ_REL = @as(c_int, 4);
pub const __ATOMIC_SEQ_CST = @as(c_int, 5);
pub const __OPENCL_MEMORY_SCOPE_WORK_ITEM = @as(c_int, 0);
pub const __OPENCL_MEMORY_SCOPE_WORK_GROUP = @as(c_int, 1);
pub const __OPENCL_MEMORY_SCOPE_DEVICE = @as(c_int, 2);
pub const __OPENCL_MEMORY_SCOPE_ALL_SVM_DEVICES = @as(c_int, 3);
pub const __OPENCL_MEMORY_SCOPE_SUB_GROUP = @as(c_int, 4);
pub const __PRAGMA_REDEFINE_EXTNAME = @as(c_int, 1);
pub const __VERSION__ = "Clang 16.0.6 (https://github.com/ziglang/zig-bootstrap 1dda86241204c4649f668d46b6a37feed707c7b4)";
pub const __OBJC_BOOL_IS_BOOL = @as(c_int, 0);
pub const __CONSTANT_CFSTRINGS__ = @as(c_int, 1);
pub const __SEH__ = @as(c_int, 1);
pub const __clang_literal_encoding__ = "UTF-8";
pub const __clang_wide_literal_encoding__ = "UTF-16";
pub const __ORDER_LITTLE_ENDIAN__ = @as(c_int, 1234);
pub const __ORDER_BIG_ENDIAN__ = @as(c_int, 4321);
pub const __ORDER_PDP_ENDIAN__ = @as(c_int, 3412);
pub const __BYTE_ORDER__ = __ORDER_LITTLE_ENDIAN__;
pub const __LITTLE_ENDIAN__ = @as(c_int, 1);
pub const __CHAR_BIT__ = @as(c_int, 8);
pub const __BOOL_WIDTH__ = @as(c_int, 8);
pub const __SHRT_WIDTH__ = @as(c_int, 16);
pub const __INT_WIDTH__ = @as(c_int, 32);
pub const __LONG_WIDTH__ = @as(c_int, 32);
pub const __LLONG_WIDTH__ = @as(c_int, 64);
pub const __BITINT_MAXWIDTH__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 8388608, .decimal);
pub const __SCHAR_MAX__ = @as(c_int, 127);
pub const __SHRT_MAX__ = @as(c_int, 32767);
pub const __INT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __LONG_MAX__ = @as(c_long, 2147483647);
pub const __LONG_LONG_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __WCHAR_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WCHAR_WIDTH__ = @as(c_int, 16);
pub const __WINT_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __WINT_WIDTH__ = @as(c_int, 16);
pub const __INTMAX_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTMAX_WIDTH__ = @as(c_int, 64);
pub const __SIZE_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __SIZE_WIDTH__ = @as(c_int, 64);
pub const __UINTMAX_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTMAX_WIDTH__ = @as(c_int, 64);
pub const __PTRDIFF_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __PTRDIFF_WIDTH__ = @as(c_int, 64);
pub const __INTPTR_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INTPTR_WIDTH__ = @as(c_int, 64);
pub const __UINTPTR_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINTPTR_WIDTH__ = @as(c_int, 64);
pub const __SIZEOF_DOUBLE__ = @as(c_int, 8);
pub const __SIZEOF_FLOAT__ = @as(c_int, 4);
pub const __SIZEOF_INT__ = @as(c_int, 4);
pub const __SIZEOF_LONG__ = @as(c_int, 4);
pub const __SIZEOF_LONG_DOUBLE__ = @as(c_int, 16);
pub const __SIZEOF_LONG_LONG__ = @as(c_int, 8);
pub const __SIZEOF_POINTER__ = @as(c_int, 8);
pub const __SIZEOF_SHORT__ = @as(c_int, 2);
pub const __SIZEOF_PTRDIFF_T__ = @as(c_int, 8);
pub const __SIZEOF_SIZE_T__ = @as(c_int, 8);
pub const __SIZEOF_WCHAR_T__ = @as(c_int, 2);
pub const __SIZEOF_WINT_T__ = @as(c_int, 2);
pub const __SIZEOF_INT128__ = @as(c_int, 16);
pub const __INTMAX_TYPE__ = c_longlong;
pub const __INTMAX_FMTd__ = "lld";
pub const __INTMAX_FMTi__ = "lli";
pub const __UINTMAX_TYPE__ = c_ulonglong;
pub const __UINTMAX_FMTo__ = "llo";
pub const __UINTMAX_FMTu__ = "llu";
pub const __UINTMAX_FMTx__ = "llx";
pub const __UINTMAX_FMTX__ = "llX";
pub const __PTRDIFF_TYPE__ = c_longlong;
pub const __PTRDIFF_FMTd__ = "lld";
pub const __PTRDIFF_FMTi__ = "lli";
pub const __INTPTR_TYPE__ = c_longlong;
pub const __INTPTR_FMTd__ = "lld";
pub const __INTPTR_FMTi__ = "lli";
pub const __SIZE_TYPE__ = c_ulonglong;
pub const __SIZE_FMTo__ = "llo";
pub const __SIZE_FMTu__ = "llu";
pub const __SIZE_FMTx__ = "llx";
pub const __SIZE_FMTX__ = "llX";
pub const __WCHAR_TYPE__ = c_ushort;
pub const __WINT_TYPE__ = c_ushort;
pub const __SIG_ATOMIC_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __SIG_ATOMIC_WIDTH__ = @as(c_int, 32);
pub const __CHAR16_TYPE__ = c_ushort;
pub const __CHAR32_TYPE__ = c_uint;
pub const __UINTPTR_TYPE__ = c_ulonglong;
pub const __UINTPTR_FMTo__ = "llo";
pub const __UINTPTR_FMTu__ = "llu";
pub const __UINTPTR_FMTx__ = "llx";
pub const __UINTPTR_FMTX__ = "llX";
pub const __FLT16_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT16_DIG__ = @as(c_int, 3);
pub const __FLT16_DECIMAL_DIG__ = @as(c_int, 5);
pub const __FLT16_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT16_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT16_MANT_DIG__ = @as(c_int, 11);
pub const __FLT16_MAX_10_EXP__ = @as(c_int, 4);
pub const __FLT16_MAX_EXP__ = @as(c_int, 16);
pub const __FLT16_MIN_10_EXP__ = -@as(c_int, 4);
pub const __FLT16_MIN_EXP__ = -@as(c_int, 13);
pub const __FLT_DENORM_MIN__ = @as(f32, 1.40129846e-45);
pub const __FLT_HAS_DENORM__ = @as(c_int, 1);
pub const __FLT_DIG__ = @as(c_int, 6);
pub const __FLT_DECIMAL_DIG__ = @as(c_int, 9);
pub const __FLT_EPSILON__ = @as(f32, 1.19209290e-7);
pub const __FLT_HAS_INFINITY__ = @as(c_int, 1);
pub const __FLT_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __FLT_MANT_DIG__ = @as(c_int, 24);
pub const __FLT_MAX_10_EXP__ = @as(c_int, 38);
pub const __FLT_MAX_EXP__ = @as(c_int, 128);
pub const __FLT_MAX__ = @as(f32, 3.40282347e+38);
pub const __FLT_MIN_10_EXP__ = -@as(c_int, 37);
pub const __FLT_MIN_EXP__ = -@as(c_int, 125);
pub const __FLT_MIN__ = @as(f32, 1.17549435e-38);
pub const __DBL_DENORM_MIN__ = @as(f64, 4.9406564584124654e-324);
pub const __DBL_HAS_DENORM__ = @as(c_int, 1);
pub const __DBL_DIG__ = @as(c_int, 15);
pub const __DBL_DECIMAL_DIG__ = @as(c_int, 17);
pub const __DBL_EPSILON__ = @as(f64, 2.2204460492503131e-16);
pub const __DBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __DBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __DBL_MANT_DIG__ = @as(c_int, 53);
pub const __DBL_MAX_10_EXP__ = @as(c_int, 308);
pub const __DBL_MAX_EXP__ = @as(c_int, 1024);
pub const __DBL_MAX__ = @as(f64, 1.7976931348623157e+308);
pub const __DBL_MIN_10_EXP__ = -@as(c_int, 307);
pub const __DBL_MIN_EXP__ = -@as(c_int, 1021);
pub const __DBL_MIN__ = @as(f64, 2.2250738585072014e-308);
pub const __LDBL_DENORM_MIN__ = @as(c_longdouble, 3.64519953188247460253e-4951);
pub const __LDBL_HAS_DENORM__ = @as(c_int, 1);
pub const __LDBL_DIG__ = @as(c_int, 18);
pub const __LDBL_DECIMAL_DIG__ = @as(c_int, 21);
pub const __LDBL_EPSILON__ = @as(c_longdouble, 1.08420217248550443401e-19);
pub const __LDBL_HAS_INFINITY__ = @as(c_int, 1);
pub const __LDBL_HAS_QUIET_NAN__ = @as(c_int, 1);
pub const __LDBL_MANT_DIG__ = @as(c_int, 64);
pub const __LDBL_MAX_10_EXP__ = @as(c_int, 4932);
pub const __LDBL_MAX_EXP__ = @as(c_int, 16384);
pub const __LDBL_MAX__ = @as(c_longdouble, 1.18973149535723176502e+4932);
pub const __LDBL_MIN_10_EXP__ = -@as(c_int, 4931);
pub const __LDBL_MIN_EXP__ = -@as(c_int, 16381);
pub const __LDBL_MIN__ = @as(c_longdouble, 3.36210314311209350626e-4932);
pub const __POINTER_WIDTH__ = @as(c_int, 64);
pub const __BIGGEST_ALIGNMENT__ = @as(c_int, 16);
pub const __WCHAR_UNSIGNED__ = @as(c_int, 1);
pub const __WINT_UNSIGNED__ = @as(c_int, 1);
pub const __INT8_TYPE__ = i8;
pub const __INT8_FMTd__ = "hhd";
pub const __INT8_FMTi__ = "hhi";
pub const __INT8_C_SUFFIX__ = "";
pub const __INT16_TYPE__ = c_short;
pub const __INT16_FMTd__ = "hd";
pub const __INT16_FMTi__ = "hi";
pub const __INT16_C_SUFFIX__ = "";
pub const __INT32_TYPE__ = c_int;
pub const __INT32_FMTd__ = "d";
pub const __INT32_FMTi__ = "i";
pub const __INT32_C_SUFFIX__ = "";
pub const __INT64_TYPE__ = c_longlong;
pub const __INT64_FMTd__ = "lld";
pub const __INT64_FMTi__ = "lli";
pub const __UINT8_TYPE__ = u8;
pub const __UINT8_FMTo__ = "hho";
pub const __UINT8_FMTu__ = "hhu";
pub const __UINT8_FMTx__ = "hhx";
pub const __UINT8_FMTX__ = "hhX";
pub const __UINT8_C_SUFFIX__ = "";
pub const __UINT8_MAX__ = @as(c_int, 255);
pub const __INT8_MAX__ = @as(c_int, 127);
pub const __UINT16_TYPE__ = c_ushort;
pub const __UINT16_FMTo__ = "ho";
pub const __UINT16_FMTu__ = "hu";
pub const __UINT16_FMTx__ = "hx";
pub const __UINT16_FMTX__ = "hX";
pub const __UINT16_C_SUFFIX__ = "";
pub const __UINT16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __INT16_MAX__ = @as(c_int, 32767);
pub const __UINT32_TYPE__ = c_uint;
pub const __UINT32_FMTo__ = "o";
pub const __UINT32_FMTu__ = "u";
pub const __UINT32_FMTx__ = "x";
pub const __UINT32_FMTX__ = "X";
pub const __UINT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __INT32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __UINT64_TYPE__ = c_ulonglong;
pub const __UINT64_FMTo__ = "llo";
pub const __UINT64_FMTu__ = "llu";
pub const __UINT64_FMTx__ = "llx";
pub const __UINT64_FMTX__ = "llX";
pub const __UINT64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __INT64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST8_TYPE__ = i8;
pub const __INT_LEAST8_MAX__ = @as(c_int, 127);
pub const __INT_LEAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_LEAST8_FMTd__ = "hhd";
pub const __INT_LEAST8_FMTi__ = "hhi";
pub const __UINT_LEAST8_TYPE__ = u8;
pub const __UINT_LEAST8_MAX__ = @as(c_int, 255);
pub const __UINT_LEAST8_FMTo__ = "hho";
pub const __UINT_LEAST8_FMTu__ = "hhu";
pub const __UINT_LEAST8_FMTx__ = "hhx";
pub const __UINT_LEAST8_FMTX__ = "hhX";
pub const __INT_LEAST16_TYPE__ = c_short;
pub const __INT_LEAST16_MAX__ = @as(c_int, 32767);
pub const __INT_LEAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_LEAST16_FMTd__ = "hd";
pub const __INT_LEAST16_FMTi__ = "hi";
pub const __UINT_LEAST16_TYPE__ = c_ushort;
pub const __UINT_LEAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_LEAST16_FMTo__ = "ho";
pub const __UINT_LEAST16_FMTu__ = "hu";
pub const __UINT_LEAST16_FMTx__ = "hx";
pub const __UINT_LEAST16_FMTX__ = "hX";
pub const __INT_LEAST32_TYPE__ = c_int;
pub const __INT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_LEAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_LEAST32_FMTd__ = "d";
pub const __INT_LEAST32_FMTi__ = "i";
pub const __UINT_LEAST32_TYPE__ = c_uint;
pub const __UINT_LEAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_LEAST32_FMTo__ = "o";
pub const __UINT_LEAST32_FMTu__ = "u";
pub const __UINT_LEAST32_FMTx__ = "x";
pub const __UINT_LEAST32_FMTX__ = "X";
pub const __INT_LEAST64_TYPE__ = c_longlong;
pub const __INT_LEAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_LEAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_LEAST64_FMTd__ = "lld";
pub const __INT_LEAST64_FMTi__ = "lli";
pub const __UINT_LEAST64_TYPE__ = c_ulonglong;
pub const __UINT_LEAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_LEAST64_FMTo__ = "llo";
pub const __UINT_LEAST64_FMTu__ = "llu";
pub const __UINT_LEAST64_FMTx__ = "llx";
pub const __UINT_LEAST64_FMTX__ = "llX";
pub const __INT_FAST8_TYPE__ = i8;
pub const __INT_FAST8_MAX__ = @as(c_int, 127);
pub const __INT_FAST8_WIDTH__ = @as(c_int, 8);
pub const __INT_FAST8_FMTd__ = "hhd";
pub const __INT_FAST8_FMTi__ = "hhi";
pub const __UINT_FAST8_TYPE__ = u8;
pub const __UINT_FAST8_MAX__ = @as(c_int, 255);
pub const __UINT_FAST8_FMTo__ = "hho";
pub const __UINT_FAST8_FMTu__ = "hhu";
pub const __UINT_FAST8_FMTx__ = "hhx";
pub const __UINT_FAST8_FMTX__ = "hhX";
pub const __INT_FAST16_TYPE__ = c_short;
pub const __INT_FAST16_MAX__ = @as(c_int, 32767);
pub const __INT_FAST16_WIDTH__ = @as(c_int, 16);
pub const __INT_FAST16_FMTd__ = "hd";
pub const __INT_FAST16_FMTi__ = "hi";
pub const __UINT_FAST16_TYPE__ = c_ushort;
pub const __UINT_FAST16_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 65535, .decimal);
pub const __UINT_FAST16_FMTo__ = "ho";
pub const __UINT_FAST16_FMTu__ = "hu";
pub const __UINT_FAST16_FMTx__ = "hx";
pub const __UINT_FAST16_FMTX__ = "hX";
pub const __INT_FAST32_TYPE__ = c_int;
pub const __INT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_int, 2147483647, .decimal);
pub const __INT_FAST32_WIDTH__ = @as(c_int, 32);
pub const __INT_FAST32_FMTd__ = "d";
pub const __INT_FAST32_FMTi__ = "i";
pub const __UINT_FAST32_TYPE__ = c_uint;
pub const __UINT_FAST32_MAX__ = @import("std").zig.c_translation.promoteIntLiteral(c_uint, 4294967295, .decimal);
pub const __UINT_FAST32_FMTo__ = "o";
pub const __UINT_FAST32_FMTu__ = "u";
pub const __UINT_FAST32_FMTx__ = "x";
pub const __UINT_FAST32_FMTX__ = "X";
pub const __INT_FAST64_TYPE__ = c_longlong;
pub const __INT_FAST64_MAX__ = @as(c_longlong, 9223372036854775807);
pub const __INT_FAST64_WIDTH__ = @as(c_int, 64);
pub const __INT_FAST64_FMTd__ = "lld";
pub const __INT_FAST64_FMTi__ = "lli";
pub const __UINT_FAST64_TYPE__ = c_ulonglong;
pub const __UINT_FAST64_MAX__ = @as(c_ulonglong, 18446744073709551615);
pub const __UINT_FAST64_FMTo__ = "llo";
pub const __UINT_FAST64_FMTu__ = "llu";
pub const __UINT_FAST64_FMTx__ = "llx";
pub const __UINT_FAST64_FMTX__ = "llX";
pub const __USER_LABEL_PREFIX__ = "";
pub const __FINITE_MATH_ONLY__ = @as(c_int, 0);
pub const __GNUC_STDC_INLINE__ = @as(c_int, 1);
pub const __GCC_ATOMIC_TEST_AND_SET_TRUEVAL = @as(c_int, 1);
pub const __CLANG_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __CLANG_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_BOOL_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR16_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_CHAR32_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_WCHAR_T_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_SHORT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_INT_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_LLONG_LOCK_FREE = @as(c_int, 2);
pub const __GCC_ATOMIC_POINTER_LOCK_FREE = @as(c_int, 2);
pub const __NO_INLINE__ = @as(c_int, 1);
pub const __PIC__ = @as(c_int, 2);
pub const __pic__ = @as(c_int, 2);
pub const __FLT_RADIX__ = @as(c_int, 2);
pub const __DECIMAL_DIG__ = __LDBL_DECIMAL_DIG__;
pub const __SSP_STRONG__ = @as(c_int, 2);
pub const __GCC_ASM_FLAG_OUTPUTS__ = @as(c_int, 1);
pub const __code_model_small__ = @as(c_int, 1);
pub const __amd64__ = @as(c_int, 1);
pub const __amd64 = @as(c_int, 1);
pub const __x86_64 = @as(c_int, 1);
pub const __x86_64__ = @as(c_int, 1);
pub const __SEG_GS = @as(c_int, 1);
pub const __SEG_FS = @as(c_int, 1);
pub const __k8 = @as(c_int, 1);
pub const __k8__ = @as(c_int, 1);
pub const __tune_k8__ = @as(c_int, 1);
pub const __REGISTER_PREFIX__ = "";
pub const __NO_MATH_INLINES = @as(c_int, 1);
pub const __AES__ = @as(c_int, 1);
pub const __VAES__ = @as(c_int, 1);
pub const __PCLMUL__ = @as(c_int, 1);
pub const __VPCLMULQDQ__ = @as(c_int, 1);
pub const __LAHF_SAHF__ = @as(c_int, 1);
pub const __LZCNT__ = @as(c_int, 1);
pub const __RDRND__ = @as(c_int, 1);
pub const __FSGSBASE__ = @as(c_int, 1);
pub const __BMI__ = @as(c_int, 1);
pub const __BMI2__ = @as(c_int, 1);
pub const __POPCNT__ = @as(c_int, 1);
pub const __PRFCHW__ = @as(c_int, 1);
pub const __RDSEED__ = @as(c_int, 1);
pub const __ADX__ = @as(c_int, 1);
pub const __MOVBE__ = @as(c_int, 1);
pub const __FMA__ = @as(c_int, 1);
pub const __F16C__ = @as(c_int, 1);
pub const __GFNI__ = @as(c_int, 1);
pub const __AVX512CD__ = @as(c_int, 1);
pub const __AVX512VPOPCNTDQ__ = @as(c_int, 1);
pub const __AVX512VNNI__ = @as(c_int, 1);
pub const __AVX512DQ__ = @as(c_int, 1);
pub const __AVX512BITALG__ = @as(c_int, 1);
pub const __AVX512BW__ = @as(c_int, 1);
pub const __AVX512VL__ = @as(c_int, 1);
pub const __AVX512VBMI__ = @as(c_int, 1);
pub const __AVX512VBMI2__ = @as(c_int, 1);
pub const __AVX512IFMA__ = @as(c_int, 1);
pub const __AVX512VP2INTERSECT__ = @as(c_int, 1);
pub const __SHA__ = @as(c_int, 1);
pub const __FXSR__ = @as(c_int, 1);
pub const __XSAVE__ = @as(c_int, 1);
pub const __XSAVEOPT__ = @as(c_int, 1);
pub const __XSAVEC__ = @as(c_int, 1);
pub const __XSAVES__ = @as(c_int, 1);
pub const __CLFLUSHOPT__ = @as(c_int, 1);
pub const __CLWB__ = @as(c_int, 1);
pub const __SHSTK__ = @as(c_int, 1);
pub const __RDPID__ = @as(c_int, 1);
pub const __MOVDIRI__ = @as(c_int, 1);
pub const __MOVDIR64B__ = @as(c_int, 1);
pub const __INVPCID__ = @as(c_int, 1);
pub const __AVX512F__ = @as(c_int, 1);
pub const __AVX2__ = @as(c_int, 1);
pub const __AVX__ = @as(c_int, 1);
pub const __SSE4_2__ = @as(c_int, 1);
pub const __SSE4_1__ = @as(c_int, 1);
pub const __SSSE3__ = @as(c_int, 1);
pub const __SSE3__ = @as(c_int, 1);
pub const __SSE2__ = @as(c_int, 1);
pub const __SSE2_MATH__ = @as(c_int, 1);
pub const __SSE__ = @as(c_int, 1);
pub const __SSE_MATH__ = @as(c_int, 1);
pub const __MMX__ = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_1 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_2 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_8 = @as(c_int, 1);
pub const __GCC_HAVE_SYNC_COMPARE_AND_SWAP_16 = @as(c_int, 1);
pub const __SIZEOF_FLOAT128__ = @as(c_int, 16);
pub const _WIN32 = @as(c_int, 1);
pub const _WIN64 = @as(c_int, 1);
pub const WIN32 = @as(c_int, 1);
pub const __WIN32 = @as(c_int, 1);
pub const __WIN32__ = @as(c_int, 1);
pub const WINNT = @as(c_int, 1);
pub const __WINNT = @as(c_int, 1);
pub const __WINNT__ = @as(c_int, 1);
pub const WIN64 = @as(c_int, 1);
pub const __WIN64 = @as(c_int, 1);
pub const __WIN64__ = @as(c_int, 1);
pub const __MINGW64__ = @as(c_int, 1);
pub const __MSVCRT__ = @as(c_int, 1);
pub const __MINGW32__ = @as(c_int, 1);
pub const __STDC__ = @as(c_int, 1);
pub const __STDC_HOSTED__ = @as(c_int, 1);
pub const __STDC_VERSION__ = @as(c_long, 201710);
pub const __STDC_UTF_16__ = @as(c_int, 1);
pub const __STDC_UTF_32__ = @as(c_int, 1);
pub const _DEBUG = @as(c_int, 1);
pub const RAYLIB_H = "";
pub const __GNUC_VA_LIST = "";
pub const __STDARG_H = "";
pub const _VA_LIST = "";
pub const RAYLIB_VERSION_MAJOR = @as(c_int, 4);
pub const RAYLIB_VERSION_MINOR = @as(c_int, 6);
pub const RAYLIB_VERSION_PATCH = @as(c_int, 0);
pub const RAYLIB_VERSION = "4.6-dev";
pub const RLAPI = "";
pub const PI = @as(f32, 3.14159265358979323846);
pub const DEG2RAD = @import("std").zig.c_translation.MacroArithmetic.div(PI, @as(f32, 180.0));
pub const RAD2DEG = @import("std").zig.c_translation.MacroArithmetic.div(@as(f32, 180.0), PI);
pub inline fn CLITERAL(@"type": anytype) @TypeOf(@"type") {
    return @"type";
}
pub const RL_COLOR_TYPE = "";
pub const RL_RECTANGLE_TYPE = "";
pub const RL_VECTOR2_TYPE = "";
pub const RL_VECTOR3_TYPE = "";
pub const RL_VECTOR4_TYPE = "";
pub const RL_QUATERNION_TYPE = "";
pub const RL_MATRIX_TYPE = "";
pub const LIGHTGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 200), @as(c_int, 200), @as(c_int, 255) });
pub const GRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 130), @as(c_int, 130), @as(c_int, 130), @as(c_int, 255) });
pub const DARKGRAY = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 80), @as(c_int, 80), @as(c_int, 80), @as(c_int, 255) });
pub const YELLOW = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 253), @as(c_int, 249), @as(c_int, 0), @as(c_int, 255) });
pub const GOLD = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 203), @as(c_int, 0), @as(c_int, 255) });
pub const ORANGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 161), @as(c_int, 0), @as(c_int, 255) });
pub const PINK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 109), @as(c_int, 194), @as(c_int, 255) });
pub const RED = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 230), @as(c_int, 41), @as(c_int, 55), @as(c_int, 255) });
pub const MAROON = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 190), @as(c_int, 33), @as(c_int, 55), @as(c_int, 255) });
pub const GREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 228), @as(c_int, 48), @as(c_int, 255) });
pub const LIME = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 158), @as(c_int, 47), @as(c_int, 255) });
pub const DARKGREEN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 117), @as(c_int, 44), @as(c_int, 255) });
pub const SKYBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 102), @as(c_int, 191), @as(c_int, 255), @as(c_int, 255) });
pub const BLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 121), @as(c_int, 241), @as(c_int, 255) });
pub const DARKBLUE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 82), @as(c_int, 172), @as(c_int, 255) });
pub const PURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 200), @as(c_int, 122), @as(c_int, 255), @as(c_int, 255) });
pub const VIOLET = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 135), @as(c_int, 60), @as(c_int, 190), @as(c_int, 255) });
pub const DARKPURPLE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 112), @as(c_int, 31), @as(c_int, 126), @as(c_int, 255) });
pub const BEIGE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 211), @as(c_int, 176), @as(c_int, 131), @as(c_int, 255) });
pub const BROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 127), @as(c_int, 106), @as(c_int, 79), @as(c_int, 255) });
pub const DARKBROWN = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 76), @as(c_int, 63), @as(c_int, 47), @as(c_int, 255) });
pub const WHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 255), @as(c_int, 255), @as(c_int, 255) });
pub const BLACK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 255) });
pub const BLANK = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 0), @as(c_int, 0), @as(c_int, 0), @as(c_int, 0) });
pub const MAGENTA = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 255), @as(c_int, 0), @as(c_int, 255), @as(c_int, 255) });
pub const RAYWHITE = @import("std").mem.zeroInit(CLITERAL(Color), .{ @as(c_int, 245), @as(c_int, 245), @as(c_int, 245), @as(c_int, 255) });
pub const __STDBOOL_H = "";
pub const __bool_true_false_are_defined = @as(c_int, 1);
pub const @"bool" = bool;
pub const @"true" = @as(c_int, 1);
pub const @"false" = @as(c_int, 0);
pub const MOUSE_LEFT_BUTTON = MOUSE_BUTTON_LEFT;
pub const MOUSE_RIGHT_BUTTON = MOUSE_BUTTON_RIGHT;
pub const MOUSE_MIDDLE_BUTTON = MOUSE_BUTTON_MIDDLE;
pub const MATERIAL_MAP_DIFFUSE = MATERIAL_MAP_ALBEDO;
pub const MATERIAL_MAP_SPECULAR = MATERIAL_MAP_METALNESS;
pub const SHADER_LOC_MAP_DIFFUSE = SHADER_LOC_MAP_ALBEDO;
pub const SHADER_LOC_MAP_SPECULAR = SHADER_LOC_MAP_METALNESS;
pub const RAYMATH_H = "";
pub const EPSILON = @as(f32, 0.000001);
pub inline fn MatrixToFloat(mat: anytype) @TypeOf(MatrixToFloatV(mat).v) {
    return MatrixToFloatV(mat).v;
}
pub inline fn Vector3ToFloat(vec: anytype) @TypeOf(Vector3ToFloatV(vec).v) {
    return Vector3ToFloatV(vec).v;
}
pub const _MATH_H_ = "";
pub const _INC_CRTDEFS = "";
pub const _INC_CORECRT = "";
pub const _INC__MINGW_H = "";
pub const _INC_CRTDEFS_MACRO = "";
pub inline fn __MINGW64_STRINGIFY(x: anytype) @TypeOf(__STRINGIFY(x)) {
    return __STRINGIFY(x);
}
pub const __MINGW64_VERSION_MAJOR = @as(c_int, 10);
pub const __MINGW64_VERSION_MINOR = @as(c_int, 0);
pub const __MINGW64_VERSION_BUGFIX = @as(c_int, 0);
pub const __MINGW64_VERSION_RC = @as(c_int, 0);
pub const __MINGW64_VERSION_STATE = "alpha";
pub const __MINGW32_MAJOR_VERSION = @as(c_int, 3);
pub const __MINGW32_MINOR_VERSION = @as(c_int, 11);
pub const _M_AMD64 = @as(c_int, 100);
pub const _M_X64 = @as(c_int, 100);
pub const @"_" = @as(c_int, 1);
pub const __MINGW_USE_UNDERSCORE_PREFIX = @as(c_int, 0);
pub inline fn __MINGW_USYMBOL(sym: anytype) @TypeOf(sym) {
    return sym;
}
pub const __C89_NAMELESS = __MINGW_EXTENSION;
pub const __C89_NAMELESSSTRUCTNAME = "";
pub const __C89_NAMELESSSTRUCTNAME1 = "";
pub const __C89_NAMELESSSTRUCTNAME2 = "";
pub const __C89_NAMELESSSTRUCTNAME3 = "";
pub const __C89_NAMELESSSTRUCTNAME4 = "";
pub const __C89_NAMELESSSTRUCTNAME5 = "";
pub const __C89_NAMELESSUNIONNAME = "";
pub const __C89_NAMELESSUNIONNAME1 = "";
pub const __C89_NAMELESSUNIONNAME2 = "";
pub const __C89_NAMELESSUNIONNAME3 = "";
pub const __C89_NAMELESSUNIONNAME4 = "";
pub const __C89_NAMELESSUNIONNAME5 = "";
pub const __C89_NAMELESSUNIONNAME6 = "";
pub const __C89_NAMELESSUNIONNAME7 = "";
pub const __C89_NAMELESSUNIONNAME8 = "";
pub const __GNU_EXTENSION = __MINGW_EXTENSION;
pub const __MINGW_HAVE_ANSI_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_PRINTF = @as(c_int, 1);
pub const __MINGW_HAVE_ANSI_C99_SCANF = @as(c_int, 1);
pub const __MINGW_HAVE_WIDE_C99_SCANF = @as(c_int, 1);
pub const __MSABI_LONG = @import("std").zig.c_translation.Macros.L_SUFFIX;
pub const __MINGW_GCC_VERSION = ((__GNUC__ * @as(c_int, 10000)) + (__GNUC_MINOR__ * @as(c_int, 100))) + __GNUC_PATCHLEVEL__;
pub inline fn __MINGW_GNUC_PREREQ(major: anytype, minor: anytype) @TypeOf((__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor))) {
    return (__GNUC__ > major) or ((__GNUC__ == major) and (__GNUC_MINOR__ >= minor));
}
pub inline fn __MINGW_MSC_PREREQ(major: anytype, minor: anytype) @TypeOf(@as(c_int, 0)) {
    _ = @TypeOf(major);
    _ = @TypeOf(minor);
    return @as(c_int, 0);
}
pub const __MINGW_SEC_WARN_STR = "This function or variable may be unsafe, use _CRT_SECURE_NO_WARNINGS to disable deprecation";
pub const __MINGW_MSVC2005_DEPREC_STR = "This POSIX function is deprecated beginning in Visual C++ 2005, use _CRT_NONSTDC_NO_DEPRECATE to disable deprecation";
pub const __MINGW_ATTRIB_DEPRECATED_MSVC2005 = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_MSVC2005_DEPREC_STR);
pub const __MINGW_ATTRIB_DEPRECATED_SEC_WARN = __MINGW_ATTRIB_DEPRECATED_STR(__MINGW_SEC_WARN_STR);
pub const __mingw_static_ovr = __mingw_ovr;
pub const __mingw_attribute_artificial = "";
pub const __MINGW_FORTIFY_LEVEL = @as(c_int, 0);
pub const __mingw_bos_ovr = __mingw_ovr;
pub const __MINGW_FORTIFY_VA_ARG = @as(c_int, 0);
pub const _INC_MINGW_SECAPI = "";
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = @as(c_int, 0);
pub const _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = @as(c_int, 0);
pub const __LONG32 = c_long;
pub const __USE_CRTIMP = @as(c_int, 1);
pub const __DECLSPEC_SUPPORTED = "";
pub const USE___UUIDOF = @as(c_int, 0);
pub const __CRT__NO_INLINE = @as(c_int, 1);
pub const __MINGW_ATTRIB_NO_OPTIMIZE = "";
pub const __MSVCRT_VERSION__ = @as(c_int, 0x700);
pub const _WIN32_WINNT = @as(c_int, 0x0603);
pub const _INT128_DEFINED = "";
pub const __int8 = u8;
pub const __int16 = c_short;
pub const __int32 = c_int;
pub const __int64 = c_longlong;
pub const __ptr32 = "";
pub const __ptr64 = "";
pub const __unaligned = "";
pub const __w64 = "";
pub const __nothrow = "";
pub const _INC_VADEFS = "";
pub const MINGW_SDK_INIT = "";
pub const MINGW_HAS_SECURE_API = @as(c_int, 1);
pub const __STDC_SECURE_LIB__ = @as(c_long, 200411);
pub const __GOT_SECURE_LIB__ = __STDC_SECURE_LIB__;
pub const MINGW_DDK_H = "";
pub const MINGW_HAS_DDK_H = @as(c_int, 1);
pub const _CRT_PACKING = @as(c_int, 8);
pub const _VA_LIST_DEFINED = "";
pub inline fn _ADDRESSOF(v: anytype) @TypeOf(&v) {
    return &v;
}
pub inline fn _CRT_STRINGIZE(_Value: anytype) @TypeOf(__CRT_STRINGIZE(_Value)) {
    return __CRT_STRINGIZE(_Value);
}
pub inline fn _CRT_WIDE(_String: anytype) @TypeOf(__CRT_WIDE(_String)) {
    return __CRT_WIDE(_String);
}
pub const _W64 = "";
pub const _CRTIMP_NOIA64 = _CRTIMP;
pub const _CRTIMP2 = _CRTIMP;
pub const _CRTIMP_ALTERNATIVE = _CRTIMP;
pub const _CRT_ALTERNATIVE_IMPORTED = "";
pub const _MRTIMP2 = _CRTIMP;
pub const _DLL = "";
pub const _MT = "";
pub const _MCRTIMP = _CRTIMP;
pub const _CRTIMP_PURE = _CRTIMP;
pub const _PGLOBAL = "";
pub const _AGLOBAL = "";
pub const _SECURECRT_FILL_BUFFER_PATTERN = @as(c_int, 0xFD);
pub const _CRT_MANAGED_HEAP_DEPRECATE = "";
pub const _CONST_RETURN = "";
pub const UNALIGNED = __unaligned;
pub const __CRTDECL = __cdecl;
pub const _ARGMAX = @as(c_int, 100);
pub const _TRUNCATE = @import("std").zig.c_translation.cast(usize, -@as(c_int, 1));
pub inline fn _CRT_UNUSED(x: anytype) anyopaque {
    return @import("std").zig.c_translation.cast(anyopaque, x);
}
pub const __USE_MINGW_ANSI_STDIO = @as(c_int, 1);
pub const __ANONYMOUS_DEFINED = "";
pub const _ANONYMOUS_UNION = __MINGW_EXTENSION;
pub const _ANONYMOUS_STRUCT = __MINGW_EXTENSION;
pub const DUMMYUNIONNAME = "";
pub const DUMMYUNIONNAME1 = "";
pub const DUMMYUNIONNAME2 = "";
pub const DUMMYUNIONNAME3 = "";
pub const DUMMYUNIONNAME4 = "";
pub const DUMMYUNIONNAME5 = "";
pub const DUMMYUNIONNAME6 = "";
pub const DUMMYUNIONNAME7 = "";
pub const DUMMYUNIONNAME8 = "";
pub const DUMMYUNIONNAME9 = "";
pub const DUMMYSTRUCTNAME = "";
pub const DUMMYSTRUCTNAME1 = "";
pub const DUMMYSTRUCTNAME2 = "";
pub const DUMMYSTRUCTNAME3 = "";
pub const DUMMYSTRUCTNAME4 = "";
pub const DUMMYSTRUCTNAME5 = "";
pub const __MINGW_DEBUGBREAK_IMPL = !(__has_builtin(__debugbreak) != 0);
pub const _CRTNOALIAS = "";
pub const _CRTRESTRICT = "";
pub const _SIZE_T_DEFINED = "";
pub const _SSIZE_T_DEFINED = "";
pub const _RSIZE_T_DEFINED = "";
pub const _INTPTR_T_DEFINED = "";
pub const __intptr_t_defined = "";
pub const _UINTPTR_T_DEFINED = "";
pub const __uintptr_t_defined = "";
pub const _PTRDIFF_T_DEFINED = "";
pub const _PTRDIFF_T_ = "";
pub const _WCHAR_T_DEFINED = "";
pub const _WCTYPE_T_DEFINED = "";
pub const _WINT_T = "";
pub const _ERRCODE_DEFINED = "";
pub const _TIME32_T_DEFINED = "";
pub const _TIME64_T_DEFINED = "";
pub const _TIME_T_DEFINED = "";
pub const _TAGLC_ID_DEFINED = "";
pub const _THREADLOCALEINFO = "";
pub const _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = "";
pub const _DOMAIN = @as(c_int, 1);
pub const _SING = @as(c_int, 2);
pub const _OVERFLOW = @as(c_int, 3);
pub const _UNDERFLOW = @as(c_int, 4);
pub const _TLOSS = @as(c_int, 5);
pub const _PLOSS = @as(c_int, 6);
pub const DOMAIN = _DOMAIN;
pub const SING = _SING;
pub const OVERFLOW = _OVERFLOW;
pub const UNDERFLOW = _UNDERFLOW;
pub const TLOSS = _TLOSS;
pub const PLOSS = _PLOSS;
pub const M_E = @as(f64, 2.7182818284590452354);
pub const M_LOG2E = @as(f64, 1.4426950408889634074);
pub const M_LOG10E = @as(f64, 0.43429448190325182765);
pub const M_LN2 = @as(f64, 0.69314718055994530942);
pub const M_LN10 = @as(f64, 2.30258509299404568402);
pub const M_PI = @as(f64, 3.14159265358979323846);
pub const M_PI_2 = @as(f64, 1.57079632679489661923);
pub const M_PI_4 = @as(f64, 0.78539816339744830962);
pub const M_1_PI = @as(f64, 0.31830988618379067154);
pub const M_2_PI = @as(f64, 0.63661977236758134308);
pub const M_2_SQRTPI = @as(f64, 1.12837916709551257390);
pub const M_SQRT2 = @as(f64, 1.41421356237309504880);
pub const M_SQRT1_2 = @as(f64, 0.70710678118654752440);
pub const __MINGW_FPCLASS_DEFINED = @as(c_int, 1);
pub const _FPCLASS_SNAN = @as(c_int, 0x0001);
pub const _FPCLASS_QNAN = @as(c_int, 0x0002);
pub const _FPCLASS_NINF = @as(c_int, 0x0004);
pub const _FPCLASS_NN = @as(c_int, 0x0008);
pub const _FPCLASS_ND = @as(c_int, 0x0010);
pub const _FPCLASS_NZ = @as(c_int, 0x0020);
pub const _FPCLASS_PZ = @as(c_int, 0x0040);
pub const _FPCLASS_PD = @as(c_int, 0x0080);
pub const _FPCLASS_PN = @as(c_int, 0x0100);
pub const _FPCLASS_PINF = @as(c_int, 0x0200);
pub const __MINGW_SOFTMATH = "";
pub const _HUGE = __MINGW_IMP_SYMBOL(_HUGE).*;
pub const _EXCEPTION_DEFINED = "";
pub const _CRT_ABS_DEFINED = "";
pub const _CRT_ATOF_DEFINED = "";
pub const EDOM = @as(c_int, 33);
pub const ERANGE = @as(c_int, 34);
pub const _COMPLEX_DEFINED = "";
pub const _CRT_MATHERR_DEFINED = "";
pub const _SIGN_DEFINED = "";
pub const FP_SNAN = _FPCLASS_SNAN;
pub const FP_QNAN = _FPCLASS_QNAN;
pub const FP_NINF = _FPCLASS_NINF;
pub const FP_PINF = _FPCLASS_PINF;
pub const FP_NDENORM = _FPCLASS_ND;
pub const FP_PDENORM = _FPCLASS_PD;
pub const FP_NZERO = _FPCLASS_NZ;
pub const FP_PZERO = _FPCLASS_PZ;
pub const FP_NNORM = _FPCLASS_NN;
pub const FP_PNORM = _FPCLASS_PN;
pub const HUGE_VALF = __builtin_huge_valf();
pub const INFINITY = __builtin_inff();
pub const NAN = __builtin_nanf("");
pub const FP_NAN = @as(c_int, 0x0100);
pub const FP_NORMAL = @as(c_int, 0x0400);
pub const FP_INFINITE = FP_NAN | FP_NORMAL;
pub const FP_ZERO = @as(c_int, 0x4000);
pub const FP_SUBNORMAL = FP_NORMAL | FP_ZERO;
pub inline fn __dfp_expansion(__call: anytype, __fin: anytype, x: anytype) @TypeOf(__fin) {
    _ = @TypeOf(__call);
    _ = @TypeOf(x);
    return __fin;
}
pub inline fn isfinite(x: anytype) @TypeOf((fpclassify(x) & FP_NAN) == @as(c_int, 0)) {
    return (fpclassify(x) & FP_NAN) == @as(c_int, 0);
}
pub inline fn isinf(x: anytype) @TypeOf(fpclassify(x) == FP_INFINITE) {
    return fpclassify(x) == FP_INFINITE;
}
pub inline fn isnormal(x: anytype) @TypeOf(fpclassify(x) == FP_NORMAL) {
    return fpclassify(x) == FP_NORMAL;
}
pub const FP_ILOGB0 = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x80000000, .hexadecimal));
pub const FP_ILOGBNAN = @import("std").zig.c_translation.cast(c_int, @import("std").zig.c_translation.promoteIntLiteral(c_int, 0x7fffffff, .hexadecimal));
pub inline fn _nan() @TypeOf(nan("")) {
    return nan("");
}
pub inline fn _nanf() @TypeOf(nanf("")) {
    return nanf("");
}
pub inline fn _nanl() @TypeOf(nanl("")) {
    return nanl("");
}
pub const _copysignl = copysignl;
pub const _hypotl = hypotl;
pub const matherr = _matherr;
pub const HUGE = _HUGE;
pub const tagLC_ID = struct_tagLC_ID;
pub const lconv = struct_lconv;
pub const __lc_time_data = struct___lc_time_data;
pub const threadlocaleinfostruct = struct_threadlocaleinfostruct;
pub const threadmbcinfostruct = struct_threadmbcinfostruct;
pub const localeinfo_struct = struct_localeinfo_struct;
pub const _exception = struct__exception;
pub const _complex = struct__complex;
