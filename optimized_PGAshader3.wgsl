struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : f32,
  /* @offset(4) */
  tint_symbol_2 : f32,
  /* @offset(8) */
  tint_symbol_3 : f32,
  /* @offset(12) */
  tint_symbol_4 : f32,
}

struct tint_symbol_5 {
  /* @offset(0) */
  tint_symbol_6 : tint_symbol,
  /* @offset(16) */
  tint_symbol_7 : vec2f,
}

struct tint_symbol_8_block {
  /* @offset(0) */
  inner : tint_symbol_5,
}

alias RTArr = array<u32>;

struct tint_symbol_9_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_28 {
  /* @offset(0) */
  tint_symbol_29 : vec4f,
  /* @offset(16) */
  tint_symbol_30 : f32,
}

var<private> tint_symbol_23_1 : vec3u;

var<private> tint_symbol_29_1 : vec2f;

var<private> tint_symbol_32_1 : u32;

var<private> tint_symbol_29_2 = vec4f();

var<private> tint_symbol_30_1 = 0.0f;

var<private> tint_symbol_30_2 : f32;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

@group(0) @binding(1) var<storage> tint_symbol_9 : tint_symbol_9_block;

@group(0) @binding(2) var<storage, read_write> tint_symbol_10 : tint_symbol_9_block;

fn tint_symbol_11(tint_symbol_12 : tint_symbol, tint_symbol_13 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_1) - (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_2)), ((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_2) + (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_1)), ((((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_3) + (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_4)) + (tint_symbol_12.tint_symbol_3 * tint_symbol_13.tint_symbol_1)) - (tint_symbol_12.tint_symbol_4 * tint_symbol_13.tint_symbol_2)), ((((tint_symbol_12.tint_symbol_1 * tint_symbol_13.tint_symbol_4) - (tint_symbol_12.tint_symbol_2 * tint_symbol_13.tint_symbol_3)) + (tint_symbol_12.tint_symbol_3 * tint_symbol_13.tint_symbol_2)) + (tint_symbol_12.tint_symbol_4 * tint_symbol_13.tint_symbol_1)));
}

fn tint_symbol_14(tint_symbol_12_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_12_1.tint_symbol_1, -(tint_symbol_12_1.tint_symbol_2), -(tint_symbol_12_1.tint_symbol_3), -(tint_symbol_12_1.tint_symbol_4));
}

fn tint_symbol_15(tint_symbol_16 : tint_symbol, tint_symbol_17 : tint_symbol) -> tint_symbol {
  let x_98 = tint_symbol_14(tint_symbol_17);
  let x_99 = tint_symbol_11(tint_symbol_16, x_98);
  let x_100 = tint_symbol_11(tint_symbol_17, x_99);
  return x_100;
}

fn tint_symbol_18(tint_symbol_16_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_16_1.y, -(tint_symbol_16_1.x));
}

fn tint_symbol_19(tint_symbol_16_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_16_2.tint_symbol_4) / tint_symbol_16_2.tint_symbol_2), (tint_symbol_16_2.tint_symbol_3 / tint_symbol_16_2.tint_symbol_2));
}

fn tint_symbol_20(tint_symbol_16_3 : vec2f, tint_symbol_17_1 : tint_symbol) -> vec2f {
  let x_127 = tint_symbol_18(tint_symbol_16_3);
  let x_128 = tint_symbol_15(x_127, tint_symbol_17_1);
  let x_129 = tint_symbol_19(x_128);
  return x_129;
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_symbol_22_inner(tint_symbol_23 : vec3u) {
  let x_146 = tint_symbol_23.x;
  let x_147 = tint_symbol_23.y;
  let x_155 = tint_symbol_9.inner[((x_147 * 10u) + (x_146 + 1u))];
  let x_160 = tint_symbol_9.inner[((x_147 * 10u) + (x_146 - 1u))];
  let x_166 = tint_symbol_9.inner[(((x_147 + 1u) * 10u) + x_146)];
  let x_172 = tint_symbol_9.inner[(((x_147 - 1u) * 10u) + x_146)];
  let x_175 = ((x_147 * 10u) + x_146);
  let x_176 = tint_mod((x_175 + (((x_155 + x_160) + x_166) + x_172)), 2u);
  if ((x_176 == 1u)) {
    tint_symbol_10.inner[x_175] = 1u;
  } else {
    tint_symbol_10.inner[x_175] = 0u;
  }
  return;
}

fn tint_symbol_22_1() {
  let x_189 = tint_symbol_23_1;
  tint_symbol_22_inner(x_189);
  return;
}

@compute @workgroup_size(4i, 4i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_23_1_param : vec3u) {
  tint_symbol_23_1 = tint_symbol_23_1_param;
  tint_symbol_22_1();
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_31_inner(tint_symbol_29 : vec2f, tint_symbol_32 : u32) -> tint_symbol_28 {
  var x_210 = vec2f();
  var x_217 = vec2f();
  var x_222 = vec2f();
  var x_228 = vec2f();
  var tint_symbol_41 = tint_symbol_28(vec4f(), 0.0f);
  let x_203 = tint_mod(tint_symbol_32, 10u);
  let x_204 = tint_div(tint_symbol_32, 10u);
  let x_215 = (1.0f * 2.0f);
  let x_219 = -(1.0f);
  let x_226 = ((x_215 / 10.0f) * 0.5f);
  let x_234 = tint_symbol_8.inner.tint_symbol_6;
  let x_231 = tint_symbol_14(x_234);
  let x_235 = tint_symbol_20(((tint_symbol_29 / vec2f(1.0f)) + ((vec2f(x_219) + ((vec2f(f32(x_203), f32(x_204)) / vec2f(10.0f)) * x_215)) + vec2f(x_226))), x_231);
  let x_239 = (x_235 * tint_symbol_8.inner.tint_symbol_7);
  tint_symbol_41.tint_symbol_29 = vec4f(x_239.x, x_239.y, 0.0f, 1.0f);
  tint_symbol_41.tint_symbol_30 = f32(tint_symbol_9.inner[tint_symbol_32]);
  let x_253 = tint_symbol_41;
  return x_253;
}

fn tint_symbol_31_1() {
  let x_257 = tint_symbol_29_1;
  let x_258 = tint_symbol_32_1;
  let x_256 = tint_symbol_31_inner(x_257, x_258);
  tint_symbol_29_2 = x_256.tint_symbol_29;
  tint_symbol_30_1 = x_256.tint_symbol_30;
  return;
}

struct tint_symbol_31_out {
  @builtin(position)
  tint_symbol_29_2_1 : vec4f,
  @location(0)
  tint_symbol_30_1_1 : f32,
}

@vertex
fn vertexMain(@location(0) tint_symbol_29_1_param : vec2f, @builtin(instance_index) tint_symbol_32_1_param : u32) -> tint_symbol_31_out {
  tint_symbol_29_1 = tint_symbol_29_1_param;
  tint_symbol_32_1 = tint_symbol_32_1_param;
  tint_symbol_31_1();
  return tint_symbol_31_out(tint_symbol_29_2, tint_symbol_30_1);
}

fn tint_symbol_42_inner(tint_symbol_30 : f32) -> vec4f {
  return (vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f) * tint_symbol_30);
}

fn tint_symbol_42_1() {
  let x_273 = tint_symbol_30_2;
  let x_272 = tint_symbol_42_inner(x_273);
  value = x_272;
  return;
}

struct tint_symbol_42_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_30_2_param : f32) -> tint_symbol_42_out {
  tint_symbol_30_2 = tint_symbol_30_2_param;
  tint_symbol_42_1();
  return tint_symbol_42_out(value);
}
