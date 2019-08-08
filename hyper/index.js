'use strict'
/*==============================================================================
 Purify colors for Hyper
 Author:     Kyoz
 Repository: https://github.com/kyoz/purify/
 License:    The MIT License (MIT)
 Copyright:  Kyoz (banminkyoz@gmail.com)
==============================================================================*/

const foregroundColor = '#FAFAFA';
const backgroundColor = '#313440';
const selectionColor  = '#252834';

const black           = '#282C34';
const red             = '#FF6059';
const green           = '#5FFF87';
const yellow          = '#FFFF87';
const blue            = '#5FAFFF';
const magenta         = '#AF87FF';
const cyan            = '#5FAFFF';
const white           = '#FAFAFA';

const lightBlack      = '#686868';

exports.decorateConfig = config => Object.assign({}, config, {
	backgroundColor,
	foregroundColor,
	borderColor: backgroundColor,
	cursorColor: foregroundColor,
	cursorAccentColor: backgroundColor,
	selectionColor,
	colors: {
		black,
		red,
		green,
		yellow,
		blue,
		magenta,
		cyan,
		white,
		lightBlack,
		lightRed: red,
		lightGreen: green,
		lightYellow: yellow,
		lightBlue: blue,
		lightMagenta: magenta,
		lightCyan: cyan,
		lightWhite: white
	},
	css: `
		/* Hide title if there's just one tab */
		.tabs_title {
			display: none !important;
		}
	`
});
