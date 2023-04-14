<template>
  <section class="content" id="design">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <h3 class="title">Nydus Core Design</h3>
    <div class="desc">
      <span>Focus on Performance and Low Cost</span>
      <a
        target="_blank"
        href="https://github.com/dragonflyoss/image-service/blob/master/docs/nydus-design.md"
        class="more"
      >
        <span>Read Doc</span>
        <img src="~/static/images/right.svg" alt="" class="rocket" />
      </a>
    </div>
    <div class="design">
      <div class="left">
        <div class="item">
          <div class="icon color-1">
            <img src="~/static/images/rocket.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Performance</div>
            <div class="desc">
              Second-level container startup speed, millisecond-level function
              computation code package loading speed.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-2">
            <img src="~/static/images/bike.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Low Cost</div>
            <div class="desc">
              Written in memory-safed language
              <span class="inline-highlight">Rust</span>, numerous optimizations
              help improve memory, CPU, and network consumption.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-3">
            <img src="~/static/images/drum.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Flexible</div>
            <div class="desc">
              Supports container runtimes such as runC, 
              <span class="inline-highlight">Kata</span>, CRI-O 
              and confidential containers.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-4">
            <img src="~/static/images/police.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Security</div>
            <div class="desc">
              End to end data integrity check, Supply Chain Attack can be
              detected and avoided at runtime. 
              And also support vulnerability scanning capabilities.
            </div>
          </div>
        </div>
      </div>
      <div class="arrow">
        <img src="~/static/images/three-arrow.svg" alt="" />
      </div>
      <div class="right">
        <div class="bar"></div>
        <div class="item">
          <div class="icon color-1">
            <img src="~/static/images/car.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">On-demand Load</div>
            <div class="desc">
              Container images/packages are downloaded on-demand in chunk unit
              to boost startup.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-2">
            <img src="~/static/images/controller.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Chunk Deduplication</div>
            <div class="desc">
              Chunk level data de-duplication cross-layer or cross-image to
              reduce storage, transport, and memory cost.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-3">
            <img src="~/static/images/helmet.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">POSIX Compatibility</div>
            <div class="desc">
              In-Kernel EROFS, FUSE and VirtioFS support 
              provides full POSIX compatibility.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-4">
            <img src="~/static/images/game.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Compatible with Ecosystem</div>
            <div class="desc">
              Support with Registry, OSS, NAS, Shared Disk, and P2P services.
              And compatible with the OCI specification.
            </div>
          </div>
        </div>
        <div class="item">
          <div class="icon color-4">
            <img src="~/static/images/dice.png" alt="" class="emoji" />
          </div>
          <div class="intro">
            <div class="title">Data Analyzable</div>
            <div class="desc">
              Record accesses, data layout optimization, prefetch, IO
              amplification, abnormal behavior detection.
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Design",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

.content {
  margin-bottom: 150px;
  padding-top: 250px;
  .line-bg {
    top: 100px;
    transform: scaleY(-1) scaleX(-1);
  }
  > .title {
    font-size: 26px;
    position: relative;
    width: fit-content;
    margin: 0 auto;
    &::after {
      content: "";
      border: 4px solid @color-main;
      position: absolute;
      width: 55px;
      left: 50%;
      margin-left: -27px;
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
  }
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
    .more {
      margin-left: 20px;
      background-color: @color-link;
      padding: 8px 15px;
      border-radius: 1000px;
      display: inline-flex;
      align-items: center;
      width: fit-content;
      font-weight: 500;
      color: white;
      font-size: 13px;
      @media @tablet {
        margin-left: 0;
        margin-top: 10px;
      }
      img {
        margin-left: 8px;
      }
    }
  }
  .design {
    margin-top: 40px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    @media @tablet {
      flex-direction: column;
    }
    .left {
      background-color: lighten(@color-tone, 5%);
      border-radius: 20px;
      padding: 30px;
      @media @tablet {
        padding: 20px;
      }
      .item {
        display: flex;
        align-items: center;
        margin-bottom: 40px;
        @media @tablet {
          flex-direction: column;
          text-align: center;
        }
        &:last-child {
          margin-bottom: 0;
        }
        .icon {
          &.color-1 {
            background-color: #55e2d6;
          }
          &.color-2 {
            background-color: #9eff96;
          }
          &.color-3 {
            background-color: #a1d0ff;
          }
          &.color-4 {
            background-color: #ffafaf;
          }
          width: 75px;
          height: 75px;
          border-radius: 50%;
          position: relative;
          img {
            width: 50px;
            position: absolute;
            top: -5px;
            right: -5px;
          }
        }
        .intro {
          margin-left: 20px;
          @media @tablet {
            margin-left: 0;
            margin-top: 20px;
          }
          .title {
            font-size: 20px;
            font-weight: 600;
          }
          .desc {
            font-size: 16px;
            width: 450px;
            @media @tablet {
              width: 100%;
            }
          }
        }
      }
    }
    .arrow {
      margin-right: 10px;
      @media @tablet {
        display: none;
      }
    }
    .right {
      position: relative;
      padding: 20px 0;
      @media @tablet {
        margin-top: 50px;
      }
      .bar {
        background-color: lighten(@color-tone, 10%);
        position: absolute;
        left: -9px;
        width: 47px;
        top: 0;
        bottom: 0;
        border-radius: 15px;
        z-index: -1;
        @media @tablet {
          background-color: transparent;
        }
      }
      .item {
        display: flex;
        align-items: center;
        margin-bottom: 25px;
        &:last-child {
          margin-bottom: 0;
        }
        .icon {
          img {
            width: 30px;
          }
        }
        .intro {
          margin-left: 30px;
          @media @tablet {
            margin-left: 20px;
          }
          .title {
            font-size: 20px;
            font-weight: 600;
          }
          .desc {
            font-size: 16px;
            width: 450px;
            @media @tablet {
              width: 100%;
            }
          }
        }
      }
    }
  }
}
</style>
