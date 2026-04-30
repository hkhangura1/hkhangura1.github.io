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

struct tint_symbol_13 {
  /* @offset(0) */
  tint_symbol_10 : vec4f,
  /* @offset(16) */
  tint_symbol_14 : vec4f,
}

var<private> tint_symbol_16_1 : vec2f;

var<private> tint_symbol_17_1 : vec4f;

var<private> tint_symbol_10_1 = vec4f();

var<private> tint_symbol_14_1 = vec4f();

var<private> tint_symbol_17_2 : vec4f;

var<private> value = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_4 : tint_symbol_4_block;

fn tint_symbol_5(tint_symbol_6 : vec4f, tint_symbol_7 : vec4f) -> vec4f {
  return vec4f(((((tint_symbol_6.x * tint_symbol_7.x) + (tint_symbol_6.y * tint_symbol_7.y)) + (tint_symbol_6.z * tint_symbol_7.z)) - (tint_symbol_6.w * tint_symbol_7.w)), ((((tint_symbol_6.x * tint_symbol_7.y) + (tint_symbol_6.y * tint_symbol_7.x)) - (tint_symbol_6.z * tint_symbol_7.w)) + (tint_symbol_6.w * tint_symbol_7.z)), ((((tint_symbol_6.x * tint_symbol_7.z) + (tint_symbol_6.y * tint_symbol_7.w)) + (tint_symbol_6.z * tint_symbol_7.x)) - (tint_symbol_6.w * tint_symbol_7.y)), ((((tint_symbol_6.x * tint_symbol_7.w) + (tint_symbol_6.y * tint_symbol_7.z)) - (tint_symbol_6.z * tint_symbol_7.y)) + (tint_symbol_6.w * tint_symbol_7.x)));
}

fn tint_symbol_8(tint_symbol_6_1 : vec4f) -> vec4f {
  return vec4f(tint_symbol_6_1.x, tint_symbol_6_1.y, tint_symbol_6_1.z, -(tint_symbol_6_1.w));
}

fn tint_symbol_9(tint_symbol_10 : vec2f, tint_symbol_11 : vec2f) -> vec2f {
  let x_113 = tint_symbol_8(vec4f(tint_symbol_11.x, 0.0f, 0.0f, tint_symbol_11.y));
  let x_117 = tint_symbol_5(vec4f(0.0f, tint_symbol_10.x, tint_symbol_10.y, 0.0f), x_113);
  let x_118 = tint_symbol_5(vec4f(tint_symbol_11.x, 0.0f, 0.0f, tint_symbol_11.y), x_117);
  return vec2f(x_118.y, x_118.z);
}

fn tint_symbol_15_inner(tint_symbol_16 : vec2f, tint_symbol_17 : vec4f) -> tint_symbol_13 {
  var tint_symbol_20 = tint_symbol_13(vec4f(), vec4f());
  let x_133 = tint_symbol_4.inner.tint_symbol_1;
  let x_128 = tint_symbol_9(tint_symbol_16, x_133);
  let x_141 = ((x_128 + tint_symbol_4.inner.tint_symbol_2) * tint_symbol_4.inner.tint_symbol_3);
  tint_symbol_20.tint_symbol_10 = vec4f(x_141.x, x_141.y, 0.0f, 1.0f);
  tint_symbol_20.tint_symbol_14 = tint_symbol_17;
  let x_152 = tint_symbol_20;
  return x_152;
}

fn tint_symbol_15_1() {
  let x_158 = tint_symbol_16_1;
  let x_159 = tint_symbol_17_1;
  let x_157 = tint_symbol_15_inner(x_158, x_159);
  tint_symbol_10_1 = x_157.tint_symbol_10;
  tint_symbol_14_1 = x_157.tint_symbol_14;
  return;
}

struct tint_symbol_15_out {
  @builtin(position)
  tint_symbol_10_1_1 : vec4f,
  @location(0)
  tint_symbol_14_1_1 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_16_1_param : vec2f, @location(1) tint_symbol_17_1_param : vec4f) -> tint_symbol_15_out {
  tint_symbol_16_1 = tint_symbol_16_1_param;
  tint_symbol_17_1 = tint_symbol_17_1_param;
  tint_symbol_15_1();
  return tint_symbol_15_out(tint_symbol_10_1, tint_symbol_14_1);
}

fn tint_symbol_21_inner(tint_symbol_17_3 : vec4f) -> vec4f {
  return tint_symbol_17_3;
}

fn tint_symbol_21_1() {
  let x_168 = tint_symbol_17_2;
  let x_167 = tint_symbol_21_inner(x_168);
  value = x_167;
  return;
}

struct tint_symbol_21_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_17_2_param : vec4f) -> tint_symbol_21_out {
  tint_symbol_17_2 = tint_symbol_17_2_param;
  tint_symbol_21_1();
  return tint_symbol_21_out(value);
}
