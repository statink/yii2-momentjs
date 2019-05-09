<?php
/**
 * @copyright Copyright (C) 2019 AIZAWA Hina
 * @license https://github.com/fetus-hina/stat.ink/blob/master/LICENSE MIT
 * @author AIZAWA Hina <hina@bouhime.com>
 */

declare(strict_types=1);

namespace statink\yii2\momentjs;

use yii\web\AssetBundle;

class MomentAsset extends AssetBundle
{
    public $sourcePath = '@npm/moment/min';
    public $js = [
        'moment-with-locales.min.js',
    ];
}
