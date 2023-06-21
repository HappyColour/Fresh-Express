<template>
  <div>
    <ul class="flex justify-evenly mc text-sm md:text-xl" @click="switchTab">
      <li v-for="item in tabTitleList" :key="item" class="cursor-pointer md:hover:opacity-80" :class="item.isActive ? 'border-b-2 border-b-amber-700' : null">{{ item.title }}</li>
    </ul>
    <ul class="mt-14">
      <li v-show="isShow1" class="flex flex-wrap justify-evenly items-center px-4 text-sm md:text-base mc text-justify md:flex-nowrap">
        <img class="w-80 md:w-96" src="/strengths-2.png" alt="数智科技">
        <div class="w-full md:w-1/2">
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">智能引擎 高效调度运力</h3>
            <p><span class="font-bold">•</span> 基于大数据的运单和运力的最有效的撮合匹配机制，基于运力画像和运单场景画像进行相互推荐，高效调度运力，多种车型智能匹配。</p>
          </div>
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">智能排线 智能预约高效排线</h3>
            <p><span class="font-bold">•</span> 业务场景数据和算法先进，基于冷链物流业务场景和海量订单，智能定价和智能排线的多种先进算法能力。</p>
          </div>
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">OpenAPI与TMS 无缝链接数据服务</h3>
            <p><span class="font-bold">•</span> OpenAPI与TMS无缝链接数据服务，能够支持千万级运单响应能力和千万级运力配送管理能力。</p>
          </div>
          <div class="pb-4">
            <h3 class="text-lg md:text-2xl pb-1 font-bold">大数据中台 全程可视智慧交付</h3>
            <p><span class="font-bold">•</span> 大数据中台，全程可视智慧交付，不仅为冷链物流流通监管提供了有效的决策依据，还在最大程度上保障了食品安全，让货主更安心、更放心。</p>
          </div>
          <div>
            <h3 class="text-lg md:text-2xl pb-1 font-bold">智能网联 全链条可追溯</h3>
            <p><span class="font-bold">•</span> 通过先进的智能网联平台，来监管车辆位置、速度及厢体温度、冷机启动状态等，实现了冷链任务全流程跟踪监控、全链条可追溯。</p>
          </div>
        </div>
      </li>
      <li v-show="isShow2">
        <div class="flex justify-evenly items-center flex-wrap md:flex-nowrap">
          <img class="w-80 mb-4 md:w-1/2" src="/strengths-3.png">
          <img class="w-80 mb-4 md:w-1/4" src="/strengths-4.png">
        </div>
        <div class="mc w-11/12 mx-auto text-justify md:w-4/5">
          <div class="flex mb-2"><span class="font-bold">•</span>&nbsp;冷捷科技创始团队有着15年以上的业内经验，专业底蕴深厚，多元化的从业背景覆盖技术、运营、管理、主机厂和投融资各领域，拥有丰富的客户资源、车辆资源、区域资源、金融资源、运力资源，围绕冷链物流仓配各环节，发挥协同优势和规模效应，有效提升服务质量，降低运营成本。</div>
          <div class="flex mb-2"><span class="font-bold">•</span>&nbsp;基于数字化信息系统和智能高效完善的运营体系，根据客户需求定制化设计冷链仓配方案，解决冷链配送成本高、效率低、监管难、体验差的痛点，在保证服务交付质量的基础上实现效益最大化。</div>
        </div>
      </li>
      <li v-show="isShow3" class="flex flex-wrap justify-evenly items-center px-4 text-sm md:text-base mc text-justify md:flex-nowrap">
        <img class="w-80 md:w-96" src="/strengths-5.png" alt="数智科技">
        <div class="w-full md:w-1/2">
          <div class="pb-4">
            <p><span class="font-bold">•</span> 冷捷科技通过推广数字化建设，冷链叠加智能设备系统、大数据和物联网技术，深化产业链上下游联动，链接货源、仓储、运力、金融保险、智能软硬件、主机厂、车后服务等资源，打造冷链物流与产业融合发展、资源共享的多元生态。</p>
          </div>
          <div>
            <p><span class="font-bold">•</span> 冷捷科技平台针对冷链物流全场景，加深冷链物流配送新模式的培育，创新发展“冷链物流+”的新生态、新场景，向行业提供共享云仓、金融服务、智能硬件、车辆租售、二手车处置、维保油电等全生态增值服务，以多元生态为为运力赋能。</p>
          </div>
        </div>
      </li>
    </ul>
  </div>
</template>
<script setup>
let isShow1 = ref(true)
let isShow2 = ref(false)
let isShow3 = ref(false)
const tabTitleList = reactive([{title: '数智科技', isActive: true},{title: '专业专注', isActive: false},{title:'多元生态', isActive:false}])
function switchTab(event){
  let tabName = event.target.innerText
  if(tabName === '数智科技') {
    tabTitleList[0].isActive = true
    tabTitleList[1].isActive = false
    tabTitleList[2].isActive = false
    isShow1 = true
    isShow2 = false
    isShow3 = false
  } else if (tabName === '专业专注') {
    tabTitleList[0].isActive = false
    tabTitleList[1].isActive = true
    tabTitleList[2].isActive = false
    isShow1 = false
    isShow2 = true
    isShow3 = false
  } else if (tabName === '多元生态') {
    tabTitleList[0].isActive = false
    tabTitleList[1].isActive = false
    tabTitleList[2].isActive = true
    isShow1 = false
    isShow2 = false
    isShow3 = true
  }
}
</script>