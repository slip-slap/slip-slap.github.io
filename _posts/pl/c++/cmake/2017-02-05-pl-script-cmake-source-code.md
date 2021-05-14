---
layout: post
title: "CMake: Source Code"
keywords: []
description: 
category: "PL"
tags: ["cmake","script"]
---

#### The entry 
1. The entry point to cmake is under the cmakemain.cxx

```cpp
int main(int ac, char const* const* av)
{
  cmSystemTools::EnsureStdPipes();

  // Replace streambuf so we can output Unicode to console
  auto consoleBuf = cm::make_unique<cmConsoleBuf>();
  consoleBuf->SetUTF8Pipes();

  cmsys::Encoding::CommandLineArguments args =
    cmsys::Encoding::CommandLineArguments::Main(ac, av);
  ac = args.argc();
  av = args.argv();

  cmSystemTools::InitializeLibUV();
  cmSystemTools::FindCMakeResources(av[0]);
  if (ac > 1) {
    if (strcmp(av[1], "--build") == 0) {
      return do_build(ac, av);
    }
    if (strcmp(av[1], "--install") == 0) {
      return do_install(ac, av);
    }
    if (strcmp(av[1], "--open") == 0) {
      return do_open(ac, av);
    }
    if (strcmp(av[1], "-E") == 0) {
      return do_command(ac, av, std::move(consoleBuf));
    }
  }
  int ret = do_cmake(ac, av);
#ifndef CMAKE_BOOTSTRAP
  cmDynamicLoader::FlushCache();
#endif
  if (uv_loop_t* loop = uv_default_loop()) {
    uv_loop_close(loop);
  }
  return ret;
}
```




#### Reference
1. [cmake source code](https://github.com/Kitware/CMake)
2. [cmake developer help documentation](https://github.com/Kitware/CMake/tree/master/Help/dev)



