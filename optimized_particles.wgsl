struct tint_symbol {
  /* @offset(0) */
  tint_symbol_1 : vec2f,
  /* @offset(8) */
  tint_symbol_2 : vec2f,
  /* @offset(16) */
  tint_symbol_3 : vec2f,
  /* @offset(24) */
  tint_symbol_4 : f32,
  /* @offset(28) */
  tint_symbol_5 : f32,
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_6_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_8_block {
  /* @offset(0) */
  inner : i32,
}

struct tint_symbol_9_block {
  /* @offset(0) */
  inner : vec2f,
}

struct tint_symbol_10 {
  /* @offset(0) */
  tint_symbol_11 : vec4f,
  /* @offset(16) */
  tint_symbol_12 : vec4f,
}

var<private> tint_symbol_14_1 : u32;

var<private> tint_symbol_15_1 : u32;

var<private> tint_symbol_11_1 = vec4f();

var<private> tint_symbol_12_1 = vec4f();

var<private> tint_symbol_27_1 : vec4f;

var<private> value = vec4f();

var<private> tint_symbol_37_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_6 : tint_symbol_6_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_7 : tint_symbol_6_block;

@group(0) @binding(2) var<uniform> tint_symbol_8 : tint_symbol_8_block;

@group(0) @binding(3) var<uniform> tint_symbol_9 : tint_symbol_9_block;

fn tint_ftoi(v : f32) -> i32 {
  return select(2147483647i, select(i32(v), i32(-2147483648), (v < -2147483648.0f)), (v < 2147483520.0f));
}

fn tint_symbol_13_inner(tint_symbol_14 : u32, tint_symbol_15 : u32) -> tint_symbol_10 {
  var tint_symbol_22 = tint_symbol_10(vec4f(), vec4f());
  let x_57 = tint_symbol_6.inner[tint_symbol_14].tint_symbol_1;
  let x_65 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_15));
  let x_80 = vec2f(((cos(x_65) * 0.01250000018626451492f) + x_57.x), ((sin(x_65) * 0.01250000018626451492f) + x_57.y));
  tint_symbol_22.tint_symbol_11 = vec4f(x_80.x, x_80.y, 0.0f, 1.0f);
  let x_92 = (tint_symbol_6.inner[tint_symbol_14].tint_symbol_4 / 32.0f);
  tint_symbol_22.tint_symbol_12 = ((vec4f(0.0f, 0.0f, 1.0f, 1.0f) * x_92) + (vec4f(1.0f, 0.0f, 0.0f, 1.0f) * (1.0f - x_92)));
  let x_99 = tint_symbol_22;
  return x_99;
}

fn tint_symbol_13_1() {
  let x_105 = tint_symbol_14_1;
  let x_106 = tint_symbol_15_1;
  let x_104 = tint_symbol_13_inner(x_105, x_106);
  tint_symbol_11_1 = x_104.tint_symbol_11;
  tint_symbol_12_1 = x_104.tint_symbol_12;
  return;
}

struct tint_symbol_13_out {
  @builtin(position)
  tint_symbol_11_1_1 : vec4f,
  @location(0)
  tint_symbol_12_1_1 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_14_1_param : u32, @builtin(vertex_index) tint_symbol_15_1_param : u32) -> tint_symbol_13_out {
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_15_1 = tint_symbol_15_1_param;
  tint_symbol_13_1();
  return tint_symbol_13_out(tint_symbol_11_1, tint_symbol_12_1);
}

fn tint_symbol_26_inner(tint_symbol_27 : vec4f) -> vec4f {
  return tint_symbol_27;
}

fn tint_symbol_26_1() {
  let x_116 = tint_symbol_27_1;
  let x_115 = tint_symbol_26_inner(x_116);
  value = x_115;
  return;
}

struct tint_symbol_26_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_27_1_param : vec4f) -> tint_symbol_26_out {
  tint_symbol_27_1 = tint_symbol_27_1_param;
  tint_symbol_26_1();
  return tint_symbol_26_out(value);
}

fn tint_symbol_28(tint_symbol_29 : f32, tint_symbol_30 : f32) -> f32 {
  return fract((sin((tint_symbol_29 + tint_symbol_30)) * 43758.546875f));
}

fn tint_symbol_31(tint_symbol_32 : f32) -> f32 {
  var tint_symbol_33 = 0.0f;
  var tint_symbol_34 = 0.0f;
  tint_symbol_33 = 8990000128.0f;
  tint_symbol_34 = 10.0f;
  let x_137 = tint_symbol_33;
  let x_138 = tint_symbol_34;
  return ((x_137 * x_138) / (tint_symbol_32 * tint_symbol_32));
}

fn tint_symbol_35(tint_symbol_32_1 : f32) -> f32 {
  var tint_symbol_33_1 = 0.0f;
  var tint_symbol_34_1 = 0.0f;
  tint_symbol_33_1 = 4495000064.0f;
  tint_symbol_34_1 = 10.0f;
  let x_149 = tint_symbol_33_1;
  let x_150 = tint_symbol_34_1;
  return ((x_149 * x_150) / (tint_symbol_32_1 * tint_symbol_32_1));
}

fn tint_mod(lhs : i32, rhs : i32) -> i32 {
  let x_159 = select(rhs, 1i, ((rhs == 0i) | ((lhs == i32(-2147483648)) & (rhs == -1i))));
  if (((bitcast<u32>((lhs | x_159)) & 2147483648u) != 0u)) {
    return (lhs - ((lhs / x_159) * x_159));
  } else {
    return (lhs % x_159);
  }
}

fn tint_mod_1(lhs_1 : u32, rhs_1 : u32) -> u32 {
  return (lhs_1 % select(rhs_1, 1u, (rhs_1 == 0u)));
}

fn tint_symbol_36_inner(tint_symbol_37 : vec3u) {
  var tint_symbol_38 = 0.0f;
  var tint_symbol_32_2 = 0.0f;
  var x_194 : u32;
  x_194 = tint_symbol_37.x;
  if ((x_194 < arrayLength(&(tint_symbol_6.inner)))) {
    tint_symbol_7.inner[x_194] = tint_symbol_6.inner[x_194];
    let x_203 = tint_ftoi((f32(x_194) / 128.0f));
    let x_210 = tint_symbol_8.inner;
    let x_207 = tint_mod(x_210, 128i);
    if ((x_203 == x_207)) {
      tint_symbol_7.inner[x_194].tint_symbol_1 = tint_symbol_9.inner;
      tint_symbol_7.inner[x_194].tint_symbol_4 = 0.0f;
    } else {
      let x_222 = tint_mod_1(x_194, 1024u);
      tint_symbol_38 = f32(x_222);
      tint_symbol_32_2 = length((tint_symbol_6.inner[x_194].tint_symbol_1 - tint_symbol_9.inner));
      if ((tint_symbol_32_2 == 0.0f)) {
        tint_symbol_32_2 = 0.00000099999999747524f;
        let x_239 = tint_symbol_38;
        let x_242 = tint_symbol_38;
        let x_246 = tint_symbol_32_2;
        let x_245 = tint_symbol_31(x_246);
        tint_symbol_7.inner[x_194].tint_symbol_1 = (tint_symbol_6.inner[x_194].tint_symbol_1 + ((vec2f(cos((0.04906250163912773132f * x_239)), sin((0.04906250163912773132f * x_242))) * x_245) * 0.00100000004749745131f));
      }
      tint_symbol_7.inner[x_194].tint_symbol_1 = (tint_symbol_6.inner[x_194].tint_symbol_1 + (vec2f(cos((0.04906250163912773132f * tint_symbol_38)), sin((0.04906250163912773132f * tint_symbol_38))) * 0.00999999977648258209f));
      tint_symbol_7.inner[x_194].tint_symbol_4 = (tint_symbol_6.inner[x_194].tint_symbol_4 + 1.0f);
    }
  }
  return;
}

fn tint_symbol_36_1() {
  let x_274 = tint_symbol_37_1;
  tint_symbol_36_inner(x_274);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_37_1_param : vec3u) {
  tint_symbol_37_1 = tint_symbol_37_1_param;
  tint_symbol_36_1();
}
