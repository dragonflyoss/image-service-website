<template>
  <section class="content">
    <div class="line-bg">
      <img src="~/static/images/line-bg.svg" alt="" />
    </div>
    <h3 class="title">
      EROFS
      <a
        target="_blank"
        class="more"
        href="https://www.kernel.org/doc/html/latest/filesystems/erofs.html"
      >
        <span>Read Doc</span>
        <img src="~/static/images/right.svg" alt="" class="rocket" />
      </a>
    </h3>
    <div class="desc">
      EROFS is a
      <span class="bold">flexible, powerful, high-performance</span> block-based
      modern read-only FS format.
    </div>
    <div class="intro">
      <div class="wrap">
        <div class="title">
          EROFS is now <span class="bold">deeply integrated</span> with Nydus
        </div>
        <a
          target="_blank"
          class="more"
          href="https://static.sched.com/hosted_files/kccncosschn21/fd/EROFS_What_Are_We_Doing_Now_For_Containers.pdf"
        >
          <span>Learn More</span>
          <img src="~/static/images/right.svg" alt="" class="rocket" />
        </a>
      </div>
    </div>
    <div class="features">
      <div
        class="item color-1"
        v-tooltip="
          `Uncompressed Seekable Metadata strictly aligned with 4KiB page-sized block boundary. ● ignorable metadata I/O amplification on modern storage devices;● More friendly to page cache reclaim & migration, low-memory scenarios.`
        "
      >
        <!-- <img src="~/static/images/erofs-1.png" alt="" class="icon" /> -->
        Uncompressed Seekable Metadata
      </div>
      <div
        class="item color-2"
        v-tooltip="
          `Light-weight (32 or 64 bytes) and flexible (can be placed anywhere according to requirements) inode metadata Light-weight inode metadata.`
        "
      >
        <!-- <img src="~/static/images/erofs-2.png" alt="" class="icon" /> -->
        Light-Weight Inode Metadata
      </div>
      <div
        class="item color-3"
        v-tooltip="`Easy to Add On-disk Payload, better extendability.`"
      >
        <!-- <img src="~/static/images/erofs-3.png" alt="" class="icon" /> -->
        Easy to Add On-Disk Payload
      </div>
      <div
        class="item color-4"
        v-tooltip="
          `All Data is Block-addressed for mmap friendly together with tail-packing inline.`
        "
      >
        <!-- <img src="~/static/images/erofs-4.png" alt="" class="icon" /> -->
        Data is Block-Addressed
      </div>
      <div
        class="item color-5"
        v-tooltip="`Random Lookup Friendly On-disk Directory Format.`"
      >
        <!-- <img src="~/static/images/erofs-5.png" alt="" class="icon" /> -->
        Random Lookup Friendly On-Disk Directory Format
      </div>
      <div
        class="item color-6"
        v-tooltip="
          `Tail-packing Inline aimed for effective space-saving (vs small blocksize or unaligned metadata alternatives).`
        "
      >
        <!-- <img src="~/static/images/erofs-6.png" alt="" class="icon" /> -->
        Tail-Packing Inline
      </div>
    </div>
  </section>
</template>

<script>
export default {
  name: "Erofs",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

.content {
  padding-top: 200px;
  .line-bg {
    top: 50px;
    transform: scaleY(-1);
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
      margin-left: 20px;
      img {
        margin-left: 8px;
      }
    }
  }
  > .desc {
    width: 540px;
    font-weight: 400;
    color: @color-highlight;
    font-size: 22px;
    @media @tablet {
      flex-direction: column;
      text-align: center;
      font-size: 18px;
      width: 100%;
    }
    .bold {
      font-weight: 600;
    }
  }
  .intro {
    margin-top: 50px;
    display: flex;
    justify-content: center;
    .wrap {
      width: fit-content;
      .title {
        font-size: 22px;
        @media @tablet {
          font-size: 18px;
        }
        .bold {
          font-weight: 600;
        }
      }
      .more {
        text-align: right;
        float: right;
        background-color: @color-link;
        padding: 8px 15px;
        border-radius: 1000px;
        display: inline-flex;
        align-items: center;
        width: fit-content;
        font-weight: 500;
        color: white;
        font-size: 13px;
        margin-top: 10px;
        @media @tablet {
          margin-left: 0;
          margin-top: 10px;
        }
        img {
          margin-left: 8px;
        }
      }
    }
  }
  .features {
    display: flex;
    flex-wrap: wrap;
    margin-top: 50px;
    justify-content: space-between;
    .item {
      border-radius: 1000px;
      position: relative;
      padding: 15px 55px;
      font-size: 18px;
      margin: 20px 0;
      @media @tablet {
        padding: 15px 15px;
        border-radius: 15px;
        margin: 10px 0;
      }
      img {
        width: 50px;
        position: absolute;
        left: 0;
        top: -20px;
      }
      &.color-1 {
        background-color: lighten(@color-tone, 10%);
      }
      &.color-2 {
        background-color: lighten(@color-tone, 5%);
      }
      &.color-3 {
        background-color: lighten(@color-tone, 0%);
      }
      &.color-4 {
        background-color: darken(@color-tone, 0%);
      }
      &.color-5 {
        background-color: darken(@color-tone, 5%);
      }
      &.color-6 {
        background-color: darken(@color-tone, 10%);
      }
    }
  }
}
</style>
