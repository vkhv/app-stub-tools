#!bin/bash
import {$1} from '../../components';
import {bemAppRendererFactory} from 'yandex-money-bem-app-renderer';

const bemAppRenderer = bemAppRendererFactory($1);

bemAppRenderer.render();

// @todo redux hmr
if (module.hot) {
	module.hot.accept(() => {
		bemAppRenderer.render();
	});
}
