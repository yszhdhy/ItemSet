<script setup>

</script>

<template>
  <div
      class="bg-[url('assets/imgs/bg.jpg')] bg-cover bg-center h-screen text-white p-2 flex overflow-hidden"
      v-if="data"
  >
    <div class="flex-1 mr-2 bg-opacity-50 bg-slate-800 p-3 flex flex-col">
      <!-- 横向柱状图 -->
<!--      <HorizontalBar class="h-1/3 box-border pb-4" :data="data.regionData" />-->
      <!-- 雷达图 -->
<!--      <RadarBar class="h-1/3 box-border pb-4" :data="data.riskData" />-->
<!--       数据传递关系图 -->
<!--      <Relation class="h-1/3" :data="data.relationData" />-->
    </div>
    <div class="w-1/2 mr-2 flex flex-col">
<!--      &lt;!&ndash; 数据展示图 &ndash;&gt;-->
<!--      <TotalData-->
<!--          class="bg-opacity-50 bg-slate-800 p-3"-->
<!--          :data="data.totalData"-->
<!--      />-->
<!--      &lt;!&ndash; 地图可视化 &ndash;&gt;-->
<!--      <MapChart-->
<!--          class="bg-opacity-50 bg-slate-800 p-3 mt-2 flex-1"-->
<!--          :data="data.mapData"-->
<!--      />-->
    </div>
    <div class="flex-1 bg-opacity-50 bg-slate-800 p-3 flex flex-col">
<!--      &lt;!&ndash; 竖向柱状图 &ndash;&gt;-->
<!--      <VerticalBar class="h-1/3 box-border pb-4" :data="data.serverData" />-->
<!--      &lt;!&ndash; 环形资源站比图 &ndash;&gt;-->
<!--      <RadiueBar class="h-1/3 box-border pb-4" :data="data.abnormalData" />-->
<!--      &lt;!&ndash; 文档云图 &ndash;&gt;-->
<!--      <WordCloud class="h-1/3 box-border" :data="data.wordCloudData" />-->
    </div>
  </div>
</template>

<style scoped>
</style>
