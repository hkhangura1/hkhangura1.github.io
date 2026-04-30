alias RTArr = array<f32>;

struct tint_symbol_2_block {
  /* @offset(0) */
  inner : RTArr,
}

var<private> tint_symbol_4_1 : vec3u;

@group(0) @binding(0) var tint_symbol : texture_2d<f32>;

@group(0) @binding(1) var tint_symbol_1 : texture_storage_2d<rgba8unorm, write>;

@group(0) @binding(2) var<storage> tint_symbol_2 : tint_symbol_2_block;

fn tint_div(lhs : i32, rhs : i32) -> i32 {
  return (lhs / select(rhs, 1i, ((rhs == 0i) | ((lhs == i32(-2147483648)) & (rhs == -1i)))));
}

fn tint_symbol_3_inner(tint_symbol_4 : vec3u) {
  var tint_symbol_9 = vec4f();
  var x_43 : vec4f;
  var x_54 : i32;
  let x_39 = bitcast<vec2i>(tint_symbol_4.xy);
  x_43 = textureLoad(tint_symbol, x_39, 0i);
  let x_46 = vec2i(textureDimensions(tint_symbol, 0i));
  x_54 = ((x_39.y * bitcast<i32>(x_46.x)) + x_39.x);
  tint_symbol_9 = x_43;
  let x_59 = tint_div(bitcast<i32>(x_46.y), 2i);
  if ((x_39.y > x_59)) {
    tint_symbol_9 = x_43;
  } else {
    if ((abs(tint_symbol_2.inner[x_54]) < 0.30000001192092895508f)) {
      tint_symbol_9.x = max(min((x_43.x + tint_symbol_2.inner[x_54]), 1.0f), 0.0f);
      tint_symbol_9.y = max(min((x_43.y + tint_symbol_2.inner[x_54]), 1.0f), 0.0f);
      tint_symbol_9.z = max(min((x_43.z + tint_symbol_2.inner[x_54]), 1.0f), 0.0f);
    }
    tint_symbol_9.w = x_43.w;
  }
  let x_108 = tint_symbol_9;
  textureStore(tint_symbol_1, x_39, x_108);
  return;
}

fn tint_symbol_3_1() {
  let x_113 = tint_symbol_4_1;
  tint_symbol_3_inner(x_113);
  return;
}

@compute @workgroup_size(8i, 8i, 1i)
fn computeMain(@builtin(global_invocation_id) tint_symbol_4_1_param : vec3u) {
  tint_symbol_4_1 = tint_symbol_4_1_param;
  tint_symbol_3_1();
}
