const path = require('path');
const glob = require('glob');

module.exports = {
    mode: 'development', // 또는 'production'
    entry: glob.sync('./src/main/webapp/resources/ts/**/*.ts').reduce((entries, file) => {
        const entry = path.parse(file).name;
        entries[entry] = './' + path.relative(__dirname, file).replace(/\\/g, '/');
        return entries;
    }, {}),
    module: {
        rules: [
            {
                test: /\.ts$/,
                use: 'ts-loader',
                exclude: /node_modules/
            }
        ]
    },
    resolve: {
        extensions: ['.ts', '.js']
    },
    output: {
        filename: '[name].js',
        path: path.resolve(__dirname, './src/main/webapp/resources/js')
    },
    watch: true, // 파일 변경을 감지하고 자동으로 빌드
    watchOptions: {
        ignored: /node_modules/,
        aggregateTimeout: 300, // 빌드 지연 시간 (ms)
        poll: 1000 // 폴링 간격 (ms)
    }
};
