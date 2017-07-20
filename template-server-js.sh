#!bin/bash
echo "
import React from 'react';
import {$1} from '../../components';

export default (data) => {
	return <$1 data={data} />;
};
"
