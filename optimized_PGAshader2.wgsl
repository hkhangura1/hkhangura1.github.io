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

var<private> tint_symbol_21_1 : vec2f;

var<private> tint_symbol_22_1 : u32;

var<private> value = vec4f();

var<private> value_1 = vec4f();

@group(0) @binding(0) var<uniform> tint_symbol_8 : tint_symbol_8_block;

fn tint_symbol_9(tint_symbol_10 : tint_symbol, tint_symbol_11 : tint_symbol) -> tint_symbol {
  return tint_symbol(((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_1) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_2)), ((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_2) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_1)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_3) + (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_4)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_1)) - (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_2)), ((((tint_symbol_10.tint_symbol_1 * tint_symbol_11.tint_symbol_4) - (tint_symbol_10.tint_symbol_2 * tint_symbol_11.tint_symbol_3)) + (tint_symbol_10.tint_symbol_3 * tint_symbol_11.tint_symbol_2)) + (tint_symbol_10.tint_symbol_4 * tint_symbol_11.tint_symbol_1)));
}

fn tint_symbol_12(tint_symbol_10_1 : tint_symbol) -> tint_symbol {
  return tint_symbol(tint_symbol_10_1.tint_symbol_1, -(tint_symbol_10_1.tint_symbol_2), -(tint_symbol_10_1.tint_symbol_3), -(tint_symbol_10_1.tint_symbol_4));
}

fn tint_symbol_13(tint_symbol_14 : tint_symbol, tint_symbol_15 : tint_symbol) -> tint_symbol {
  let x_87 = tint_symbol_12(tint_symbol_15);
  let x_88 = tint_symbol_9(tint_symbol_14, x_87);
  let x_89 = tint_symbol_9(tint_symbol_15, x_88);
  return x_89;
}

fn tint_symbol_16(tint_symbol_14_1 : vec2f) -> tint_symbol {
  return tint_symbol(0.0f, 1.0f, tint_symbol_14_1.y, -(tint_symbol_14_1.x));
}

fn tint_symbol_17(tint_symbol_14_2 : tint_symbol) -> vec2f {
  return vec2f((-(tint_symbol_14_2.tint_symbol_4) / tint_symbol_14_2.tint_symbol_2), (tint_symbol_14_2.tint_symbol_3 / tint_symbol_14_2.tint_symbol_2));
}

fn tint_symbol_18(tint_symbol_14_3 : vec2f, tint_symbol_15_1 : tint_symbol) -> vec2f {
  let x_116 = tint_symbol_16(tint_symbol_14_3);
  let x_117 = tint_symbol_13(x_116, tint_symbol_15_1);
  let x_118 = tint_symbol_17(x_117);
  return x_118;
}

fn tint_mod(lhs : u32, rhs : u32) -> u32 {
  return (lhs % select(rhs, 1u, (rhs == 0u)));
}

fn tint_div(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 / select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_20_inner(tint_symbol_21 : vec2f, tint_symbol_22 : u32) -> vec4f {
  var x_150 = vec2f();
  var x_157 = vec2f();
  var x_162 = vec2f();
  var x_168 = vec2f();
  let x_142 = tint_mod(tint_symbol_22, 10u);
  let x_144 = tint_div(tint_symbol_22, 10u);
  let x_155 = (1.0f * 2.0f);
  let x_159 = -(1.0f);
  let x_166 = ((x_155 / 10.0f) * 0.5f);
  let x_175 = tint_symbol_8.inner.tint_symbol_6;
  let x_171 = tint_symbol_12(x_175);
  let x_176 = tint_symbol_18(((tint_symbol_21 / vec2f(10.0f)) + ((vec2f(x_159) + ((vec2f(f32(x_142), f32(x_144)) / vec2f(10.0f)) * x_155)) + vec2f(x_166))), x_171);
  let x_180 = (x_176 * tint_symbol_8.inner.tint_symbol_7);
  return vec4f(x_180.x, x_180.y, 0.0f, 1.0f);
}

fn tint_symbol_20_1() {
  let x_189 = tint_symbol_21_1;
  let x_190 = tint_symbol_22_1;
  let x_188 = tint_symbol_20_inner(x_189, x_190);
  value = x_188;
  return;
}

struct tint_symbol_20_out {
  @builtin(position)
  value_2 : vec4f,
}

@vertex
fn vertexMain(@location(0) tint_symbol_21_1_param : vec2f, @builtin(instance_index) tint_symbol_22_1_param : u32) -> tint_symbol_20_out {
  tint_symbol_21_1 = tint_symbol_21_1_param;
  tint_symbol_22_1 = tint_symbol_22_1_param;
  tint_symbol_20_1();
  return tint_symbol_20_out(value);
}

fn tint_symbol_32_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_32_1() {
  let x_200 = tint_symbol_32_inner();
  value_1 = x_200;
  return;
}

struct tint_symbol_32_out {
  @location(0)
  value_1_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_32_out {
  tint_symbol_32_1();
  return tint_symbol_32_out(value_1);
}
