<template>
  <section class="content" id="ecosystem">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <h3 class="title">Nydus Ecosystem</h3>
    <div class="desc">
      <span>Working Hard on Toolchain Support</span>
      <a
        target="_blank"
        href="https://github.com/dragonflyoss/image-service"
        class="more"
      >
        <span>Contribute</span>
        <img src="~/static/images/right.svg" alt="" class="rocket" />
      </a>
    </div>
    <div class="intro">
      <div class="column color-1">
        <div class="head">
          <img src="~/static/images/build.png" alt="" class="icon" />
          Build
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/dragonflyoss/image-service/blob/master/docs/nydusify.md"
          >
            Nydusify
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            A CLI tool converts an OCI container image from source registry into
            a Nydus image.
          </div>
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/goharbor/acceleration-service"
          >
            Harbor Acceld
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Provides a general service for Harbor to support image acceleration
            based on kinds of accelerator like Nydus and eStargz etc.
          </div>
        </div>
        <div class="item">
          <a class="title"> Buildkit </a>
          <div class="desc">
            Provides the ability to build and export Nydus images directly from
            Dockerfile.
          </div>
        </div>
      </div>
      <div class="column color-2">
        <div class="head">
          <img src="~/static/images/ship.png" alt="" class="icon" />
          Ship
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/dragonflyoss/dragonfly2"
          >
            Dragonfly
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Improve the runtime performance of Nydus image even further with the
            Dragonfly P2P data distribution system.
          </div>
        </div>
        <div class="item">
          <a class="title"> Storage Backend </a>
          <div class="desc">
            Support for OCI-compatible distribution implementations such as
            Docker Hub, Harbor, Github GHCR, ACR, and Aliyun OSS-like object
            storage service.
          </div>
        </div>
      </div>
      <div class="column color-3">
        <div class="head">
          <img src="~/static/images/rocket.png" alt="" class="icon" />
          Run
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/containerd/nydus-snapshotter"
          >
            Nydus Snapshotter
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Works as a containerd remote snapshotter to help setup container
            rootfs with Nydus image.
          </div>
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/containers/nydus-storage-plugin"
          >
            CRI-O/Podman Nydus Storage Plugin
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            An additional layer storage plugin provided Nydus images lazy
            pulling ability for CRI-O/Podman.
          </div>
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://github.com/dragonflyoss/image-service/blob/master/contrib/docker-nydus-graphdriver/README.md"
          >
            Nydus Docker Graphdriver
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Works as a docker remote graph driver for preparing nydus image
            layer to bootstrap docker container.
          </div>
        </div>
        <div class="item">
          <a target="_blank" class="title" href="https://katacontainers.io/">
            KataContainers
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Run Nydus image in Kata security container, Nydus has become a
            native image solution of Kata containers since v2.4.0.
            <div class="line">
              For more details, see
              <a
                target="_blank"
                href="https://github.com/kata-containers/kata-containers/blob/main/docs/design/kata-nydus-design.md"
                ><span class="inline-highlight">here</span></a
              >.
            </div>
          </div>
        </div>
        <div class="item">
          <a
            target="_blank"
            class="title"
            href="https://www.kernel.org/doc/html/latest/filesystems/erofs.html"
          >
            EROFS
            <div class="arrow">
              <img src="~/static/images/right.svg" alt="" />
            </div>
          </a>
          <div class="desc">
            Nydus supports the Linux kernel enhanced read-only file system,
            which allows running Nydus image directly
            <span class="inline-highlight">in-kernel</span> for even greater
            performance improvement.
          </div>
        </div>
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Ecosystem",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

section {
  margin-top: 100px;
  padding-top: 100px;
  > .title {
    width: 450px;
    font-size: 26px;
    position: relative;
    margin: 0;
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
  }
  > .desc {
    margin-top: 5px;
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
      img {
        margin-left: 8px;
      }
      @media @tablet {
        margin-left: 0;
        margin-top: 10px;
      }
    }
  }
  .intro {
    display: flex;
    justify-content: space-between;
    margin-top: 80px;
    @media @tablet {
      flex-direction: column;
    }
    .column {
      &.color-1 {
        .head {
          background-color: @color-tone;
        }
        .item {
          background-color: lighten(@color-tone, 5%);
        }
      }
      &.color-2 {
        .head {
          background-color: darken(@color-tone, 5%);
        }
        .item {
          background-color: @color-tone;
        }
      }
      &.color-3 {
        .head {
          background-color: darken(@color-tone, 10%);
        }
        .item {
          background-color: darken(@color-tone, 5%);
        }
      }
      .head {
        width: 225px;
        padding: 12px 0;
        font-size: 20px;
        font-weight: 600;
        text-align: center;
        border-radius: 20px;
        position: relative;
        @media @tablet {
          margin-top: 70px;
        }
        .icon {
          width: 60px;
          position: absolute;
          left: 5px;
          top: -40px;
        }
      }
      .item {
        padding: 15px;
        border-radius: 20px;
        width: 360px;
        margin-top: 25px;
        @media @tablet {
          width: fit-content;
        }
        .title {
          font-weight: 600;
          display: flex;
          align-items: center;
          .arrow {
            margin-left: 5px;
            background-color: #0dbc00;
            width: 15px;
            height: 15px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            img {
              width: 4px;
            }
          }
        }
        .desc {
          margin-top: 10px;
          line-height: 24px;
          .line {
            margin-top: 10px;
          }
        }
      }
    }
  }
}
</style>
