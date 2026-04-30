struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
}

struct tint_symbol_4_block {
  /* @offset(0) */
  inner : tint_symbol,
}

var<private> tint_symbol_14_1 : vec2f;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_4 : tint_symbol_4_block;

fn tint_symbol_5(tint_symbol_6 : vec4f, tint_symbol_7 : vec4f) -> vec4f {
  return vec4f(((((tint_symbol_6.x * tint_symbol_7.x) + (tint_symbol_6.y * tint_symbol_7.y)) + (tint_symbol_6.z * tint_symbol_7.z)) - (tint_symbol_6.w * tint_symbol_7.w)), ((((tint_symbol_6.x * tint_symbol_7.y) + (tint_symbol_6.y * tint_symbol_7.x)) - (tint_symbol_6.z * tint_symbol_7.w)) + (tint_symbol_6.w * tint_symbol_7.z)), ((((tint_symbol_6.x * tint_symbol_7.z) + (tint_symbol_6.y * tint_symbol_7.w)) + (tint_symbol_6.z * tint_symbol_7.x)) - (tint_symbol_6.w * tint_symbol_7.y)), ((((tint_symbol_6.x * tint_symbol_7.w) + (tint_symbol_6.y * tint_symbol_7.z)) - (tint_symbol_6.z * tint_symbol_7.y)) + (tint_symbol_6.w * tint_symbol_7.x)));
}

fn tint_symbol_8(tint_symbol_6_1 : vec4f) -> vec4f {
  return vec4f(tint_symbol_6_1.x, tint_symbol_6_1.y, tint_symbol_6_1.z, -(tint_symbol_6_1.w));
}

fn tint_symbol_9(tint_symbol_10 : vec2f, tint_symbol_11 : vec2f) -> vec2f {
  let x_109 = tint_symbol_8(vec4f(tint_symbol_11.x, 0.0f, 0.0f, tint_symbol_11.y));
  let x_113 = tint_symbol_5(vec4f(0.0f, tint_symbol_10.x, tint_symbol_10.y, 0.0f), x_109);
  let x_114 = tint_symbol_5(vec4f(tint_symbol_11.x, 0.0f, 0.0f, tint_symbol_11.y), x_113);
  return vec2f(x_114.y, x_114.z);
}

fn tint_symbol_13_inner(tint_symbol_14 : vec2f) -> vec4f {
  let x_127 = tint_symbol_4.inner.tint_symbol_1;
  let x_122 = tint_symbol_9(tint_symbol_14, x_127);
  let x_135 = ((x_122 + tint_symbol_4.inner.tint_symbol_2) * tint_symbol_4.inner.tint_symbol_3);
  return vec4f(x_135.x, x_135.y, 0.0f, 1.0f);
}

fn tint_symbol_13_1() {
  let x_145 = tint_symbol_14_1;
  let x_144 = tint_symbol_13_inner(x_145);
  value = x_144;
  return;
}

struct tint_symbol_13_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_14_1_param : vec2f) -> tint_symbol_13_out {
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_13_1();
  return tint_symbol_13_out(value);
}

fn tint_symbol_17_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_17_1() {
  let x_155 = tint_symbol_17_inner();
  value_1 = x_155;
  return;
}

struct tint_symbol_17_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_17_out {
  tint_symbol_17_1();
  return tint_symbol_17_out(value_1);
}
