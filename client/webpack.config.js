var path = require('path');
var webpack = require('webpack');

var Dashboard = require('webpack-dashboard')
var DashboardPlugin = require('webpack-dashboard/plugin')
// var ExtractTextPlugin = require('extract-text-webpack-plugin')
var HtmlWebpackPlugin = require('html-webpack-plugin');

var dashboard = new Dashboard()

module.exports = {
  context: path.join(__dirname, 'src'),
  entry: {
    app: [
      'webpack-dev-server/client?http://localhost:8080',
      'webpack/hot/only-dev-server',
      // 'react-hot-loader/patch',
      'whatwg-fetch',
      './app.jsx'
    ],
    vendor: ['react', 'react-dom']
  },

  output: {
    path: path.join(__dirname, 'dist'),
    filename: 'bundle.js',
    publicPath: 'http://localhost:8080/'
  },

  resolve: {
    modules: [path.resolve(__dirname, 'src'), 'node_modules'],
    descriptionFiles: ['package.json'],
    alias: {
      'fetch': 'whatwg-fetch'
    }
  },

  module: {
    rules: [
      {
        test: /\.(js|jsx)$/,
        use: ['react-hot-loader', 'babel-loader'],
        exclude: /node_modules/
      },
      {
        test: /\.(scss|sass)$/,
        use: ["style-loader", "css-loader", "sass-loader"]
      },
      {
        test: /static\/images\/\.(png)$/,
        use: "url-loader?name=/static/images/$1"
      }
    ],
    noParse: /react/
  },

  plugins: [
    new webpack.HotModuleReplacementPlugin(),
    new webpack.optimize.CommonsChunkPlugin({
      name: 'vendor',
      filename: 'vendor.bundle.js'
    }),
    new webpack.DefinePlugin({
      'process.env': { NODE_ENV: JSON.stringify(process.env.NODE_ENV || 'development') }
    }),
    new DashboardPlugin(dashboard.setData)
    // new HtmlWebpackPlugin({
    //   title: 'React Frontend',
    //   template: "index.html",
    //   filename: "/app/public/index.html",
    //   minify: false
    // })
  ],

  devtool: 'source-map',
  watchOptions: {
    poll: 1000
  }
}
