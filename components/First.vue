<template>
  <section class="content">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <div class="left">
      <div class="headline">
        <img src="~/static/images/rocket.png" alt="" />
        <span>/ Production Ready /</span>
      </div>
      <h1 class="title">
        Acceleration Framework<span class="for-tablet">For</span>
        <div class="line">
          <div class="for-desktop">For</div>
          <div class="highlights">
            <div
              class="wrap"
              :style="{ transform: `translateY(${highlightTop}px)` }"
            >
              <span class="highlight">Container Image</span>
              <span class="highlight">Function Computation</span>
              <span class="highlight">Vulnerability Scanning</span>
              <span class="highlight">Dependency Packages</span>
              <span class="highlight">Image Data Insight</span>
            </div>
          </div>
        </div>
      </h1>
      <h2 class="subtitle">
        A Dragonfly (CNCF incubating project) sub-project
      </h2>
      <a
        target="_blank"
        href="https://github.com/dragonflyoss/image-service"
        class="start"
      >
        <img src="~/static/images/rocket.svg" alt="" class="rocket" />
        <span>Get Started</span>
      </a>
    </div>
    <div class="right">
      <img src="~/static/images/perf.png" alt="" class="perf" />
    </div>
  </section>
</template>

<script>
const wait = (duration) => {
  return new Promise((resolve) => {
    setTimeout(() => {
      resolve();
    }, duration);
  });
};

export default {
  name: "First",
  data() {
    return {
      i: 0,
      highlightTop: 0,
    };
  },
  async mounted() {
    while (1) {
      await wait(3000);
      this.i++;
      if (this.i > 4) {
        this.i = 0;
      }
      this.highlightTop = this.i * -40;
    }
  },
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

.content {
  margin-top: 100px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  padding-bottom: 120px;
  @media @tablet {
    flex-direction: column;
    text-align: center;
  }
  .line-bg {
    top: -150px;
  }
  .left {
    .headline {
      display: flex;
      align-items: center;
      @media @tablet {
        justify-content: center;
      }
      img {
        width: 50px;
        margin-right: 15px;
      }
      span {
        font-size: 22px;
        font-weight: 600;
      }
    }
    .title {
      font-size: 36px;
      width: 500px;
      margin: 0;
      line-height: 40px;
      .for-tablet {
        margin-left: 10px;
        display: inline-block;
      }
      @media @desktop {
        .for-tablet {
          display: none;
        }
      }
      @media @tablet {
        width: 100%;
        font-size: 28px;
      }
      .line {
        display: flex;
        @media @tablet {
          .for-desktop {
            display: none;
          }
        }
      }
      .highlights {
        height: 42px;
        overflow: hidden;
        margin-left: 10px;
        .wrap {
          transition: transform 0.3s ease-in-out;
          .highlight {
            color: @color-highlight;
            display: inline-block;
            position: relative;
            line-height: 36px;
            &::after {
              content: "";
              border: 8px solid @color-tone;
              position: absolute;
              left: 0;
              right: 0;
              bottom: 4px;
              z-index: -1;
            }
          }
        }
      }
    }
    .subtitle {
      font-size: 20px;
      font-weight: 600;
    }
    .start {
      background-color: @color-tone;
      padding: 9px 15px;
      border: 3px solid @color-main;
      border-radius: 1000px;
      display: flex;
      align-items: center;
      width: fit-content;
      font-weight: 600;
      img {
        margin-right: 8px;
      }
      @media @tablet {
        margin: 0 auto;
      }
    }
  }
  .right {
    img {
      position: relative;
      top: 30px;
      width: 620px;
      @media @tablet {
        width: 100%;
        top: 50px;
      }
    }
  }
}
</style>
