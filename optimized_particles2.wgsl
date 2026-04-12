/*
 * Copyright (c) 2026 Sing Chun LEE @ Bucknell University. CC BY-NC 4.0.
 * 
 * This code is provided mainly for educational purposes at University of the Pacific.
 *
 * This code is licensed under the Creative Commons Attribution-NonCommercial 4.0
 * International License. To view a copy of the license, visit 
 *   https://creativecommons.org/licenses/by-nc/4.0/
 * or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.
 *
 * You are free to:
 *  - Share: copy and redistribute the material in any medium or format.
 *  - Adapt: remix, transform, and build upon the material.
 *
 * Under the following terms:
 *  - Attribution: You must give appropriate credit, provide a link to the license,
 *                 and indicate if changes were made.
 *  - NonCommercial: You may not use the material for commercial purposes.
 *  - No additional restrictions: You may not apply legal terms or technological 
 *                                measures that legally restrict others from doing
 *                                anything the license permits.
 */

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

struct tint_symbol_9_block {
  /* @offset(0) */
  inner : RTArr,
}

struct tint_symbol_11_block {
  /* @offset(0) */
  inner : f32,
}

struct tint_symbol_6 {
  /* @offset(0) */
  tint_symbol_7 : vec4f,
  /* @offset(16) */
  tint_symbol_8 : f32,
}

var<private> tint_symbol_13_1 : u32;

var<private> tint_symbol_14_1 : u32;

var<private> tint_symbol_7_1 = vec4f();

var<private> tint_symbol_8_1 = 0.0f;

var<private> tint_symbol_8_2 : f32;

var<private> value = vec4f();

var<private> tint_symbol_35_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_9 : tint_symbol_9_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_10 : tint_symbol_9_block;

@group(0) @binding(2) var<uniform> tint_symbol_11 : tint_symbol_11_block;

fn tint_symbol_12_inner(tint_symbol_13 : u32, tint_symbol_14 : u32) -> tint_symbol_6 {
  var x_50 = vec2f();
  var tint_symbol_8 = 0.0f;
  var tint_symbol_21 = tint_symbol_6(vec4f(), 0.0f);
  let x_39 = tint_symbol_9.inner[tint_symbol_13].tint_symbol_1;
  let x_46 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_14));
  tint_symbol_8 = (length((x_39 - vec2f(0.0f))) * 1024.0f);
  if ((tint_symbol_8 > 255.0f)) {
    tint_symbol_8 = 255.0f;
  }
  let x_68 = ((0.01250000018626451492f * (255.0f - tint_symbol_8)) / 255.0f);
  let x_85 = vec2f(((cos(x_46) * x_68) + x_39.x), ((sin(x_46) * x_68) + x_39.y));
  tint_symbol_21.tint_symbol_7 = vec4f(x_85.x, x_85.y, 0.0f, 1.0f);
  tint_symbol_21.tint_symbol_8 = tint_symbol_8;
  let x_93 = tint_symbol_21;
  return x_93;
}

fn tint_symbol_12_1() {
  let x_99 = tint_symbol_13_1;
  let x_100 = tint_symbol_14_1;
  let x_98 = tint_symbol_12_inner(x_99, x_100);
  tint_symbol_7_1 = x_98.tint_symbol_7;
  tint_symbol_8_1 = x_98.tint_symbol_8;
  return;
}

struct tint_symbol_12_out {
  @builtin(position)
  tint_symbol_7_1_1 : vec4f,
  @location(0)
  tint_symbol_8_1_1 : f32,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_13_1_param : u32, @builtin(vertex_index) tint_symbol_14_1_param : u32) -> tint_symbol_12_out {
  tint_symbol_13_1 = tint_symbol_13_1_param;
  tint_symbol_14_1 = tint_symbol_14_1_param;
  tint_symbol_12_1();
  return tint_symbol_12_out(tint_symbol_7_1, tint_symbol_8_1);
}

const x_114 = vec4f(0.94901961088180541992f, 0.49019607901573181152f, 0.04705882444977760315f, 1.0f);

fn tint_symbol_22_inner(tint_symbol_8_3 : f32) -> vec4f {
  if ((tint_symbol_8_3 > 128.0f)) {
    let x_125 = ((tint_symbol_8_3 - 128.0f) / 127.0f);
    return ((vec4f(0.50196081399917602539f, 0.03529411926865577698f, 0.03529411926865577698f, 1.0f) * x_125) + (x_114 * (1.0f - x_125)));
  } else {
    let x_131 = ((128.0f - tint_symbol_8_3) / 128.0f);
    return ((vec4f(0.99215686321258544922f, 0.81176471710205078125f, 0.34509804844856262207f, 1.0f) * x_131) + (x_114 * (1.0f - x_131)));
  }
}

fn tint_symbol_22_1() {
  let x_139 = tint_symbol_8_2;
  let x_138 = tint_symbol_22_inner(x_139);
  value = x_138;
  return;
}

struct tint_symbol_22_out {
  @location(0)
  value_1 : vec4f,
}

@fragment
fn fragmentMain(@location(0) tint_symbol_8_2_param : f32) -> tint_symbol_22_out {
  tint_symbol_8_2 = tint_symbol_8_2_param;
  tint_symbol_22_1();
  return tint_symbol_22_out(value);
}

fn tint_symbol_27(tint_symbol_28 : f32, tint_symbol_29 : f32, tint_symbol_30 : f32) -> vec2f {
  let x_148 = (sin((tint_symbol_28 * tint_symbol_29)) * 3.14159274101257324219f);
  return (vec2f(cos(x_148), sin(x_148)) * tint_symbol_30);
}

fn tint_symbol_32(tint_symbol_28_1 : f32, tint_symbol_33 : f32) -> f32 {
  return fract((sin((tint_symbol_28_1 + tint_symbol_33)) * 43758.546875f));
}

fn tint_symbol_34_inner(tint_symbol_35 : vec3u) {
  var x_167 : u32;
  var x_225 : bool;
  var x_226 : bool;
  var x_231 : bool;
  var x_232 : bool;
  var x_237 : bool;
  var x_238 : bool;
  x_167 = tint_symbol_35.x;
  if ((x_167 < arrayLength(&(tint_symbol_9.inner)))) {
    tint_symbol_10.inner[x_167] = tint_symbol_9.inner[x_167];
    tint_symbol_10.inner[x_167].tint_symbol_1 = (tint_symbol_9.inner[x_167].tint_symbol_1 + tint_symbol_9.inner[x_167].tint_symbol_3);
    tint_symbol_10.inner[x_167].tint_symbol_4 = (tint_symbol_9.inner[x_167].tint_symbol_4 - 1.0f);
    tint_symbol_10.inner[x_167].tint_symbol_1.x = (tint_symbol_10.inner[x_167].tint_symbol_1.x + ((0.0f - tint_symbol_9.inner[x_167].tint_symbol_1.x) * 0.20000000298023223877f));
    tint_symbol_10.inner[x_167].tint_symbol_3.x = (tint_symbol_10.inner[x_167].tint_symbol_3.x * 0.98000001907348632812f);
    let x_205 = tint_symbol_10.inner[x_167].tint_symbol_3.x;
    let x_209 = tint_symbol_11.inner;
    let x_206 = tint_symbol_32(x_209, f32(x_167));
    tint_symbol_10.inner[x_167].tint_symbol_3.x = (x_205 + ((x_206 - 0.5f) * 0.00009999999747378752f));
    let x_219 = (tint_symbol_10.inner[x_167].tint_symbol_1.x > 1.01999998092651367188f);
    x_226 = x_219;
    if (x_219) {
    } else {
      x_225 = (tint_symbol_10.inner[x_167].tint_symbol_1.x < -1.01999998092651367188f);
      x_226 = x_225;
    }
    x_232 = x_226;
    if (x_226) {
    } else {
      x_231 = (tint_symbol_10.inner[x_167].tint_symbol_1.y > 1.01999998092651367188f);
      x_232 = x_231;
    }
    x_238 = x_232;
    if (x_232) {
    } else {
      x_237 = (tint_symbol_10.inner[x_167].tint_symbol_1.y < -1.01999998092651367188f);
      x_238 = x_237;
    }
    if (x_238) {
      tint_symbol_10.inner[x_167].tint_symbol_1 = tint_symbol_9.inner[x_167].tint_symbol_2;
      tint_symbol_10.inner[x_167].tint_symbol_4 = 255.0f;
    }
  }
  return;
}

fn tint_symbol_34_1() {
  let x_248 = tint_symbol_35_1;
  tint_symbol_34_inner(x_248);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_35_1_param : vec3u) {
  tint_symbol_35_1 = tint_symbol_35_1_param;
  tint_symbol_34_1();
}
