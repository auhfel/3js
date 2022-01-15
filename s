[1mdiff --git a/node_modules/three/LICENSE b/node_modules/three/LICENSE[m
[1mdeleted file mode 100644[m
[1mindex 5303437..0000000[m
[1m--- a/node_modules/three/LICENSE[m
[1m+++ /dev/null[m
[36m@@ -1,21 +0,0 @@[m
[31m-The MIT License[m
[31m-[m
[31m-Copyright © 2010-2021 three.js authors[m
[31m-[m
[31m-Permission is hereby granted, free of charge, to any person obtaining a copy[m
[31m-of this software and associated documentation files (the "Software"), to deal[m
[31m-in the Software without restriction, including without limitation the rights[m
[31m-to use, copy, modify, merge, publish, distribute, sublicense, and/or sell[m
[31m-copies of the Software, and to permit persons to whom the Software is[m
[31m-furnished to do so, subject to the following conditions:[m
[31m-[m
[31m-The above copyright notice and this permission notice shall be included in[m
[31m-all copies or substantial portions of the Software.[m
[31m-[m
[31m-THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR[m
[31m-IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,[m
[31m-FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE[m
[31m-AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER[m
[31m-LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,[m
[31m-OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN[m
[31m-THE SOFTWARE.[m
[1mdiff --git a/node_modules/three/README.md b/node_modules/three/README.md[m
[1mdeleted file mode 100644[m
[1mindex 17f64b6..0000000[m
[1m--- a/node_modules/three/README.md[m
[1m+++ /dev/null[m
[36m@@ -1,86 +0,0 @@[m
[31m-three.js[m
[31m-========[m
[31m-[m
[31m-[![NPM Package][npm]][npm-url][m
[31m-[![Build Size][build-size]][build-size-url][m
[31m-[![NPM Downloads][npm-downloads]][npmtrends-url][m
[31m-[![Language Grade][lgtm]][lgtm-url][m
[31m-[m
[31m-#### JavaScript 3D library ####[m
[31m-[m
[31m-The aim of the project is to create an easy to use, lightweight, cross-browser, general purpose 3D library. The current builds only include a WebGL renderer but WebGPU (experimental), SVG and CSS3D renderers are also available in the examples.[m
[31m-[m
[31m-[Examples](https://threejs.org/examples/) &mdash;[m
[31m-[Documentation](https://threejs.org/docs/) &mdash;[m
[31m-[Wiki](https://github.com/mrdoob/three.js/wiki) &mdash;[m
[31m-[Migrating](https://github.com/mrdoob/three.js/wiki/Migration-Guide) &mdash;[m
[31m-[Questions](http://stackoverflow.com/questions/tagged/three.js) &mdash;[m
[31m-[Forum](https://discourse.threejs.org/) &mdash;[m
[31m-[Slack](https://join.slack.com/t/threejs/shared_invite/zt-rnuegz5e-FQpc6YboDVW~5idlp7GfDw) &mdash;[m
[31m-[Discord](https://discordapp.com/invite/HF4UdyF)[m
[31m-[m
[31m-### Usage ###[m
[31m-[m
[31m-This code creates a scene, a camera, and a geometric cube, and it adds the cube to the scene. It then creates a `WebGL` renderer for the scene and camera, and it adds that viewport to the `document.body` element. Finally, it animates the cube within the scene for the camera.[m
[31m-[m
[31m-```javascript[m
[31m-import * as THREE from './js/three.module.js';[m
[31m-[m
[31m-let camera, scene, renderer;[m
[31m-let geometry, material, mesh;[m
[31m-[m
[31m-init();[m
[31m-[m
[31m-function init() {[m
[31m-[m
[31m-	camera = new THREE.PerspectiveCamera( 70, window.innerWidth / window.innerHeight, 0.01, 10 );[m
[31m-	camera.position.z = 1;[m
[31m-[m
[31m-	scene = new THREE.Scene();[m
[31m-[m
[31m-	geometry = new THREE.BoxGeometry( 0.2, 0.2, 0.2 );[m
[31m-	material = new THREE.MeshNormalMaterial();[m
[31m-[m
[31m-	mesh = new THREE.Mesh( geometry, material );[m
[31m-	scene.add( mesh );[m
[31m-[m
[31m-	renderer = new THREE.WebGLRenderer( { antialias: true } );[m
[31m-	renderer.setSize( window.innerWidth, window.innerHeight );[m
[31m-	renderer.setAnimationLoop( animation );[m
[31m-	document.body.appendChild( renderer.domElement );[m
[31m-[m
[31m-}[m
[31m-[m
[31m-function animation( time ) {[m
[31m-[m
[31m-	mesh.rotation.x = time / 2000;[m
[31m-	mesh.rotation.y = time / 1000;[m
[31m-[m
[31m-	renderer.render( scene, camera );[m
[31m-[m
[31m-}[m
[31m-```[m
[31m-[m
[31m-If everything went well, you should see [this](https://jsfiddle.net/vy29n6aj/).[m
[31m-[m
[31m-### Cloning this repository ###[m
[31m-[m
[31m-Cloning the repo with all its history results in a ~2 GB download. If you don't need the whole history you can use the `depth` parameter to significantly reduce download size.[m
[31m-[m
[31m-```sh[m
[31m-git clone --depth=1 https://github.com/mrdoob/three.js.git[m
[31m-```[m
[31m-[m
[31m-### Change log ###[m
[31m-[m
[31m-[Releases](https://github.com/mrdoob/three.js/releases)[m
[31m-[m
[31m-[m
[31m-[npm]: https://img.shields.io/npm/v/three[m
[31m-[npm-url]: https://www.npmjs.com/package/three[m
[31m-[build-size]: https://badgen.net/bundlephobia/minzip/three[m
[31m-[build-size-url]: https://bundlephobia.com/result?p=three[m
[31m-[npm-downloads]: https://img.shields.io/npm/dw/three[m
[31m-[npmtrends-url]: https://www.npmtrends.com/three[m
[31m-[lgtm]: https://img.shields.io/lgtm/alerts/github/mrdoob/three.js[m
[31m-[lgtm-url]: https://lgtm.com/projects/g/mrdoob/three.js/[m
[1mdiff --git a/node_modules/three/build/three.js b/node_modules/three/build/three.js[m
[1mdeleted file mode 100644[m
[1mindex fb4e6bb..0000000[m
[1m--- a/node_modules/three/build/three.js[m
[1m+++ /dev/null[m
[36m@@ -1,36678 +0,0 @@[m
[31m-/**[m
[31m- * @license[m
[31m- * Copyright 2010-2021 Three.js Authors[m
[31m- * SPDX-License-Identifier: MIT[m
[31m- */[m
[31m-(function (global, factory) {[m
[31m-	typeof exports === 'object' && typeof module !== 'undefined' ? factory(exports) :[m
[31m-	typeof define === 'function' && define.amd ? define(['exports'], factory) :[m
[31m-	(global = typeof globalThis !== 'undefined' ? globalThis : global || self, factory(global.THREE = {}));[m
[31m-})(this, (function (exports) { 'use strict';[m
[31m-[m
[31m-	const REVISION = '136';[m
[31m-	const MOUSE = {[m
[31m-		LEFT: 0,[m
[31m-		MIDDLE: 1,[m
[31m-		RIGHT: 2,[m
[31m-		ROTATE: 0,[m
[31m-		DOLLY: 1,[m
[31m-		PAN: 2[m
[31m-	};[m
[31m-	const TOUCH = {[m
[31m-		ROTATE: 0,[m
[31m-		PAN: 1,[m
[31m-		DOLLY_PAN: 2,[m
[31m-		DOLLY_ROTATE: 3[m
[31m-	};[m
[31m-	const CullFaceNone = 0;[m
[31m-	const CullFaceBack = 1;[m
[31m-	const CullFaceFront = 2;[m
[31m-	const CullFaceFrontBack = 3;[m
[31m-	const BasicShadowMap = 0;[m
[31m-	const PCFShadowMap = 1;[m
[31m-	const PCFSoftShadowMap = 2;[m
[31m-	const VSMShadowMap = 3;[m
[31m-	const FrontSide = 0;[m
[31m-	const BackSide = 1;[m
[31m-	const DoubleSide = 2;[m
[31m-	const FlatShading = 1;[m
[31m-	const SmoothShading = 2;[m
[31m-	const NoBlending = 0;[m
[31m-	const NormalBlending = 1;[m
[31m-	const AdditiveBlending = 2;[m
[31m-	const SubtractiveBlending = 3;[m
[31m-	const MultiplyBlending = 4;[m
[31m-	const CustomBlending = 5;[m
[31m-	const AddEquation = 100;[m
[31m-	const SubtractEquation = 101;[m
[31m-	const ReverseSubtractEquation = 102;[m
[31m-	const MinEquation = 103;[m
[31m-	const MaxEquation = 104;[m
[31m-	const ZeroFactor = 200;[m
[31m-	const OneFactor = 201;[m
[31m-	const SrcColorFactor = 202;[m
[31m-	const OneMinusSrcColorFactor = 203;[m
[31m-	const SrcAlphaFactor = 204;[m
[31m-	const OneMinusSrcAlphaFactor = 205;[m
[31m-	const DstAlphaFactor = 206;[m
[31m-	const OneMinusDstAlphaFactor = 207;[m
[31m-	const DstColorFactor = 208;[m
[31m-	const OneMinusDstColorFactor = 209;[m
[31m-	const SrcAlphaSaturateFactor = 210;[m
[31m-	const NeverDepth = 0;[m
[31m-	const AlwaysDepth = 1;[m
[31m-	const LessDepth = 2;[m
[31m-	const LessEqualDepth = 3;[m
[31m-	const EqualDepth = 4;[m
[31m-	const GreaterEqualDepth = 5;[m
[31m-	const GreaterDepth = 6;[m
[31m-	const NotEqualDepth = 7;[m
[31m-	const MultiplyOperation = 0;[m
[31m-	const MixOperation = 1;[m
[31m-	const AddOperation = 2;[m
[31m-	const NoToneMapping = 0;[m
[31m-	const LinearToneMapping = 1;[m
[31m-	const ReinhardToneMapping = 2;[m
[31m-	const CineonToneMapping = 3;[m
[31m-	const ACESFilmicToneMapping = 4;[m
[31m-	const CustomToneMapping = 5;[m
[31m-	const UVMapping = 300;[m
[31m-	const CubeReflectionMapping = 301;[m
[31m-	const CubeRefractionMapping = 302;[m
[31m-	const EquirectangularReflectionMapping = 303;[m
[31m-	const EquirectangularRefractionMapping = 304;[m
[31m-	const CubeUVReflectionMapping = 306;[m
[31m-	const CubeUVRefractionMapping = 307;[m
[31m-	const RepeatWrapping = 1000;[m
[31m-	const ClampToEdgeWrapping = 1001;[m
[31m-	const MirroredRepeatWrapping = 1002;[m
[31m-	const NearestFilter = 1003;[m
[31m-	const NearestMipmapNearestFilter = 1004;[m
[31m-	const NearestMipMapNearestFilter = 1004;[m
[31m-	const NearestMipmapLinearFilter = 1005;[m
[31m-	const NearestMipMapLinearFilter = 1005;[m
[31m-	const LinearFilter = 1006;[m
[31m-	const LinearMipmapNearestFilter = 1007;[m
[31m-	const LinearMipMapNearestFilter = 1007;[m
[31m-	const LinearMipmapLinearFilter = 1008;[m
[31m-	const LinearMipMapLinearFilter = 1008;[m
[31m-	const UnsignedByteType = 1009;[m
[31m-	const ByteType = 1010;[m
[31m-	const ShortType = 1011;[m
[31m-	const UnsignedShortType = 1012;[m
[31m-	const IntType = 1013;[m
[31m-	const UnsignedIntType = 1014;[m
[31m-	const FloatType = 1015;[m
[31m-	const HalfFloatType = 1016;[m
[31m-	const UnsignedShort4444Type = 1017;[m
[31m-	const UnsignedShort5551Type = 1018;[m
[31m-	const UnsignedShort565Type = 1019;[m
[31m-	const UnsignedInt248Type = 1020;[m
[31m-	const AlphaFormat = 1021;[m
[31m-	const RGBFormat = 1022;[m
[31m-	const RGBAFormat = 1023;[m
[31m-	const LuminanceFormat = 1024;[m
[31m-	const LuminanceAlphaFormat = 1025;[m
[31m-	const DepthFormat = 1026;[m
[31m-	const DepthStencilFormat = 1027;[m
[31m-	const RedFormat = 1028;[m
[31m-	const RedIntegerFormat = 1029;[m
[31m-	const RGFormat = 1030;[m
[31m-	const RGIntegerFormat = 1031;[m
[31m-	const RGBIntegerFormat = 1032;[m
[31m-	const RGBAIntegerFormat = 1033;[m
[31m-	const RGB_S3TC_DXT1_Format = 33776;[m
[31m-	const RGBA_S3TC_DXT1_Format = 33777;[m
[31m-	const RGBA_S3TC_DXT3_Format = 33778;[m
[31m-	const RGBA_S3TC_DXT5_Format = 33779;[m
[31m-	const RGB_PVRTC_4BPPV1_Format = 35840;[m
[31m-	const RGB_PVRTC_2BPPV1_Format = 35841;[m
[31m-	const RGBA_PVRTC_4BPPV1_Format = 35842;[m
[31m-	const RGBA_PVRTC_2BPPV1_Format = 35843;[m
[31m-	const RGB_ETC1_Format = 36196;[m
[31m-	const RGB_ETC2_Format = 37492;[m
[31m-	const RGBA_ETC2_EAC_Format = 37496;[m
[31m-	const RGBA_ASTC_4x4_Format = 37808;[m
[31m-	const RGBA_ASTC_5x4_Format = 37809;[m
[31m-	const RGBA_ASTC_5x5_Format = 37810;[m
[31m-	const RGBA_ASTC_6x5_Format = 37811;[m
[31m-	const RGBA_ASTC_6x6_Format = 37812;[m
[31m-	const RGBA_ASTC_8x5_Format = 37813;[m
[31m-	const RGBA_ASTC_8x6_Format = 37814;[m
[31m-	const RGBA_ASTC_8x8_Format = 37815;[m
[31m-	const RGBA_ASTC_10x5_Format = 37816;[m
[31m-	const RGBA_ASTC_10x6_Format = 37817;[m
[31m-	const RGBA_ASTC_10x8_Format = 37818;[m
[31m-	const RGBA_ASTC_10x10_Format = 37819;[m
[31m-	const RGBA_ASTC_12x10_Format = 37820;[m
[31m-	const RGBA_ASTC_12x12_Format = 37821;[m
[31m-	const RGBA_BPTC_Format = 36492;[m
[31m-	const SRGB8_ALPHA8_ASTC_4x4_Format = 37840;[m
[31m-	const SRGB8_ALPHA8_ASTC_5x4_Format = 37841;[m
[31m-	const SRGB8_ALPHA8_ASTC_5x5_Format = 37842;[m
[31m-	const SRGB8_ALPHA8_ASTC_6x5_Format = 37843;[m
[31m-	const SRGB8_ALPHA8_ASTC_6x6_Format = 37844;[m
[31m-	const SRGB8_ALPHA8_ASTC_8x5_Format = 37845;[m
[31m-	const SRGB8_ALPHA8_ASTC_8x6_Format = 37846;[m
[31m-	const SRGB8_ALPHA8_ASTC_8x8_Format = 37847;[m
[31m-	const SRGB8_ALPHA8_ASTC_10x5_Format = 37848;[m
[31m-	const SRGB8_ALPHA8_ASTC_10x6_Format = 37849;[m
[31m-	const SRGB8_ALPHA8_ASTC_10x8_Format = 37850;[m
[31m-	const SRGB8_ALPHA8_ASTC_10x10_Format = 37851;[m
[31m-	const SRGB8_ALPHA8_ASTC_12x10_Format = 37852;[m
[31m-	const SRGB8_ALPHA8_ASTC_12x12_Format = 37853;[m
[31m-	const LoopOnce = 2200;[m
[31m-	const LoopRepeat = 2201;[m
[31m-	const LoopPingPong = 2202;[m
[31m-	const InterpolateDiscrete = 2300;[m
[31m-	const InterpolateLinear = 2301;[m
[31m-	const InterpolateSmooth = 2302;[m
[31m-	const ZeroCurvatureEnding = 2400;[m
[31m-	const ZeroSlopeEnding = 2401;[m
[31m-	const WrapAroundEnding = 2402;[m
[31m-	const NormalAnimationBlendMode = 2500;[m
[31m-	const AdditiveAnimationBlendMode = 2501;[m
[31m-	const TrianglesDrawMode = 0;[m
[31m-	const TriangleStripDrawMode = 1;[m
[31m-	const TriangleFanDrawMode = 2;[m
[31m-	const LinearEncoding = 3000;[m
[31m-	const sRGBEncoding = 3001;[m
[31m-	const BasicDepthPacking = 3200;[m
[31m-	const RGBADepthPacking = 3201;[m
[31m-	const TangentSpaceNormalMap = 0;[m
[31m-	const ObjectSpaceNormalMap = 1;[m
[31m-	const ZeroStencilOp = 0;[m
[31m-	const KeepStencilOp = 7680;[m
[31m-	const ReplaceStencilOp = 7681;[m
[31m-	const IncrementStencilOp = 7682;[m
[31m-	const DecrementStencilOp = 7683;[m
[31m-	const IncrementWrapStencilOp = 34055;[m
[31m-	const DecrementWrapStencilOp = 34056;[m
[31m-	const InvertStencilOp = 5386;[m
[31m-	const NeverStencilFunc = 512;[m
[31m-	const LessStencilFunc = 513;[m
[31m-	const EqualStencilFunc = 514;[m
[31m-	const LessEqualStencilFunc = 515;[m
[31m-	const GreaterStencilFunc = 516;[m
[31m-	const NotEqualStencilFunc = 517;[m
[31m-	const GreaterEqualStencilFunc = 518;[m
[31m-	const AlwaysStencilFunc = 519;[m
[31m-	const StaticDrawUsage = 35044;[m
[31m-	const DynamicDrawUsage = 35048;[m
[31m-	const StreamDrawUsage = 35040;[m
[31m-	const StaticReadUsage = 35045;[m
[31m-	const DynamicReadUsage = 35049;[m
[31m-	const StreamReadUsage = 35041;[m
[31m-	const StaticCopyUsage = 35046;[m
[31m-	const DynamicCopyUsage = 35050;[m
[31m-	const StreamCopyUsage = 35042;[m
[31m-	const GLSL1 = '100';[m
[31m-	const GLSL3 = '300 es';[m
[31m-[m
[31m-	/**[m
[31m-	 * https://github.com/mrdoob/eventdispatcher.js/[m
[31m-	 */[m
[31m-	class EventDispatcher {[m
[31m-		addEventListener(type, listener) {[m
[31m-			if (this._listeners === undefined) this._listeners = {};[m
[31m-			const listeners = this._listeners;[m
[31m-[m
[31m-			if (listeners[type] === undefined) {[m
[31m-				listeners[type] = [];[m
[31m-			}[m
[31m-[m
[31m-			if (listeners[type].indexOf(listener) === -1) {[m
[31m-				listeners[type].push(listener);[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-		hasEventListener(type, listener) {[m
[31m-			if (this._listeners === undefined) return false;[m
[31m-			const listeners = this._listeners;[m
[31m-			return listeners[type] !== undefined && listeners[type].indexOf(listener) !== -1;[m
[31m-		}[m
[31m-[m
[31m-		removeEventListener(type, listener) {[m
[31m-			if (this._listeners === undefined) return;[m
[31m-			const listeners = this._listeners;[m
[31m-			const listenerArray = listeners[type];[m
[31m-[m
[31m-			if (listenerArray !== undefined) {[m
[31m-				const index = listenerArray.indexOf(listener);[m
[31m-[m
[31m-				if (index !== -1) {[m
[31m-					listenerArray.splice(index, 1);[m
[31m-				}[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-		dispatchEvent(event) {[m
[31m-			if (this._listeners === undefined) return;[m
[31m-			const listeners = this._listeners;[m
[31m-			const listenerArray = listeners[event.type];[m
[31m-[m
[31m-			if (listenerArray !== undefined) {[m
[31m-				event.target = this; // Make a copy, in case listeners are removed while iterating.[m
[31m-[m
[31m-				const array = listenerArray.slice(0);[m
[31m-[m
[31m-				for (let i = 0, l = array.length; i < l; i++) {[m
[31m-					array[i].call(this, event);[m
[31m-				}[m
[31m-[m
[31m-				event.target = null;[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	const _lut = [];[m
[31m-[m
[31m-	for (let i = 0; i < 256; i++) {[m
[31m-		_lut[i] = (i < 16 ? '0' : '') + i.toString(16);[m
[31m-	}[m
[31m-[m
[31m-	let _seed = 1234567;[m
[31m-	const DEG2RAD = Math.PI / 180;[m
[31m-	const RAD2DEG = 180 / Math.PI; // http://stackoverflow.com/questions/105034/how-to-create-a-guid-uuid-in-javascript/21963136#21963136[m
[31m-[m
[31m-	function generateUUID() {[m
[31m-		const d0 = Math.random() * 0xffffffff | 0;[m
[31m-		const d1 = Math.random() * 0xffffffff | 0;[m
[31m-		const d2 = Math.random() * 0xffffffff | 0;[m
[31m-		const d3 = Math.random() * 0xffffffff | 0;[m
[31m-		const uuid = _lut[d0 & 0xff] + _lut[d0 >> 8 & 0xff] + _lut[d0 >> 16 & 0xff] + _lut[d0 >> 24 & 0xff] + '-' + _lut[d1 & 0xff] + _lut[d1 >> 8 & 0xff] + '-' + _lut[d1 >> 16 & 0x0f | 0x40] + _lut[d1 >> 24 & 0xff] + '-' + _lut[d2 & 0x3f | 0x80] + _lut[d2 >> 8 & 0xff] + '-' + _lut[d2 >> 16 & 0xff] + _lut[d2 >> 24 & 0xff] + _lut[d3 & 0xff] + _lut[d3 >> 8 & 0xff] + _lut[d3 >> 16 & 0xff] + _lut[d3 >> 24 & 0xff]; // .toUpperCase() here flattens concatenated strings to save heap memory space.[m
[31m-[m
[31m-		return uuid.toUpperCase();[m
[31m-	}[m
[31m-[m
[31m-	function clamp(value, min, max) {[m
[31m-		return Math.max(min, Math.min(max, value));[m
[31m-	} // compute euclidian modulo of m % n[m
[31m-	// https://en.wikipedia.org/wiki/Modulo_operation[m
[31m-[m
[31m-[m
[31m-	function euclideanModulo(n, m) {[m
[31m-		return (n % m + m) % m;[m
[31m-	} // Linear mapping from range <a1, a2> to range <b1, b2>[m
[31m-[m
[31m-[m
[31m-	function mapLinear(x, a1, a2, b1, b2) {[m
[31m-		return b1 + (x - a1) * (b2 - b1) / (a2 - a1);[m
[31m-	} // https://www.gamedev.net/tutorials/programming/general-and-gameplay-programming/inverse-lerp-a-super-useful-yet-often-overlooked-function-r5230/[m
[31m-[m
[31m-[m
[31m-	function inverseLerp(x, y, value) {[m
[31m-		if (x !== y) {[m
[31m-			return (value - x) / (y - x);[m
[31m-		} else {[m
[31m-			return 0;[m
[31m-		}[m
[31m-	} // https://en.wikipedia.org/wiki/Linear_interpolation[m
[31m-[m
[31m-[m
[31m-	function lerp(x, y, t) {[m
[31m-		return (1 - t) * x + t * y;[m
[31m-	} // http://www.rorydriscoll.com/2016/03/07/frame-rate-independent-damping-using-lerp/[m
[31m-[m
[31m-[m
[31m-	function damp(x, y, lambda, dt) {[m
[31m-		return lerp(x, y, 1 - Math.exp(-lambda * dt));[m
[31m-	} // https://www.desmos.com/calculator/vcsjnyz7x4[m
[31m-[m
[31m-[m
[31m-	function pingpong(x, length = 1) {[m
[31m-		return length - Math.abs(euclideanModulo(x, length * 2) - length);[m
[31m-	} // http://en.wikipedia.org/wiki/Smoothstep[m
[31m-[m
[31m-[m
[31m-	function smoothstep(x, min, max) {[m
[31m-		if (x <= min) return 0;[m
[31m-		if (x >= max) return 1;[m
[31m-		x = (x - min) / (max - min);[m
[31m-		return x * x * (3 - 2 * x);[m
[31m-	}[m
[31m-[m
[31m-	function smootherstep(x, min, max) {[m
[31m-		if (x <= min) return 0;[m
[31m-		if (x >= max) return 1;[m
[31m-		x = (x - min) / (max - min);[m
[31m-		return x * x * x * (x * (x * 6 - 15) + 10);[m
[31m-	} // Random integer from <low, high> interval[m
[31m-[m
[31m-[m
[31m-	function randInt(low, high) {[m
[31m-		return low + Math.floor(Math.random() * (high - low + 1));[m
[31m-	} // Random float from <low, high> interval[m
[31m-[m
[31m-[m
[31m-	function randFloat(low, high) {[m
[31m-		return low + Math.random() * (high - low);[m
[31m-	} // Random float from <-range/2, range/2> interval[m
[31m-[m
[31m-[m
[31m-	function randFloatSpread(range) {[m
[31m-		return range * (0.5 - Math.random());[m
[31m-	} // Deterministic pseudo-random float in the interval [ 0, 1 ][m
[31m-[m
[31m-[m
[31m-	function seededRandom(s) {[m
[31m-		if (s !== undefined) _seed = s % 2147483647; // Park-Miller algorithm[m
[31m-[m
[31m-		_seed = _seed * 16807 % 2147483647;[m
[31m-		return (_seed - 1) / 2147483646;[m
[31m-	}[m
[31m-[m
[31m-	function degToRad(degrees) {[m
[31m-		return degrees * DEG2RAD;[m
[31m-	}[m
[31m-[m
[31m-	function radToDeg(radians) {[m
[31m-		return radians * RAD2DEG;[m
[31m-	}[m
[31m-[m
[31m-	function isPowerOfTwo(value) {[m
[31m-		return (value & value - 1) === 0 && value !== 0;[m
[31m-	}[m
[31m-[m
[31m-	function ceilPowerOfTwo(value) {[m
[31m-		return Math.pow(2, Math.ceil(Math.log(value) / Math.LN2));[m
[31m-	}[m
[31m-[m
[31m-	function floorPowerOfTwo(value) {[m
[31m-		return Math.pow(2, Math.floor(Math.log(value) / Math.LN2));[m
[31m-	}[m
[31m-[m
[31m-	function setQuaternionFromProperEuler(q, a, b, c, order) {[m
[31m-		// Intrinsic Proper Euler Angles - see https://en.wikipedia.org/wiki/Euler_angles[m
[31m-		// rotations are applied to the axes in the order specified by 'order'[m
[31m-		// rotation by angle 'a' is applied first, then by angle 'b', then by angle 'c'[m
[31m-		// angles are in radians[m
[31m-		const cos = Math.cos;[m
[31m-		const sin = Math.sin;[m
[31m-		const c2 = cos(b / 2);[m
[31m-		const s2 = sin(b / 2);[m
[31m-		const c13 = cos((a + c) / 2);[m
[31m-		const s13 = sin((a + c) / 2);[m
[31m-		const c1_3 = cos((a - c) / 2);[m
[31m-		const s1_3 = sin((a - c) / 2);[m
[31m-		const c3_1 = cos((c - a) / 2);[m
[31m-		const s3_1 = sin((c - a) / 2);[m
[31m-[m
[31m-		switch (order) {[m
[31m-			case 'XYX':[m
[31m-				q.set(c2 * s13, s2 * c1_3, s2 * s1_3, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			case 'YZY':[m
[31m-				q.set(s2 * s1_3, c2 * s13, s2 * c1_3, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			case 'ZXZ':[m
[31m-				q.set(s2 * c1_3, s2 * s1_3, c2 * s13, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			case 'XZX':[m
[31m-				q.set(c2 * s13, s2 * s3_1, s2 * c3_1, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			case 'YXY':[m
[31m-				q.set(s2 * c3_1, c2 * s13, s2 * s3_1, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			case 'ZYZ':[m
[31m-				q.set(s2 * s3_1, s2 * c3_1, c2 * s13, c2 * c13);[m
[31m-				break;[m
[31m-[m
[31m-			default:[m
[31m-				console.warn('THREE.MathUtils: .setQuaternionFromProperEuler() encountered an unknown order: ' + order);[m
[31m-		}[m
[31m-	}[m
[31m-[m
[31m-	var MathUtils = /*#__PURE__*/Object.freeze({[m
[31m-		__proto__: null,[m
[31m-		DEG2RAD: DEG2RAD,[m
[31m-		RAD2DEG: RAD2DEG,[m
[31m-		generateUUID: generateUUID,[m
[31m-		clamp: clamp,[m
[31m-		euclideanModulo: euclideanModulo,[m
[31m-		mapLinear: mapLinear,[m
[31m-		inverseLerp: inverseLerp,[m
[31m-		lerp: lerp,[m
[31m-		damp: damp,[m
[31m-		pingpong: pingpong,[m
[31m-		smoothstep: smoothstep,[m
[31m-		smootherstep: smootherstep,[m
[31m-		randInt: randInt,[m
[31m-		randFloat: randFloat,[m
[31m-		randFloatSpread: randFloatSpread,[m
[31m-		seededRandom: seededRandom,[m
[31m-		degToRad: degToRad,[m
[31m-		radToDeg: radToDeg,[m
[31m-		isPowerOfTwo: isPowerOfTwo,[m
[31m-		ceilPowerOfTwo: ceilPowerOfTwo,[m
[31m-		floorPowerOfTwo: floorPowerOfTwo,[m
[31m-		setQuaternionFromProperEuler: setQuaternionFromProperEuler[m
[31m-	});[m
[31m-[m
[31m-	class Vector2 {[m
[31m-		constructor(x = 0, y = 0) {[m
[31m-			this.x = x;[m
[31m-			this.y = y;[m
[31m-		}[m
[31m-[m
[31m-		get width() {[m
[31m-			return this.x;[m
[31m-		}[m
[31m-[m
[31m-		set width(value) {[m
[31m-			this.x = value;[m
[31m-		}[m
[31m-[m
[31m-		get height() {[m
[31m-			return this.y;[m
[31m-		}[m
[31m-[m
[31m-		set height(value) {[m
[31m-			this.y = value;[m
[31m-		}[m
[31m-[m
[31m-		set(x, y) {[m
[31m-			this.x = x;[m
[31m-			this.y = y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setScalar(scalar) {[m
[31m-			this.x = scalar;[m
[31m-			this.y = scalar;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setX(x) {[m
[31m-			this.x = x;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setY(y) {[m
[31m-			this.y = y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setComponent(index, value) {[m
[31m-			switch (index) {[m
[31m-				case 0:[m
[31m-					this.x = value;[m
[31m-					break;[m
[31m-[m
[31m-				case 1:[m
[31m-					this.y = value;[m
[31m-					break;[m
[31m-[m
[31m-				default:[m
[31m-					throw new Error('index is out of range: ' + index);[m
[31m-			}[m
[31m-[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		getComponent(index) {[m
[31m-			switch (index) {[m
[31m-				case 0:[m
[31m-					return this.x;[m
[31m-[m
[31m-				case 1:[m
[31m-					return this.y;[m
[31m-[m
[31m-				default:[m
[31m-					throw new Error('index is out of range: ' + index);[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-		clone() {[m
[31m-			return new this.constructor(this.x, this.y);[m
[31m-		}[m
[31m-[m
[31m-		copy(v) {[m
[31m-			this.x = v.x;[m
[31m-			this.y = v.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		add(v, w) {[m
[31m-			if (w !== undefined) {[m
[31m-				console.warn('THREE.Vector2: .add() now only accepts one argument. Use .addVectors( a, b ) instead.');[m
[31m-				return this.addVectors(v, w);[m
[31m-			}[m
[31m-[m
[31m-			this.x += v.x;[m
[31m-			this.y += v.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addScalar(s) {[m
[31m-			this.x += s;[m
[31m-			this.y += s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addVectors(a, b) {[m
[31m-			this.x = a.x + b.x;[m
[31m-			this.y = a.y + b.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addScaledVector(v, s) {[m
[31m-			this.x += v.x * s;[m
[31m-			this.y += v.y * s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		sub(v, w) {[m
[31m-			if (w !== undefined) {[m
[31m-				console.warn('THREE.Vector2: .sub() now only accepts one argument. Use .subVectors( a, b ) instead.');[m
[31m-				return this.subVectors(v, w);[m
[31m-			}[m
[31m-[m
[31m-			this.x -= v.x;[m
[31m-			this.y -= v.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		subScalar(s) {[m
[31m-			this.x -= s;[m
[31m-			this.y -= s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		subVectors(a, b) {[m
[31m-			this.x = a.x - b.x;[m
[31m-			this.y = a.y - b.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiply(v) {[m
[31m-			this.x *= v.x;[m
[31m-			this.y *= v.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiplyScalar(scalar) {[m
[31m-			this.x *= scalar;[m
[31m-			this.y *= scalar;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		divide(v) {[m
[31m-			this.x /= v.x;[m
[31m-			this.y /= v.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		divideScalar(scalar) {[m
[31m-			return this.multiplyScalar(1 / scalar);[m
[31m-		}[m
[31m-[m
[31m-		applyMatrix3(m) {[m
[31m-			const x = this.x,[m
[31m-						y = this.y;[m
[31m-			const e = m.elements;[m
[31m-			this.x = e[0] * x + e[3] * y + e[6];[m
[31m-			this.y = e[1] * x + e[4] * y + e[7];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		min(v) {[m
[31m-			this.x = Math.min(this.x, v.x);[m
[31m-			this.y = Math.min(this.y, v.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		max(v) {[m
[31m-			this.x = Math.max(this.x, v.x);[m
[31m-			this.y = Math.max(this.y, v.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clamp(min, max) {[m
[31m-			// assumes min < max, componentwise[m
[31m-			this.x = Math.max(min.x, Math.min(max.x, this.x));[m
[31m-			this.y = Math.max(min.y, Math.min(max.y, this.y));[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clampScalar(minVal, maxVal) {[m
[31m-			this.x = Math.max(minVal, Math.min(maxVal, this.x));[m
[31m-			this.y = Math.max(minVal, Math.min(maxVal, this.y));[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clampLength(min, max) {[m
[31m-			const length = this.length();[m
[31m-			return this.divideScalar(length || 1).multiplyScalar(Math.max(min, Math.min(max, length)));[m
[31m-		}[m
[31m-[m
[31m-		floor() {[m
[31m-			this.x = Math.floor(this.x);[m
[31m-			this.y = Math.floor(this.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		ceil() {[m
[31m-			this.x = Math.ceil(this.x);[m
[31m-			this.y = Math.ceil(this.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		round() {[m
[31m-			this.x = Math.round(this.x);[m
[31m-			this.y = Math.round(this.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		roundToZero() {[m
[31m-			this.x = this.x < 0 ? Math.ceil(this.x) : Math.floor(this.x);[m
[31m-			this.y = this.y < 0 ? Math.ceil(this.y) : Math.floor(this.y);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		negate() {[m
[31m-			this.x = -this.x;[m
[31m-			this.y = -this.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		dot(v) {[m
[31m-			return this.x * v.x + this.y * v.y;[m
[31m-		}[m
[31m-[m
[31m-		cross(v) {[m
[31m-			return this.x * v.y - this.y * v.x;[m
[31m-		}[m
[31m-[m
[31m-		lengthSq() {[m
[31m-			return this.x * this.x + this.y * this.y;[m
[31m-		}[m
[31m-[m
[31m-		length() {[m
[31m-			return Math.sqrt(this.x * this.x + this.y * this.y);[m
[31m-		}[m
[31m-[m
[31m-		manhattanLength() {[m
[31m-			return Math.abs(this.x) + Math.abs(this.y);[m
[31m-		}[m
[31m-[m
[31m-		normalize() {[m
[31m-			return this.divideScalar(this.length() || 1);[m
[31m-		}[m
[31m-[m
[31m-		angle() {[m
[31m-			// computes the angle in radians with respect to the positive x-axis[m
[31m-			const angle = Math.atan2(-this.y, -this.x) + Math.PI;[m
[31m-			return angle;[m
[31m-		}[m
[31m-[m
[31m-		distanceTo(v) {[m
[31m-			return Math.sqrt(this.distanceToSquared(v));[m
[31m-		}[m
[31m-[m
[31m-		distanceToSquared(v) {[m
[31m-			const dx = this.x - v.x,[m
[31m-						dy = this.y - v.y;[m
[31m-			return dx * dx + dy * dy;[m
[31m-		}[m
[31m-[m
[31m-		manhattanDistanceTo(v) {[m
[31m-			return Math.abs(this.x - v.x) + Math.abs(this.y - v.y);[m
[31m-		}[m
[31m-[m
[31m-		setLength(length) {[m
[31m-			return this.normalize().multiplyScalar(length);[m
[31m-		}[m
[31m-[m
[31m-		lerp(v, alpha) {[m
[31m-			this.x += (v.x - this.x) * alpha;[m
[31m-			this.y += (v.y - this.y) * alpha;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		lerpVectors(v1, v2, alpha) {[m
[31m-			this.x = v1.x + (v2.x - v1.x) * alpha;[m
[31m-			this.y = v1.y + (v2.y - v1.y) * alpha;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		equals(v) {[m
[31m-			return v.x === this.x && v.y === this.y;[m
[31m-		}[m
[31m-[m
[31m-		fromArray(array, offset = 0) {[m
[31m-			this.x = array[offset];[m
[31m-			this.y = array[offset + 1];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		toArray(array = [], offset = 0) {[m
[31m-			array[offset] = this.x;[m
[31m-			array[offset + 1] = this.y;[m
[31m-			return array;[m
[31m-		}[m
[31m-[m
[31m-		fromBufferAttribute(attribute, index, offset) {[m
[31m-			if (offset !== undefined) {[m
[31m-				console.warn('THREE.Vector2: offset has been removed from .fromBufferAttribute().');[m
[31m-			}[m
[31m-[m
[31m-			this.x = attribute.getX(index);[m
[31m-			this.y = attribute.getY(index);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		rotateAround(center, angle) {[m
[31m-			const c = Math.cos(angle),[m
[31m-						s = Math.sin(angle);[m
[31m-			const x = this.x - center.x;[m
[31m-			const y = this.y - center.y;[m
[31m-			this.x = x * c - y * s + center.x;[m
[31m-			this.y = x * s + y * c + center.y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		random() {[m
[31m-			this.x = Math.random();[m
[31m-			this.y = Math.random();[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		*[Symbol.iterator]() {[m
[31m-			yield this.x;[m
[31m-			yield this.y;[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	Vector2.prototype.isVector2 = true;[m
[31m-[m
[31m-	class Matrix3 {[m
[31m-		constructor() {[m
[31m-			this.elements = [1, 0, 0, 0, 1, 0, 0, 0, 1];[m
[31m-[m
[31m-			if (arguments.length > 0) {[m
[31m-				console.error('THREE.Matrix3: the constructor no longer reads arguments. use .set() instead.');[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-		set(n11, n12, n13, n21, n22, n23, n31, n32, n33) {[m
[31m-			const te = this.elements;[m
[31m-			te[0] = n11;[m
[31m-			te[1] = n21;[m
[31m-			te[2] = n31;[m
[31m-			te[3] = n12;[m
[31m-			te[4] = n22;[m
[31m-			te[5] = n32;[m
[31m-			te[6] = n13;[m
[31m-			te[7] = n23;[m
[31m-			te[8] = n33;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		identity() {[m
[31m-			this.set(1, 0, 0, 0, 1, 0, 0, 0, 1);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		copy(m) {[m
[31m-			const te = this.elements;[m
[31m-			const me = m.elements;[m
[31m-			te[0] = me[0];[m
[31m-			te[1] = me[1];[m
[31m-			te[2] = me[2];[m
[31m-			te[3] = me[3];[m
[31m-			te[4] = me[4];[m
[31m-			te[5] = me[5];[m
[31m-			te[6] = me[6];[m
[31m-			te[7] = me[7];[m
[31m-			te[8] = me[8];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		extractBasis(xAxis, yAxis, zAxis) {[m
[31m-			xAxis.setFromMatrix3Column(this, 0);[m
[31m-			yAxis.setFromMatrix3Column(this, 1);[m
[31m-			zAxis.setFromMatrix3Column(this, 2);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setFromMatrix4(m) {[m
[31m-			const me = m.elements;[m
[31m-			this.set(me[0], me[4], me[8], me[1], me[5], me[9], me[2], me[6], me[10]);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiply(m) {[m
[31m-			return this.multiplyMatrices(this, m);[m
[31m-		}[m
[31m-[m
[31m-		premultiply(m) {[m
[31m-			return this.multiplyMatrices(m, this);[m
[31m-		}[m
[31m-[m
[31m-		multiplyMatrices(a, b) {[m
[31m-			const ae = a.elements;[m
[31m-			const be = b.elements;[m
[31m-			const te = this.elements;[m
[31m-			const a11 = ae[0],[m
[31m-						a12 = ae[3],[m
[31m-						a13 = ae[6];[m
[31m-			const a21 = ae[1],[m
[31m-						a22 = ae[4],[m
[31m-						a23 = ae[7];[m
[31m-			const a31 = ae[2],[m
[31m-						a32 = ae[5],[m
[31m-						a33 = ae[8];[m
[31m-			const b11 = be[0],[m
[31m-						b12 = be[3],[m
[31m-						b13 = be[6];[m
[31m-			const b21 = be[1],[m
[31m-						b22 = be[4],[m
[31m-						b23 = be[7];[m
[31m-			const b31 = be[2],[m
[31m-						b32 = be[5],[m
[31m-						b33 = be[8];[m
[31m-			te[0] = a11 * b11 + a12 * b21 + a13 * b31;[m
[31m-			te[3] = a11 * b12 + a12 * b22 + a13 * b32;[m
[31m-			te[6] = a11 * b13 + a12 * b23 + a13 * b33;[m
[31m-			te[1] = a21 * b11 + a22 * b21 + a23 * b31;[m
[31m-			te[4] = a21 * b12 + a22 * b22 + a23 * b32;[m
[31m-			te[7] = a21 * b13 + a22 * b23 + a23 * b33;[m
[31m-			te[2] = a31 * b11 + a32 * b21 + a33 * b31;[m
[31m-			te[5] = a31 * b12 + a32 * b22 + a33 * b32;[m
[31m-			te[8] = a31 * b13 + a32 * b23 + a33 * b33;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiplyScalar(s) {[m
[31m-			const te = this.elements;[m
[31m-			te[0] *= s;[m
[31m-			te[3] *= s;[m
[31m-			te[6] *= s;[m
[31m-			te[1] *= s;[m
[31m-			te[4] *= s;[m
[31m-			te[7] *= s;[m
[31m-			te[2] *= s;[m
[31m-			te[5] *= s;[m
[31m-			te[8] *= s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		determinant() {[m
[31m-			const te = this.elements;[m
[31m-			const a = te[0],[m
[31m-						b = te[1],[m
[31m-						c = te[2],[m
[31m-						d = te[3],[m
[31m-						e = te[4],[m
[31m-						f = te[5],[m
[31m-						g = te[6],[m
[31m-						h = te[7],[m
[31m-						i = te[8];[m
[31m-			return a * e * i - a * f * h - b * d * i + b * f * g + c * d * h - c * e * g;[m
[31m-		}[m
[31m-[m
[31m-		invert() {[m
[31m-			const te = this.elements,[m
[31m-						n11 = te[0],[m
[31m-						n21 = te[1],[m
[31m-						n31 = te[2],[m
[31m-						n12 = te[3],[m
[31m-						n22 = te[4],[m
[31m-						n32 = te[5],[m
[31m-						n13 = te[6],[m
[31m-						n23 = te[7],[m
[31m-						n33 = te[8],[m
[31m-						t11 = n33 * n22 - n32 * n23,[m
[31m-						t12 = n32 * n13 - n33 * n12,[m
[31m-						t13 = n23 * n12 - n22 * n13,[m
[31m-						det = n11 * t11 + n21 * t12 + n31 * t13;[m
[31m-			if (det === 0) return this.set(0, 0, 0, 0, 0, 0, 0, 0, 0);[m
[31m-			const detInv = 1 / det;[m
[31m-			te[0] = t11 * detInv;[m
[31m-			te[1] = (n31 * n23 - n33 * n21) * detInv;[m
[31m-			te[2] = (n32 * n21 - n31 * n22) * detInv;[m
[31m-			te[3] = t12 * detInv;[m
[31m-			te[4] = (n33 * n11 - n31 * n13) * detInv;[m
[31m-			te[5] = (n31 * n12 - n32 * n11) * detInv;[m
[31m-			te[6] = t13 * detInv;[m
[31m-			te[7] = (n21 * n13 - n23 * n11) * detInv;[m
[31m-			te[8] = (n22 * n11 - n21 * n12) * detInv;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		transpose() {[m
[31m-			let tmp;[m
[31m-			const m = this.elements;[m
[31m-			tmp = m[1];[m
[31m-			m[1] = m[3];[m
[31m-			m[3] = tmp;[m
[31m-			tmp = m[2];[m
[31m-			m[2] = m[6];[m
[31m-			m[6] = tmp;[m
[31m-			tmp = m[5];[m
[31m-			m[5] = m[7];[m
[31m-			m[7] = tmp;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		getNormalMatrix(matrix4) {[m
[31m-			return this.setFromMatrix4(matrix4).invert().transpose();[m
[31m-		}[m
[31m-[m
[31m-		transposeIntoArray(r) {[m
[31m-			const m = this.elements;[m
[31m-			r[0] = m[0];[m
[31m-			r[1] = m[3];[m
[31m-			r[2] = m[6];[m
[31m-			r[3] = m[1];[m
[31m-			r[4] = m[4];[m
[31m-			r[5] = m[7];[m
[31m-			r[6] = m[2];[m
[31m-			r[7] = m[5];[m
[31m-			r[8] = m[8];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setUvTransform(tx, ty, sx, sy, rotation, cx, cy) {[m
[31m-			const c = Math.cos(rotation);[m
[31m-			const s = Math.sin(rotation);[m
[31m-			this.set(sx * c, sx * s, -sx * (c * cx + s * cy) + cx + tx, -sy * s, sy * c, -sy * (-s * cx + c * cy) + cy + ty, 0, 0, 1);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		scale(sx, sy) {[m
[31m-			const te = this.elements;[m
[31m-			te[0] *= sx;[m
[31m-			te[3] *= sx;[m
[31m-			te[6] *= sx;[m
[31m-			te[1] *= sy;[m
[31m-			te[4] *= sy;[m
[31m-			te[7] *= sy;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		rotate(theta) {[m
[31m-			const c = Math.cos(theta);[m
[31m-			const s = Math.sin(theta);[m
[31m-			const te = this.elements;[m
[31m-			const a11 = te[0],[m
[31m-						a12 = te[3],[m
[31m-						a13 = te[6];[m
[31m-			const a21 = te[1],[m
[31m-						a22 = te[4],[m
[31m-						a23 = te[7];[m
[31m-			te[0] = c * a11 + s * a21;[m
[31m-			te[3] = c * a12 + s * a22;[m
[31m-			te[6] = c * a13 + s * a23;[m
[31m-			te[1] = -s * a11 + c * a21;[m
[31m-			te[4] = -s * a12 + c * a22;[m
[31m-			te[7] = -s * a13 + c * a23;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		translate(tx, ty) {[m
[31m-			const te = this.elements;[m
[31m-			te[0] += tx * te[2];[m
[31m-			te[3] += tx * te[5];[m
[31m-			te[6] += tx * te[8];[m
[31m-			te[1] += ty * te[2];[m
[31m-			te[4] += ty * te[5];[m
[31m-			te[7] += ty * te[8];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		equals(matrix) {[m
[31m-			const te = this.elements;[m
[31m-			const me = matrix.elements;[m
[31m-[m
[31m-			for (let i = 0; i < 9; i++) {[m
[31m-				if (te[i] !== me[i]) return false;[m
[31m-			}[m
[31m-[m
[31m-			return true;[m
[31m-		}[m
[31m-[m
[31m-		fromArray(array, offset = 0) {[m
[31m-			for (let i = 0; i < 9; i++) {[m
[31m-				this.elements[i] = array[i + offset];[m
[31m-			}[m
[31m-[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		toArray(array = [], offset = 0) {[m
[31m-			const te = this.elements;[m
[31m-			array[offset] = te[0];[m
[31m-			array[offset + 1] = te[1];[m
[31m-			array[offset + 2] = te[2];[m
[31m-			array[offset + 3] = te[3];[m
[31m-			array[offset + 4] = te[4];[m
[31m-			array[offset + 5] = te[5];[m
[31m-			array[offset + 6] = te[6];[m
[31m-			array[offset + 7] = te[7];[m
[31m-			array[offset + 8] = te[8];[m
[31m-			return array;[m
[31m-		}[m
[31m-[m
[31m-		clone() {[m
[31m-			return new this.constructor().fromArray(this.elements);[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	Matrix3.prototype.isMatrix3 = true;[m
[31m-[m
[31m-	function arrayMax(array) {[m
[31m-		if (array.length === 0) return -Infinity;[m
[31m-		let max = array[0];[m
[31m-[m
[31m-		for (let i = 1, l = array.length; i < l; ++i) {[m
[31m-			if (array[i] > max) max = array[i];[m
[31m-		}[m
[31m-[m
[31m-		return max;[m
[31m-	}[m
[31m-[m
[31m-	const TYPED_ARRAYS = {[m
[31m-		Int8Array: Int8Array,[m
[31m-		Uint8Array: Uint8Array,[m
[31m-		Uint8ClampedArray: Uint8ClampedArray,[m
[31m-		Int16Array: Int16Array,[m
[31m-		Uint16Array: Uint16Array,[m
[31m-		Int32Array: Int32Array,[m
[31m-		Uint32Array: Uint32Array,[m
[31m-		Float32Array: Float32Array,[m
[31m-		Float64Array: Float64Array[m
[31m-	};[m
[31m-[m
[31m-	function getTypedArray(type, buffer) {[m
[31m-		return new TYPED_ARRAYS[type](buffer);[m
[31m-	}[m
[31m-[m
[31m-	function createElementNS(name) {[m
[31m-		return document.createElementNS('http://www.w3.org/1999/xhtml', name);[m
[31m-	}[m
[31m-[m
[31m-	let _canvas;[m
[31m-[m
[31m-	class ImageUtils {[m
[31m-		static getDataURL(image) {[m
[31m-			if (/^data:/i.test(image.src)) {[m
[31m-				return image.src;[m
[31m-			}[m
[31m-[m
[31m-			if (typeof HTMLCanvasElement == 'undefined') {[m
[31m-				return image.src;[m
[31m-			}[m
[31m-[m
[31m-			let canvas;[m
[31m-[m
[31m-			if (image instanceof HTMLCanvasElement) {[m
[31m-				canvas = image;[m
[31m-			} else {[m
[31m-				if (_canvas === undefined) _canvas = createElementNS('canvas');[m
[31m-				_canvas.width = image.width;[m
[31m-				_canvas.height = image.height;[m
[31m-[m
[31m-				const context = _canvas.getContext('2d');[m
[31m-[m
[31m-				if (image instanceof ImageData) {[m
[31m-					context.putImageData(image, 0, 0);[m
[31m-				} else {[m
[31m-					context.drawImage(image, 0, 0, image.width, image.height);[m
[31m-				}[m
[31m-[m
[31m-				canvas = _canvas;[m
[31m-			}[m
[31m-[m
[31m-			if (canvas.width > 2048 || canvas.height > 2048) {[m
[31m-				console.warn('THREE.ImageUtils.getDataURL: Image converted to jpg for performance reasons', image);[m
[31m-				return canvas.toDataURL('image/jpeg', 0.6);[m
[31m-			} else {[m
[31m-				return canvas.toDataURL('image/png');[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	let textureId = 0;[m
[31m-[m
[31m-	class Texture extends EventDispatcher {[m
[31m-		constructor(image = Texture.DEFAULT_IMAGE, mapping = Texture.DEFAULT_MAPPING, wrapS = ClampToEdgeWrapping, wrapT = ClampToEdgeWrapping, magFilter = LinearFilter, minFilter = LinearMipmapLinearFilter, format = RGBAFormat, type = UnsignedByteType, anisotropy = 1, encoding = LinearEncoding) {[m
[31m-			super();[m
[31m-			Object.defineProperty(this, 'id', {[m
[31m-				value: textureId++[m
[31m-			});[m
[31m-			this.uuid = generateUUID();[m
[31m-			this.name = '';[m
[31m-			this.image = image;[m
[31m-			this.mipmaps = [];[m
[31m-			this.mapping = mapping;[m
[31m-			this.wrapS = wrapS;[m
[31m-			this.wrapT = wrapT;[m
[31m-			this.magFilter = magFilter;[m
[31m-			this.minFilter = minFilter;[m
[31m-			this.anisotropy = anisotropy;[m
[31m-			this.format = format;[m
[31m-			this.internalFormat = null;[m
[31m-			this.type = type;[m
[31m-			this.offset = new Vector2(0, 0);[m
[31m-			this.repeat = new Vector2(1, 1);[m
[31m-			this.center = new Vector2(0, 0);[m
[31m-			this.rotation = 0;[m
[31m-			this.matrixAutoUpdate = true;[m
[31m-			this.matrix = new Matrix3();[m
[31m-			this.generateMipmaps = true;[m
[31m-			this.premultiplyAlpha = false;[m
[31m-			this.flipY = true;[m
[31m-			this.unpackAlignment = 4; // valid values: 1, 2, 4, 8 (see http://www.khronos.org/opengles/sdk/docs/man/xhtml/glPixelStorei.xml)[m
[31m-			// Values of encoding !== THREE.LinearEncoding only supported on map, envMap and emissiveMap.[m
[31m-			//[m
[31m-			// Also changing the encoding after already used by a Material will not automatically make the Material[m
[31m-			// update. You need to explicitly call Material.needsUpdate to trigger it to recompile.[m
[31m-[m
[31m-			this.encoding = encoding;[m
[31m-			this.userData = {};[m
[31m-			this.version = 0;[m
[31m-			this.onUpdate = null;[m
[31m-			this.isRenderTargetTexture = false;[m
[31m-		}[m
[31m-[m
[31m-		updateMatrix() {[m
[31m-			this.matrix.setUvTransform(this.offset.x, this.offset.y, this.repeat.x, this.repeat.y, this.rotation, this.center.x, this.center.y);[m
[31m-		}[m
[31m-[m
[31m-		clone() {[m
[31m-			return new this.constructor().copy(this);[m
[31m-		}[m
[31m-[m
[31m-		copy(source) {[m
[31m-			this.name = source.name;[m
[31m-			this.image = source.image;[m
[31m-			this.mipmaps = source.mipmaps.slice(0);[m
[31m-			this.mapping = source.mapping;[m
[31m-			this.wrapS = source.wrapS;[m
[31m-			this.wrapT = source.wrapT;[m
[31m-			this.magFilter = source.magFilter;[m
[31m-			this.minFilter = source.minFilter;[m
[31m-			this.anisotropy = source.anisotropy;[m
[31m-			this.format = source.format;[m
[31m-			this.internalFormat = source.internalFormat;[m
[31m-			this.type = source.type;[m
[31m-			this.offset.copy(source.offset);[m
[31m-			this.repeat.copy(source.repeat);[m
[31m-			this.center.copy(source.center);[m
[31m-			this.rotation = source.rotation;[m
[31m-			this.matrixAutoUpdate = source.matrixAutoUpdate;[m
[31m-			this.matrix.copy(source.matrix);[m
[31m-			this.generateMipmaps = source.generateMipmaps;[m
[31m-			this.premultiplyAlpha = source.premultiplyAlpha;[m
[31m-			this.flipY = source.flipY;[m
[31m-			this.unpackAlignment = source.unpackAlignment;[m
[31m-			this.encoding = source.encoding;[m
[31m-			this.userData = JSON.parse(JSON.stringify(source.userData));[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		toJSON(meta) {[m
[31m-			const isRootObject = meta === undefined || typeof meta === 'string';[m
[31m-[m
[31m-			if (!isRootObject && meta.textures[this.uuid] !== undefined) {[m
[31m-				return meta.textures[this.uuid];[m
[31m-			}[m
[31m-[m
[31m-			const output = {[m
[31m-				metadata: {[m
[31m-					version: 4.5,[m
[31m-					type: 'Texture',[m
[31m-					generator: 'Texture.toJSON'[m
[31m-				},[m
[31m-				uuid: this.uuid,[m
[31m-				name: this.name,[m
[31m-				mapping: this.mapping,[m
[31m-				repeat: [this.repeat.x, this.repeat.y],[m
[31m-				offset: [this.offset.x, this.offset.y],[m
[31m-				center: [this.center.x, this.center.y],[m
[31m-				rotation: this.rotation,[m
[31m-				wrap: [this.wrapS, this.wrapT],[m
[31m-				format: this.format,[m
[31m-				type: this.type,[m
[31m-				encoding: this.encoding,[m
[31m-				minFilter: this.minFilter,[m
[31m-				magFilter: this.magFilter,[m
[31m-				anisotropy: this.anisotropy,[m
[31m-				flipY: this.flipY,[m
[31m-				premultiplyAlpha: this.premultiplyAlpha,[m
[31m-				unpackAlignment: this.unpackAlignment[m
[31m-			};[m
[31m-[m
[31m-			if (this.image !== undefined) {[m
[31m-				// TODO: Move to THREE.Image[m
[31m-				const image = this.image;[m
[31m-[m
[31m-				if (image.uuid === undefined) {[m
[31m-					image.uuid = generateUUID(); // UGH[m
[31m-				}[m
[31m-[m
[31m-				if (!isRootObject && meta.images[image.uuid] === undefined) {[m
[31m-					let url;[m
[31m-[m
[31m-					if (Array.isArray(image)) {[m
[31m-						// process array of images e.g. CubeTexture[m
[31m-						url = [];[m
[31m-[m
[31m-						for (let i = 0, l = image.length; i < l; i++) {[m
[31m-							// check cube texture with data textures[m
[31m-							if (image[i].isDataTexture) {[m
[31m-								url.push(serializeImage(image[i].image));[m
[31m-							} else {[m
[31m-								url.push(serializeImage(image[i]));[m
[31m-							}[m
[31m-						}[m
[31m-					} else {[m
[31m-						// process single image[m
[31m-						url = serializeImage(image);[m
[31m-					}[m
[31m-[m
[31m-					meta.images[image.uuid] = {[m
[31m-						uuid: image.uuid,[m
[31m-						url: url[m
[31m-					};[m
[31m-				}[m
[31m-[m
[31m-				output.image = image.uuid;[m
[31m-			}[m
[31m-[m
[31m-			if (JSON.stringify(this.userData) !== '{}') output.userData = this.userData;[m
[31m-[m
[31m-			if (!isRootObject) {[m
[31m-				meta.textures[this.uuid] = output;[m
[31m-			}[m
[31m-[m
[31m-			return output;[m
[31m-		}[m
[31m-[m
[31m-		dispose() {[m
[31m-			this.dispatchEvent({[m
[31m-				type: 'dispose'[m
[31m-			});[m
[31m-		}[m
[31m-[m
[31m-		transformUv(uv) {[m
[31m-			if (this.mapping !== UVMapping) return uv;[m
[31m-			uv.applyMatrix3(this.matrix);[m
[31m-[m
[31m-			if (uv.x < 0 || uv.x > 1) {[m
[31m-				switch (this.wrapS) {[m
[31m-					case RepeatWrapping:[m
[31m-						uv.x = uv.x - Math.floor(uv.x);[m
[31m-						break;[m
[31m-[m
[31m-					case ClampToEdgeWrapping:[m
[31m-						uv.x = uv.x < 0 ? 0 : 1;[m
[31m-						break;[m
[31m-[m
[31m-					case MirroredRepeatWrapping:[m
[31m-						if (Math.abs(Math.floor(uv.x) % 2) === 1) {[m
[31m-							uv.x = Math.ceil(uv.x) - uv.x;[m
[31m-						} else {[m
[31m-							uv.x = uv.x - Math.floor(uv.x);[m
[31m-						}[m
[31m-[m
[31m-						break;[m
[31m-				}[m
[31m-			}[m
[31m-[m
[31m-			if (uv.y < 0 || uv.y > 1) {[m
[31m-				switch (this.wrapT) {[m
[31m-					case RepeatWrapping:[m
[31m-						uv.y = uv.y - Math.floor(uv.y);[m
[31m-						break;[m
[31m-[m
[31m-					case ClampToEdgeWrapping:[m
[31m-						uv.y = uv.y < 0 ? 0 : 1;[m
[31m-						break;[m
[31m-[m
[31m-					case MirroredRepeatWrapping:[m
[31m-						if (Math.abs(Math.floor(uv.y) % 2) === 1) {[m
[31m-							uv.y = Math.ceil(uv.y) - uv.y;[m
[31m-						} else {[m
[31m-							uv.y = uv.y - Math.floor(uv.y);[m
[31m-						}[m
[31m-[m
[31m-						break;[m
[31m-				}[m
[31m-			}[m
[31m-[m
[31m-			if (this.flipY) {[m
[31m-				uv.y = 1 - uv.y;[m
[31m-			}[m
[31m-[m
[31m-			return uv;[m
[31m-		}[m
[31m-[m
[31m-		set needsUpdate(value) {[m
[31m-			if (value === true) this.version++;[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	Texture.DEFAULT_IMAGE = undefined;[m
[31m-	Texture.DEFAULT_MAPPING = UVMapping;[m
[31m-	Texture.prototype.isTexture = true;[m
[31m-[m
[31m-	function serializeImage(image) {[m
[31m-		if (typeof HTMLImageElement !== 'undefined' && image instanceof HTMLImageElement || typeof HTMLCanvasElement !== 'undefined' && image instanceof HTMLCanvasElement || typeof ImageBitmap !== 'undefined' && image instanceof ImageBitmap) {[m
[31m-			// default images[m
[31m-			return ImageUtils.getDataURL(image);[m
[31m-		} else {[m
[31m-			if (image.data) {[m
[31m-				// images of DataTexture[m
[31m-				return {[m
[31m-					data: Array.prototype.slice.call(image.data),[m
[31m-					width: image.width,[m
[31m-					height: image.height,[m
[31m-					type: image.data.constructor.name[m
[31m-				};[m
[31m-			} else {[m
[31m-				console.warn('THREE.Texture: Unable to serialize Texture.');[m
[31m-				return {};[m
[31m-			}[m
[31m-		}[m
[31m-	}[m
[31m-[m
[31m-	class Vector4 {[m
[31m-		constructor(x = 0, y = 0, z = 0, w = 1) {[m
[31m-			this.x = x;[m
[31m-			this.y = y;[m
[31m-			this.z = z;[m
[31m-			this.w = w;[m
[31m-		}[m
[31m-[m
[31m-		get width() {[m
[31m-			return this.z;[m
[31m-		}[m
[31m-[m
[31m-		set width(value) {[m
[31m-			this.z = value;[m
[31m-		}[m
[31m-[m
[31m-		get height() {[m
[31m-			return this.w;[m
[31m-		}[m
[31m-[m
[31m-		set height(value) {[m
[31m-			this.w = value;[m
[31m-		}[m
[31m-[m
[31m-		set(x, y, z, w) {[m
[31m-			this.x = x;[m
[31m-			this.y = y;[m
[31m-			this.z = z;[m
[31m-			this.w = w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setScalar(scalar) {[m
[31m-			this.x = scalar;[m
[31m-			this.y = scalar;[m
[31m-			this.z = scalar;[m
[31m-			this.w = scalar;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setX(x) {[m
[31m-			this.x = x;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setY(y) {[m
[31m-			this.y = y;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setZ(z) {[m
[31m-			this.z = z;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setW(w) {[m
[31m-			this.w = w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setComponent(index, value) {[m
[31m-			switch (index) {[m
[31m-				case 0:[m
[31m-					this.x = value;[m
[31m-					break;[m
[31m-[m
[31m-				case 1:[m
[31m-					this.y = value;[m
[31m-					break;[m
[31m-[m
[31m-				case 2:[m
[31m-					this.z = value;[m
[31m-					break;[m
[31m-[m
[31m-				case 3:[m
[31m-					this.w = value;[m
[31m-					break;[m
[31m-[m
[31m-				default:[m
[31m-					throw new Error('index is out of range: ' + index);[m
[31m-			}[m
[31m-[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		getComponent(index) {[m
[31m-			switch (index) {[m
[31m-				case 0:[m
[31m-					return this.x;[m
[31m-[m
[31m-				case 1:[m
[31m-					return this.y;[m
[31m-[m
[31m-				case 2:[m
[31m-					return this.z;[m
[31m-[m
[31m-				case 3:[m
[31m-					return this.w;[m
[31m-[m
[31m-				default:[m
[31m-					throw new Error('index is out of range: ' + index);[m
[31m-			}[m
[31m-		}[m
[31m-[m
[31m-		clone() {[m
[31m-			return new this.constructor(this.x, this.y, this.z, this.w);[m
[31m-		}[m
[31m-[m
[31m-		copy(v) {[m
[31m-			this.x = v.x;[m
[31m-			this.y = v.y;[m
[31m-			this.z = v.z;[m
[31m-			this.w = v.w !== undefined ? v.w : 1;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		add(v, w) {[m
[31m-			if (w !== undefined) {[m
[31m-				console.warn('THREE.Vector4: .add() now only accepts one argument. Use .addVectors( a, b ) instead.');[m
[31m-				return this.addVectors(v, w);[m
[31m-			}[m
[31m-[m
[31m-			this.x += v.x;[m
[31m-			this.y += v.y;[m
[31m-			this.z += v.z;[m
[31m-			this.w += v.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addScalar(s) {[m
[31m-			this.x += s;[m
[31m-			this.y += s;[m
[31m-			this.z += s;[m
[31m-			this.w += s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addVectors(a, b) {[m
[31m-			this.x = a.x + b.x;[m
[31m-			this.y = a.y + b.y;[m
[31m-			this.z = a.z + b.z;[m
[31m-			this.w = a.w + b.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		addScaledVector(v, s) {[m
[31m-			this.x += v.x * s;[m
[31m-			this.y += v.y * s;[m
[31m-			this.z += v.z * s;[m
[31m-			this.w += v.w * s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		sub(v, w) {[m
[31m-			if (w !== undefined) {[m
[31m-				console.warn('THREE.Vector4: .sub() now only accepts one argument. Use .subVectors( a, b ) instead.');[m
[31m-				return this.subVectors(v, w);[m
[31m-			}[m
[31m-[m
[31m-			this.x -= v.x;[m
[31m-			this.y -= v.y;[m
[31m-			this.z -= v.z;[m
[31m-			this.w -= v.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		subScalar(s) {[m
[31m-			this.x -= s;[m
[31m-			this.y -= s;[m
[31m-			this.z -= s;[m
[31m-			this.w -= s;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		subVectors(a, b) {[m
[31m-			this.x = a.x - b.x;[m
[31m-			this.y = a.y - b.y;[m
[31m-			this.z = a.z - b.z;[m
[31m-			this.w = a.w - b.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiply(v) {[m
[31m-			this.x *= v.x;[m
[31m-			this.y *= v.y;[m
[31m-			this.z *= v.z;[m
[31m-			this.w *= v.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		multiplyScalar(scalar) {[m
[31m-			this.x *= scalar;[m
[31m-			this.y *= scalar;[m
[31m-			this.z *= scalar;[m
[31m-			this.w *= scalar;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		applyMatrix4(m) {[m
[31m-			const x = this.x,[m
[31m-						y = this.y,[m
[31m-						z = this.z,[m
[31m-						w = this.w;[m
[31m-			const e = m.elements;[m
[31m-			this.x = e[0] * x + e[4] * y + e[8] * z + e[12] * w;[m
[31m-			this.y = e[1] * x + e[5] * y + e[9] * z + e[13] * w;[m
[31m-			this.z = e[2] * x + e[6] * y + e[10] * z + e[14] * w;[m
[31m-			this.w = e[3] * x + e[7] * y + e[11] * z + e[15] * w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		divideScalar(scalar) {[m
[31m-			return this.multiplyScalar(1 / scalar);[m
[31m-		}[m
[31m-[m
[31m-		setAxisAngleFromQuaternion(q) {[m
[31m-			// http://www.euclideanspace.com/maths/geometry/rotations/conversions/quaternionToAngle/index.htm[m
[31m-			// q is assumed to be normalized[m
[31m-			this.w = 2 * Math.acos(q.w);[m
[31m-			const s = Math.sqrt(1 - q.w * q.w);[m
[31m-[m
[31m-			if (s < 0.0001) {[m
[31m-				this.x = 1;[m
[31m-				this.y = 0;[m
[31m-				this.z = 0;[m
[31m-			} else {[m
[31m-				this.x = q.x / s;[m
[31m-				this.y = q.y / s;[m
[31m-				this.z = q.z / s;[m
[31m-			}[m
[31m-[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		setAxisAngleFromRotationMatrix(m) {[m
[31m-			// http://www.euclideanspace.com/maths/geometry/rotations/conversions/matrixToAngle/index.htm[m
[31m-			// assumes the upper 3x3 of m is a pure rotation matrix (i.e, unscaled)[m
[31m-			let angle, x, y, z; // variables for result[m
[31m-[m
[31m-			const epsilon = 0.01,[m
[31m-						// margin to allow for rounding errors[m
[31m-			epsilon2 = 0.1,[m
[31m-						// margin to distinguish between 0 and 180 degrees[m
[31m-			te = m.elements,[m
[31m-						m11 = te[0],[m
[31m-						m12 = te[4],[m
[31m-						m13 = te[8],[m
[31m-						m21 = te[1],[m
[31m-						m22 = te[5],[m
[31m-						m23 = te[9],[m
[31m-						m31 = te[2],[m
[31m-						m32 = te[6],[m
[31m-						m33 = te[10];[m
[31m-[m
[31m-			if (Math.abs(m12 - m21) < epsilon && Math.abs(m13 - m31) < epsilon && Math.abs(m23 - m32) < epsilon) {[m
[31m-				// singularity found[m
[31m-				// first check for identity matrix which must have +1 for all terms[m
[31m-				// in leading diagonal and zero in other terms[m
[31m-				if (Math.abs(m12 + m21) < epsilon2 && Math.abs(m13 + m31) < epsilon2 && Math.abs(m23 + m32) < epsilon2 && Math.abs(m11 + m22 + m33 - 3) < epsilon2) {[m
[31m-					// this singularity is identity matrix so angle = 0[m
[31m-					this.set(1, 0, 0, 0);[m
[31m-					return this; // zero angle, arbitrary axis[m
[31m-				} // otherwise this singularity is angle = 180[m
[31m-[m
[31m-[m
[31m-				angle = Math.PI;[m
[31m-				const xx = (m11 + 1) / 2;[m
[31m-				const yy = (m22 + 1) / 2;[m
[31m-				const zz = (m33 + 1) / 2;[m
[31m-				const xy = (m12 + m21) / 4;[m
[31m-				const xz = (m13 + m31) / 4;[m
[31m-				const yz = (m23 + m32) / 4;[m
[31m-[m
[31m-				if (xx > yy && xx > zz) {[m
[31m-					// m11 is the largest diagonal term[m
[31m-					if (xx < epsilon) {[m
[31m-						x = 0;[m
[31m-						y = 0.707106781;[m
[31m-						z = 0.707106781;[m
[31m-					} else {[m
[31m-						x = Math.sqrt(xx);[m
[31m-						y = xy / x;[m
[31m-						z = xz / x;[m
[31m-					}[m
[31m-				} else if (yy > zz) {[m
[31m-					// m22 is the largest diagonal term[m
[31m-					if (yy < epsilon) {[m
[31m-						x = 0.707106781;[m
[31m-						y = 0;[m
[31m-						z = 0.707106781;[m
[31m-					} else {[m
[31m-						y = Math.sqrt(yy);[m
[31m-						x = xy / y;[m
[31m-						z = yz / y;[m
[31m-					}[m
[31m-				} else {[m
[31m-					// m33 is the largest diagonal term so base result on this[m
[31m-					if (zz < epsilon) {[m
[31m-						x = 0.707106781;[m
[31m-						y = 0.707106781;[m
[31m-						z = 0;[m
[31m-					} else {[m
[31m-						z = Math.sqrt(zz);[m
[31m-						x = xz / z;[m
[31m-						y = yz / z;[m
[31m-					}[m
[31m-				}[m
[31m-[m
[31m-				this.set(x, y, z, angle);[m
[31m-				return this; // return 180 deg rotation[m
[31m-			} // as we have reached here there are no singularities so we can handle normally[m
[31m-[m
[31m-[m
[31m-			let s = Math.sqrt((m32 - m23) * (m32 - m23) + (m13 - m31) * (m13 - m31) + (m21 - m12) * (m21 - m12)); // used to normalize[m
[31m-[m
[31m-			if (Math.abs(s) < 0.001) s = 1; // prevent divide by zero, should not happen if matrix is orthogonal and should be[m
[31m-			// caught by singularity test above, but I've left it in just in case[m
[31m-[m
[31m-			this.x = (m32 - m23) / s;[m
[31m-			this.y = (m13 - m31) / s;[m
[31m-			this.z = (m21 - m12) / s;[m
[31m-			this.w = Math.acos((m11 + m22 + m33 - 1) / 2);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		min(v) {[m
[31m-			this.x = Math.min(this.x, v.x);[m
[31m-			this.y = Math.min(this.y, v.y);[m
[31m-			this.z = Math.min(this.z, v.z);[m
[31m-			this.w = Math.min(this.w, v.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		max(v) {[m
[31m-			this.x = Math.max(this.x, v.x);[m
[31m-			this.y = Math.max(this.y, v.y);[m
[31m-			this.z = Math.max(this.z, v.z);[m
[31m-			this.w = Math.max(this.w, v.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clamp(min, max) {[m
[31m-			// assumes min < max, componentwise[m
[31m-			this.x = Math.max(min.x, Math.min(max.x, this.x));[m
[31m-			this.y = Math.max(min.y, Math.min(max.y, this.y));[m
[31m-			this.z = Math.max(min.z, Math.min(max.z, this.z));[m
[31m-			this.w = Math.max(min.w, Math.min(max.w, this.w));[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clampScalar(minVal, maxVal) {[m
[31m-			this.x = Math.max(minVal, Math.min(maxVal, this.x));[m
[31m-			this.y = Math.max(minVal, Math.min(maxVal, this.y));[m
[31m-			this.z = Math.max(minVal, Math.min(maxVal, this.z));[m
[31m-			this.w = Math.max(minVal, Math.min(maxVal, this.w));[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		clampLength(min, max) {[m
[31m-			const length = this.length();[m
[31m-			return this.divideScalar(length || 1).multiplyScalar(Math.max(min, Math.min(max, length)));[m
[31m-		}[m
[31m-[m
[31m-		floor() {[m
[31m-			this.x = Math.floor(this.x);[m
[31m-			this.y = Math.floor(this.y);[m
[31m-			this.z = Math.floor(this.z);[m
[31m-			this.w = Math.floor(this.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		ceil() {[m
[31m-			this.x = Math.ceil(this.x);[m
[31m-			this.y = Math.ceil(this.y);[m
[31m-			this.z = Math.ceil(this.z);[m
[31m-			this.w = Math.ceil(this.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		round() {[m
[31m-			this.x = Math.round(this.x);[m
[31m-			this.y = Math.round(this.y);[m
[31m-			this.z = Math.round(this.z);[m
[31m-			this.w = Math.round(this.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		roundToZero() {[m
[31m-			this.x = this.x < 0 ? Math.ceil(this.x) : Math.floor(this.x);[m
[31m-			this.y = this.y < 0 ? Math.ceil(this.y) : Math.floor(this.y);[m
[31m-			this.z = this.z < 0 ? Math.ceil(this.z) : Math.floor(this.z);[m
[31m-			this.w = this.w < 0 ? Math.ceil(this.w) : Math.floor(this.w);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		negate() {[m
[31m-			this.x = -this.x;[m
[31m-			this.y = -this.y;[m
[31m-			this.z = -this.z;[m
[31m-			this.w = -this.w;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		dot(v) {[m
[31m-			return this.x * v.x + this.y * v.y + this.z * v.z + this.w * v.w;[m
[31m-		}[m
[31m-[m
[31m-		lengthSq() {[m
[31m-			return this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w;[m
[31m-		}[m
[31m-[m
[31m-		length() {[m
[31m-			return Math.sqrt(this.x * this.x + this.y * this.y + this.z * this.z + this.w * this.w);[m
[31m-		}[m
[31m-[m
[31m-		manhattanLength() {[m
[31m-			return Math.abs(this.x) + Math.abs(this.y) + Math.abs(this.z) + Math.abs(this.w);[m
[31m-		}[m
[31m-[m
[31m-		normalize() {[m
[31m-			return this.divideScalar(this.length() || 1);[m
[31m-		}[m
[31m-[m
[31m-		setLength(length) {[m
[31m-			return this.normalize().multiplyScalar(length);[m
[31m-		}[m
[31m-[m
[31m-		lerp(v, alpha) {[m
[31m-			this.x += (v.x - this.x) * alpha;[m
[31m-			this.y += (v.y - this.y) * alpha;[m
[31m-			this.z += (v.z - this.z) * alpha;[m
[31m-			this.w += (v.w - this.w) * alpha;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		lerpVectors(v1, v2, alpha) {[m
[31m-			this.x = v1.x + (v2.x - v1.x) * alpha;[m
[31m-			this.y = v1.y + (v2.y - v1.y) * alpha;[m
[31m-			this.z = v1.z + (v2.z - v1.z) * alpha;[m
[31m-			this.w = v1.w + (v2.w - v1.w) * alpha;[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		equals(v) {[m
[31m-			return v.x === this.x && v.y === this.y && v.z === this.z && v.w === this.w;[m
[31m-		}[m
[31m-[m
[31m-		fromArray(array, offset = 0) {[m
[31m-			this.x = array[offset];[m
[31m-			this.y = array[offset + 1];[m
[31m-			this.z = array[offset + 2];[m
[31m-			this.w = array[offset + 3];[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		toArray(array = [], offset = 0) {[m
[31m-			array[offset] = this.x;[m
[31m-			array[offset + 1] = this.y;[m
[31m-			array[offset + 2] = this.z;[m
[31m-			array[offset + 3] = this.w;[m
[31m-			return array;[m
[31m-		}[m
[31m-[m
[31m-		fromBufferAttribute(attribute, index, offset) {[m
[31m-			if (offset !== undefined) {[m
[31m-				console.warn('THREE.Vector4: offset has been removed from .fromBufferAttribute().');[m
[31m-			}[m
[31m-[m
[31m-			this.x = attribute.getX(index);[m
[31m-			this.y = attribute.getY(index);[m
[31m-			this.z = attribute.getZ(index);[m
[31m-			this.w = attribute.getW(index);[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		random() {[m
[31m-			this.x = Math.random();[m
[31m-			this.y = Math.random();[m
[31m-			this.z = Math.random();[m
[31m-			this.w = Math.random();[m
[31m-			return this;[m
[31m-		}[m
[31m-[m
[31m-		*[Symbol.iterator]() {[m
[31m-			yield this.x;[m
[31m-			yield this.y;[m
[31m-			yield this.z;[m
[31m-			yield this.w;[m
[31m-		}[m
[31m-[m
[31m-	}[m
[31m-[m
[31m-	Vector4.prototype.isVector4 = true;[m
[31m-[m
[31m-	/*[m
[31m-	 In options, we can specify:[m
[31m-	 * Texture parameters for an auto-generated target texture[m
[31m-	 * depthBuffer/stencilBuffer: Booleans to indicate if we should generate these buffers[m
[31m-	*/[m
[31m-[m
[31m-	class WebGLRenderTarget extends EventDispatcher {[m
[31m-		constructor(width, height, options = {}) {[m
[31m-			super();[m
[31m-			this.width = width;[m
[31m-			this.height = height;[m
[31m-			this.depth = 1;[m
[31m-			this.scissor = new Vector4(0, 0, width, height);[m
[31m-			this.scissorTest = false;[m
[31m-			this.viewport = new Vector4(0, 0, width, height);[m
[31m-			this.texture = new Texture(undefined, options.mapping, options.wrapS, options.wrapT, options.magFilter, options.minFilter, options.format, options.type, options.anisotropy, options.encoding);[m
[31m-			this.texture.isRenderTargetTexture = true;[m
[31m-			this.texture.image = {[m
[31m-				width: width,[m
[31m-				height: height,[m
[31m-				depth: 1[m
[31m-			};[m
[31m-			this.texture.generateMipmaps = options.generateMipmaps !== undefined ? options.generateMipmaps : false;[m
[31m-			this.texture.internalFormat = options.internalFormat !== undefined ? options.internalFormat : null;[m
[31m-			this.texture.minFilter = options.minFilter !== undefined ? options.minFilter : LinearFilter;[m
[31m-			this.depthBuffer = options.depthBuffer !== undefined ? options.depthBuffer : true;[m
[31m-			this.stencilBuffer = options.stencilBuffer !== undefined ? options.stencilBuffer : false;[m
[31m-			this.depthTexture = options.depthTexture !== undefined ? options.depthTexture : null;[m
[31m-		}[m
[31m-[m
[31m-		setTexture(texture) {[m
[31m-			texture.image = {[m
[31m-				width: this.width,[m
[31m-				height: this.height,[m
[31m-				depth: this.depth[m
[31m-			};[m
[31m-			this.texture = texture;[m
[31m-		}[m
[31m-[m
[31m-		setSize(width, height, depth = 1) {[m
[31m-			if (this.width !== width || this.height !== height || this.depth !== depth) {[m
[31m-				this.width = width;[m
[31m-				this.height = height;[m
[31m-				this.depth = depth;[m
[31m-				this.texture.image.width = width;[m
[31m-				this.texture.image.height = height;[m
[31m-				this.texture.image.depth = depth;[m
[31m-				this.dispose();[m
[31m-			}[m
[31m-[m
[31m-			this.viewport.set(0, 0, width, height);[m
[31m-			this.scissor.set(0, 0, width, height);[m
[31m-		}[m
[31m-[m
[31m-		clone() {[m
[31m-			return new this.constructor().copy(this);[m
[31m-		}[m
[31m-[m
[31m-		copy(source) {[m
[31m-			this.width = source.width;[m
[31m-			this.height = source.height;[m
[31m-			this.depth = source.depth;[m
[31m-			this.viewport.copy(source.viewport);[m
[31m-			this.texture = source.texture.clone();[m
[31m-			this.texture.image = { ...this.texture.image[m
[31m-			}; // See #20328.