<template>
  <header class="content">
    <a class="logo" href="/">
      <img src="~/static/images/logo.svg" alt="Nydus Logo" />
    </a>
    <div class="menu">
      <a href="#overview" class="selected">Overview</a>
      <a href="#design">Design</a>
      <a href="#ecosystem">Ecosystem</a>
      <a href="#cases">Cases</a>
      <a href="#community">Community</a>
      <a
        class="github"
        target="_blank"
        href="https://github.com/dragonflyoss/image-service"
        ><img src="~/static/images/github.svg" alt="Nydus Github" />Github</a
      >
    </div>
  </header>
</template>

<script>
export default {
  name: "NHeader",
};
</script>

<style lang="less" scoped>
@import "@/static/css/base";

header {
  margin-top: 40px;
  display: flex;
  align-items: center;
  justify-content: space-between;
  .logo {
    display: flex;
    align-items: center;
    img {
      width: 200px;
      @media @tablet {
        width: 150px;
      }
    }
  }
  .menu {
    display: flex;
    align-items: center;
    font-weight: bold;
    font-size: 17px;
    a {
      position: relative;
      margin-left: 30px;
      &:first-child {
        margin-left: 0;
      }
      &.selected {
        &::after {
          content: "";
          border: 5px solid @color-tone;
          position: absolute;
          left: 0;
          right: 0;
          bottom: 1px;
          z-index: -1;
        }
      }
      @media @tablet {
        display: none;
      }
      &.github {
        background-color: @color-tone;
        padding: 6px 15px;
        border: 3px solid @color-main;
        border-radius: 1000px;
        display: flex;
        align-items: center;
        img {
          margin-right: 8px;
        }
        @media @tablet {
          font-size: 14px;
        }
      }
    }
  }
}
</style>
