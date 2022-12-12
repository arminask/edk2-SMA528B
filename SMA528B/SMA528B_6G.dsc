[Defines]
  PLATFORM_NAME                  = SMA528B
  PLATFORM_GUID                  = 28f1a3bf-193a-47e3-a7b9-5a435eaab2ee
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010019
  OUTPUT_DIRECTORY               = Build/$(PLATFORM_NAME)
  SUPPORTED_ARCHITECTURES        = AARCH64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT
  FLASH_DEFINITION               = SMA528B/SMA528B.fdf

!include SMA528B/SMA528B.dsc

[PcdsFixedAtBuild.common]
  # System Memory (6GB)
  gArmTokenSpaceGuid.PcdSystemMemorySize|0x180000000

[LibraryClasses]
  VariableFlashInfoLib|MdeModulePkg/Library/BaseVariableFlashInfoLib/BaseVariableFlashInfoLib.inf
