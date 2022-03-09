<template>
  <section class="content" id="overview">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <h3 class="title">
      Provide Fast, Secure And Easy Access to
      <span class="highlight">Data Distribution</span>
      <a
        target="_blank"
        href="https://drive.google.com/file/d/1LRfLUkNxShxxWU7SKjc_50U0N9ZnGIdV/view"
        class="more"
      >
        <span>Learn More</span>
        <img src="~/static/images/right.svg" alt="" class="rocket" />
      </a>
    </h3>
    <div class="desc">
      Nydus is a powerful opensource filesystem solution to form a
      high-efficiency image distribution system for
      <span class="bold">Cloud Native</span> workloads, such as container
      images, software packages, etc.
    </div>
    <img src="~/static/images/arch.png" alt="" class="arch" />
  </section>
</template>

<script>
export default {
  name: "Arch",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

section {
  padding-top: 100px;
  .line-bg {
    top: -50px;
    transform: scaleY(-1);
  }
  .title {
    width: 450px;
    font-size: 26px;
    position: relative;
    @media @tablet {
      width: 100%;
      font-size: 20px;
    }
    &::after {
      content: "";
      border: 4px solid @color-main;
      position: absolute;
      width: 55px;
      left: 0;
      top: -30px;
      z-index: -1;
    }
    &::before {
      content: "";
      width: 45px;
      height: 45px;
      border-radius: 50%;
      background-color: @color-tone;
      position: absolute;
      z-index: -1;
      left: -20px;
      top: -10px;
    }
    .highlight {
      color: @color-highlight;
    }
    .more {
      background-color: @color-link;
      padding: 8px 15px;
      border-radius: 1000px;
      display: inline-flex;
      align-items: center;
      width: fit-content;
      font-weight: 500;
      color: white;
      font-size: 13px;
      img {
        margin-left: 8px;
      }
      @media @tablet {
        margin-top: 10px;
      }
    }
  }
  .desc {
    width: 670px;
    font-weight: 400;
    font-size: 18px;
    @media @tablet {
      width: 100%;
    }
    .bold {
      font-weight: 600;
    }
  }
  .arch {
    margin: 0 auto;
    display: block;
    margin-top: 100px;
    width: 980px;
    @media @tablet {
      width: 100%;
    }
  }
}
</style>
