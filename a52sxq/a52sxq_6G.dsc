[Defines]
  PLATFORM_NAME                  = a52sxq
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = a52sxq/a52sxq.fdf

!include a52sxq/a52sxq.dsc

[PcdsFixedAtBuild.common]
  # System Memory (6GB)
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x180000000
  # Screen Resolution
  ga52sxqTokenSpaceGuid.PcdMipiFrameBufferWidth|1080|UINT32|0x0000a401
  ga52sxqTokenSpaceGuid.PcdMipiFrameBufferHeight|2400|UINT32|0x0000a402

[LibraryClasses]
  VariableFlashInfoLib|MdeModulePkg/Library/BaseVariableFlashInfoLib/BaseVariableFlashInfoLib.inf
