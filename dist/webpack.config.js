var HtmlWebpackPlugin = require('html-webpack-plugin');
var path = require('path');
module.exports = {
    mode: 'development',
    entry: './src/index.ts',
    module: {
        rules: [
            {
                test: /\.tsx?$/,
                use: 'ts-loader',
                exclude: /node_modules/,
            },
        ],
    },
    resolve: {
        extensions: ['.tsx', '.ts', '.js'],
    },
    output: {
        filename: 'bundle.js',
        path: path.resolve(__dirname, 'dist'),
    },
    devServer: {
        compress: true,
        port: 8000,
    },
    plugins: [new HtmlWebpackPlugin({
            template: 'src/index.html'
        })],
};
