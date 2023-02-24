<template>
  <section class="content" id="community">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <h3 class="title">Nydus Community</h3>
    <img src="~/static/images/production.png" alt="" class="ready" />
    <div class="desc">
      <span class="bold">Partners & Adopters</span>
    </div>
    <div class="partners">
      <div class="item">
        <img src="~/static/images/aliyun.png" alt="" class="logo" />
        <div class="intro">
          <img
            src="~/static/images/quote-left.svg"
            alt=""
            class="quote"
          />Aliyun serverless image pull time drops from 20 seconds to 0.8s
          seconds.<img
            src="~/static/images/quote-right.svg"
            alt=""
            class="quote"
          />
        </div>
      </div>
      <div class="item">
        <img src="~/static/images/antgroup.png" alt="" class="logo" />
        <div class="intro">
          <img
            src="~/static/images/quote-left.svg"
            alt=""
            class="quote"
          />Serving large-scale clusters with millions of container creations
          each day.<img
            src="~/static/images/quote-right.svg"
            alt=""
            class="quote"
          />
        </div>
      </div>
      <div class="item">
        <img src="~/static/images/bytedance.png" alt="" class="logo" />
        <div class="intro">
          <img
            src="~/static/images/quote-left.svg"
            alt=""
            class="quote"
          />Serving container image acceleration in Technical Infrastructure of
          ByteDance.<img
            src="~/static/images/quote-right.svg"
            alt=""
            class="quote"
          />
        </div>
      </div>
      <div class="item">
        <img src="~/static/images/kuaishou.png" alt="" class="logo" />
        <div class="intro">
          <img
            src="~/static/images/quote-left.svg"
            alt=""
            class="quote"
          />Starting to deploy millions of containers with Dragonfly and
          Nydus.<img
            src="~/static/images/quote-right.svg"
            alt=""
            class="quote"
          />
        </div>
      </div>
      <div class="item">
        <img src="~/static/images/yuemiao-logo.png" alt="" class="logo" />
        <div class="intro">
          <img
            src="~/static/images/quote-left.svg"
            alt=""
            class="quote"
          />The startup time of micro service has been greatly improved, and reduced the network consumption.<img
            src="~/static/images/quote-right.svg"
            alt=""
            class="quote"
          />
        </div>
      </div>
    </div>
    <div class="desc">
      <span class="bold">Open Source Communities</span>
    </div>
    <div class="communities">
      <a class="item" target="_blank" href="https://d7y.io/">
        <img src="~/static/images/dragonfly-logo.svg" alt="" class="logo" />
      </a>
      <a class="item" target="_blank" href="https://katacontainers.io/">
        <img src="~/static/images/kata-logo.svg" alt="" class="logo" />
      </a>
      <a class="item" target="_blank" href="https://openanolis.cn/?lang=en">
        <img
          src="~/static/images/openanolis-logo.png"
          alt=""
          class="logo openanolis"
        />
      </a>
      <a class="item" target="_blank" href="https://goharbor.io/">
        <img src="~/static/images/harbor-logo.png" alt="" class="logo" />
      </a>
      <a
        class="item sealer"
        target="_blank"
        href="https://github.com/sealerio/sealer"
      >
        <img src="~/static/images/sealer-logo.png" alt="" class="logo" />
      </a>
    </div>
    <img src="~/static/images/logo-large.png" alt="" class="logo-large" />
    <div class="links">
      <a
        class="github"
        target="_blank"
        href="https://github.com/dragonflyoss/image-service"
        ><img src="~/static/images/github.svg" alt="Nydus Github" />Github</a
      >
      <a
        class="slack"
        target="_blank"
        href="https://join.slack.com/t/nydusimageservice/shared_invite/zt-pz4qvl4y-WIh4itPNILGhPS8JqdFm_w"
        ><img src="~/static/images/slack.svg" alt="Slack" />Slack</a
      >
      <a class="dingtalk" v-tooltip="`Group Number: 34971767`"
        ><img src="~/static/images/dingtalk.svg" alt="DingTalk" />DingTalk</a
      >
    </div>
    <footer>
      <span>© 2023 Nydus Developers</span>
      <a
        href="https://creativecommons.org/licenses/by-nc-nd/4.0/"
        target="_blank"
        ><img
          src="https://licensebuttons.net/l/by-nc-nd/4.0/80x15.png"
          alt=""
          class="license"
      /></a>
    </footer>
  </section>
</template>

<script>
export default {
  name: "Community",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

.content {
  padding-top: 200px;
  margin-bottom: 20px;
  > .desc {
    margin: 0 auto;
    width: fit-content;
    margin-top: 15px;
    color: @color-highlight;
    font-weight: 400;
    font-size: 22px;
    display: flex;
    align-items: center;
    @media @tablet {
      flex-direction: column;
      text-align: center;
      font-size: 18px;
    }
    .bold {
      font-weight: 600;
    }
  }
  .line-bg {
    top: 50px;
    transform: scaleX(-1);
  }
  > .title {
    width: 450px;
    font-size: 26px;
    position: relative;
    display: flex;
    align-items: center;
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
  }
  .ready {
    display: block;
    margin: 0 auto;
    width: 400px;
    @media @tablet {
      width: 80%;
    }
  }
  .partners {
    border-radius: 20px;
    display: flex;
    align-items: center;
    justify-content: center;
    padding: 10px 0;
    margin: 0 auto;
    margin-top: 0px;
    width: 100%;
    flex-wrap: wrap;
    @media @tablet {
      flex-direction: column;
      justify-content: space-between;
      padding: 10px 10px;
    }
    .item {
      margin: 0 20px;
      margin-top: 50px;
      @media @tablet {
        margin-top: 30px;
        &:first-child {
          margin-top: 0;
        }
      }
      .logo {
        height: 43px;
        margin: 0 auto;
        display: block;
      }
      .intro {
        text-align: center;
        font-size: 16px;
        max-width: 380px;
        margin-top: 15px;
        .company-name {
          font-size: 26px;
          font-weight: bold;
          margin-bottom: 15px;
        }
        .quote {
          width: 20px;
          opacity: 0.5;
          margin: 0 2px;
        }
      }
      &.block {
        display: block;
        width: 100%;
        margin-bottom: 30px;
        .intro {
          margin: 0 auto;
        }
      }
      .bold {
        font-weight: 600;
      }
    }
  }
  .partners {
    margin-bottom: 50px;
  }
  .communities {
    margin: 0 auto;
    max-width: 1100px;
    display: flex;
    flex-wrap: wrap;
    align-items: center;
    justify-content: space-around;
    .item.sealer {
      .logo {
        width: 80px;
      }
    }
    .logo {
      width: 200px;
      &.openanolis {
        width: 160px;
      }
    }
  }
  .logo-large {
    width: 820px;
    display: block;
    margin: 80px auto;
    @media @tablet {
      width: 100%;
    }
  }
  .links {
    display: flex;
    align-items: center;
    justify-content: center;
    @media @tablet {
      flex-direction: column;
      text-align: center;
    }
    a {
      width: fit-content;
      background-color: @color-tone;
      padding: 5px 15px;
      border: 4px solid @color-main;
      border-radius: 1000px;
      display: flex;
      align-items: center;
      margin-right: 20px;
      font-size: 16px;
      @media @tablet {
        margin: 0 auto !important;
        margin-bottom: 20px !important;
      }
      &:last-child {
        margin-right: 0;
      }
      img {
        margin-right: 8px;
      }
      &.github {
        margin-right: 50px;
        padding: 10px 22px;
        font-size: 20px;
        background-color: darken(@color-tone, 10%);
        img {
          width: 30px;
        }
      }
    }
  }
  footer {
    text-align: center;
    font-weight: 600;
    font-size: 18px;
    margin-top: 100px;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    .license {
      margin-top: 10px;
    }
    span {
      opacity: 0.3;
    }
  }
}
</style>
