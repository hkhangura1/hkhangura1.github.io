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
}

alias RTArr = array<tint_symbol>;

struct tint_symbol_5_block {
  /* @offset(0) */
  inner : RTArr,
}

alias Arr = array<u32, 1u>;

var<private> tint_symbol_8_1 : u32;

var<private> tint_symbol_9_1 : u32;

var<private> value_1 = vec4f();

var<private> value_2 = vec4f();

var<private> tint_symbol_23_1 : vec3u;

@group(0) @binding(0) var<storage> tint_symbol_5 : tint_symbol_5_block;

@group(0) @binding(1) var<storage, read_write> tint_symbol_6 : tint_symbol_5_block;

fn tint_symbol_7_inner(tint_symbol_8 : u32, tint_symbol_9 : u32) -> vec4f {
  let x_32 = tint_symbol_5.inner[tint_symbol_8].tint_symbol_1;
  let x_40 = (((2.0f * 3.14159274101257324219f) / 8.0f) * f32(tint_symbol_9));
  let x_50 = vec2f(((cos(x_40) * 0.01250000018626451492f) + x_32.x), ((sin(x_40) * 0.01250000018626451492f) + x_32.y));
  return vec4f(x_50.x, x_50.y, 0.0f, 1.0f);
}

fn tint_symbol_7_1() {
  let x_60 = tint_symbol_8_1;
  let x_61 = tint_symbol_9_1;
  let x_59 = tint_symbol_7_inner(x_60, x_61);
  value_1 = x_59;
  return;
}

struct tint_symbol_7_out {
  @builtin(position)
  value_1_1 : vec4f,
}

@vertex
fn vertexMain(@builtin(instance_index) tint_symbol_8_1_param : u32, @builtin(vertex_index) tint_symbol_9_1_param : u32) -> tint_symbol_7_out {
  tint_symbol_8_1 = tint_symbol_8_1_param;
  tint_symbol_9_1 = tint_symbol_9_1_param;
  tint_symbol_7_1();
  return tint_symbol_7_out(value_1);
}

fn tint_symbol_16_inner() -> vec4f {
  return vec4f(0.93333333730697631836f, 0.46274510025978088379f, 0.13725490868091583252f, 1.0f);
}

fn tint_symbol_16_1() {
  let x_71 = tint_symbol_16_inner();
  value_2 = x_71;
  return;
}

struct tint_symbol_16_out {
  @location(0)
  value_2_1 : vec4f,
}

@fragment
fn fragmentMain() -> tint_symbol_16_out {
  tint_symbol_16_1();
  return tint_symbol_16_out(value_2);
}

fn tint_symbol_17(tint_symbol_18 : f32, tint_symbol_19 : f32, tint_symbol_20 : f32) -> vec2f {
  let x_80 = (sin((tint_symbol_18 * tint_symbol_19)) * 3.14159274101257324219f);
  return (vec2f(cos(x_80), sin(x_80)) * tint_symbol_20);
}

fn assign_and_preserve_padding_tint_symbol_6_X(dest : Arr, value : tint_symbol) {
  tint_symbol_6.inner[dest[0u]].tint_symbol_1 = value.tint_symbol_1;
  tint_symbol_6.inner[dest[0u]].tint_symbol_2 = value.tint_symbol_2;
  tint_symbol_6.inner[dest[0u]].tint_symbol_3 = value.tint_symbol_3;
  tint_symbol_6.inner[dest[0u]].tint_symbol_4 = value.tint_symbol_4;
  return;
}

fn tint_symbol_22_inner(tint_symbol_23 : vec3u) {
  var x_113 : u32;
  var x_152 : bool;
  var x_153 : bool;
  x_113 = tint_symbol_23.x;
  let x_117 = tint_symbol_5.inner[x_113].tint_symbol_1.y;
  let x_114 = tint_symbol_17(x_117, 1.5f, 0.00004999999873689376f);
  if ((x_113 < arrayLength(&(tint_symbol_5.inner)))) {
    let x_129 = tint_symbol_5.inner[x_113];
    assign_and_preserve_padding_tint_symbol_6_X(Arr(x_113), x_129);
    tint_symbol_6.inner[x_113].tint_symbol_1 = (tint_symbol_5.inner[x_113].tint_symbol_1 + tint_symbol_5.inner[x_113].tint_symbol_3);
    tint_symbol_6.inner[x_113].tint_symbol_3 = (tint_symbol_5.inner[x_113].tint_symbol_3 + vec2f(0.0f, -(0.00100000004749745131f)));
    let x_146 = (tint_symbol_6.inner[x_113].tint_symbol_1.x > 1.01999998092651367188f);
    x_153 = x_146;
    if (x_146) {
    } else {
      x_152 = (tint_symbol_6.inner[x_113].tint_symbol_1.x < -1.01999998092651367188f);
      x_153 = x_152;
    }
    if (x_153) {
      tint_symbol_6.inner[x_113].tint_symbol_1 = tint_symbol_5.inner[x_113].tint_symbol_2;
    }
  }
  return;
}

fn tint_symbol_22_1() {
  let x_162 = tint_symbol_23_1;
  tint_symbol_22_inner(x_162);
  return;
}

@compute @workgroup_size(256i, 1i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_23_1_param : vec3u) {
  tint_symbol_23_1 = tint_symbol_23_1_param;
  tint_symbol_22_1();
}
