.class public LCompile/HolyBear;
.super Ljava/lang/Object;


# direct methods
.method public static shouldEnableCvLens(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_cvlens"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableDolby(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_dolby"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableEIS(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_eis"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableGooglePhotos(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_googlephotos"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableHDR10(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_hdr10"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableHDR10Plus(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_hdr10plus"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableHDR10Pro(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_hdr10pro"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableOriginalCvFilter(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_originalcvfilter"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static shouldEnableSpeechShutter(I)Z
    .locals 2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    const v1, 0x7f05005b

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getBool(I)Z

    move-result v1

    const-string/jumbo p0, "pref_speech"

    invoke-virtual {v0, p0, v1}, Lcom/android/camera/data/data/DataItemBase;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
