<template>
  <div>
    <h2 class="text-center mc font-bold text-xl py-4 md:text-3xl md:py-10">主营业务</h2>
    <ul class="flex justify-evenly mc text-sm md:text-xl" @click="switchTab">
      <li v-for="item in tabTitleList" :key="item" class="cursor-pointer md:hover:opacity-80" :class="item.isActive ? 'border-b-2 border-b-amber-700' : null">{{ item.title }}</li>
    </ul>
    <ul class="mt-14">
      <li v-show="isShow1" class="flex flex-wrap justify-evenly items-center px-4 text-sm md:text-base mc text-justify md:flex-nowrap">
        <img class="w-80 md:w-96" src="platform.png" alt="冷捷B2B冷链物流科技平台">
        <div class="w-full md:w-1/2">
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">物流交易平台</h3>
            <p><span class="font-bold">•</span> 立足智能冷链物流行业，围绕“交付”、“数据”、“算法”三个核心要素，将物联网、大数据、信息数字化技术和智能设备系统与冷链物流深度融合。</p>
            <p><span class="font-bold">•</span> 客户管理、订单撮合、电子签约、合同管理、自动计费、票据结算全流程数字化运营。</p>
          </div>
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">运营支持平台</h3>
            <p><span class="font-bold">•</span> 在冷链物流全链条、全要素建立从配送需求到运力能力等多类标准流程SOP管理机制，包括TMS、WMS、OMS服务等，以SaaS化的方式对行业进行输出。</p>
            <p><span class="font-bold">•</span> 大数据中台，全程可视化，订单管理、运力调度、在途监控、终端配送全生命周期线上管控，订单状态实时更新，异常实时预警，可以有效降低运输成本、提高运输质量和效率，解决行业痛点。</p>
          </div>
          <div>
            <h3 class="text-lg md:text-2xl pb-1 font-bold">车后电商平台</h3>
            <p><span class="font-bold">•</span> 针对冷链物流全场景，深化产业链上下游联动，链接运力、金融、智能软硬件、主机厂、经销运营商、车后服务等资源，打造冷链物流与产业融合发展、资源共享的新生态。</p>
            <p><span class="font-bold">•</span> 车辆全周期价值管理，为运力端提供金融保险、智能硬件、定制车型、车辆租售、二手车处置、维保油电等全生态增值服务，为运力赋能。</p>
          </div>
        </div>
      </li>
      <li v-show="isShow2">
        <div class="flex justify-evenly items-center flex-wrap md:flex-nowrap">
          <img class="w-80 mb-4 md:w-96" src="service-1.png">
          <img class="w-80 mb-4 md:w-96" src="service-2.png">
        </div>
        <div class="mc w-11/12 mx-auto text-justify md:w-4/5 md:whitespace-nowrap">
          <div class="flex flex-wrap mb-2"><span class="font-bold">•</span>&nbsp;<h3 class="font-bold">数字化运营：</h3>全流程数字化运营，订单全生命周期线上管控，形成物流、信息流、资金流、票据流的四流合一，优化冷链企业运营效率，以科技驱动完美交付。</div>
          <div class="flex flex-wrap mb-2"><span class="font-bold">•</span>&nbsp;<h3 class="font-bold">标准化管理：</h3>通过数字化平台和智能设备打造智能、高效、完善的运营体系，实现标准化、智能化管理，提质增效、降低成本。</div>
          <div class="flex flex-wrap"><span class="font-bold">•</span>&nbsp;<h3 class="font-bold">场景化服务：</h3>为B端客户提供全场景、端到端的智慧冷链仓配一体化服务，针对客户不同需求，提供场景化解决方案。</div>
        </div>
      </li>
      <li v-show="isShow3">
        <img class="w-11/12 mx-auto md:w-4/5" src="service-3.png" alt="全生态增值服务">
      </li>
    </ul>
  </div>
</template>
<script setup>
let isShow1 = ref(true)
let isShow2 = ref(false)
let isShow3 = ref(false)
const tabTitleList = reactive([{title: '冷链物流科技平台', isActive: true},{title: '智慧冷链仓配服务', isActive: false},{title:'全生态增值服务', isActive:false}])
function switchTab(event){
  let tabName = event.target.innerText
  if(tabName === '冷链物流科技平台') {
    tabTitleList[0].isActive = true
    tabTitleList[1].isActive = false
    tabTitleList[2].isActive = false
    isShow1 = true
    isShow2 = false
    isShow3 = false
  } else if (tabName === '智慧冷链仓配服务') {
    tabTitleList[0].isActive = false
    tabTitleList[1].isActive = true
    tabTitleList[2].isActive = false
    isShow1 = false
    isShow2 = true
    isShow3 = false
  } else if (tabName === '全生态增值服务') {
    tabTitleList[0].isActive = false
    tabTitleList[1].isActive = false
    tabTitleList[2].isActive = true
    isShow1 = false
    isShow2 = false
    isShow3 = true
  }
}
</script>