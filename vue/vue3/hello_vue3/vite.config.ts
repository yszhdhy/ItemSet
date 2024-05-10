// import { fileURLToPath, URL } from 'node:url'

import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import vueJsx from '@vitejs/plugin-vue-jsx'
import VueDevTools from 'vite-plugin-vue-devtools'
import VueSetupExtend from 'vite-plugin-vue-setup-extend'
import { fileURLToPath } from 'url' // 导入所需的URL模块
import WindiCSS from 'vite-plugin-windicss'

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [
    vue(),
    vueJsx(),
    VueDevTools(),
    VueSetupExtend(),  // 简化组件名称的插件
    WindiCSS(), // 添加 WindiCSS 插件
  ],
  resolve: {
    alias: {
      // 使用 fileURLToPath 将当前目录转换为文件路径
      '@': fileURLToPath(new URL('./src', import.meta.url))
    }
  },
  define: {
    // 使用 define 配置来模拟 ProvidePlugin
    'process': 'process/browser',
    'Buffer': ['buffer', 'Buffer']
  }
})
