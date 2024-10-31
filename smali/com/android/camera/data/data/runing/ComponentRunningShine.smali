.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_AMBIENT_LIGHT:Ljava/lang/String; = "15"

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_FRONT_MAKEUPS:Ljava/lang/String; = "12"

.field public static final SHINE_FRONT_MAKEUPS_2:Ljava/lang/String; = "13"

.field public static final SHINE_FRONT_SUPER_NIGHT_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_KALEIDOSCOPE:Ljava/lang/String; = "10"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "9"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_PORTRAIT:Ljava/lang/String; = "14"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_MODEL_TRUESIGHT:Ljava/lang/String; = "5"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "8"

.field private static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field private isFrontCamera:Z

.field private mBeautyData:Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mCurrentMode:I

.field private mCurrentStatus:Z

.field private mCurrentType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mDefaultType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mIsCompare:Z

.field private mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShineEntry:I
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;
    .end annotation
.end field

.field private mSupportBeautyBody:Z

.field private mSupportBeautyLevel:Z

.field private mSupportBeautyMakeUp:Z

.field private mSupportBeautyMiLive:Z

.field private mSupportBeautyMode:Z

.field private mSupportBeautyModel:Z

.field private mSupportFrontAmbientLighting:Z

.field private mSupportFrontMakeups:Z

.field private mSupportFrontMakeups2:Z

.field private mSupportFrontNightBeauty:Z

.field private mSupportHalVideoFilter:Z

.field private mSupportPortraitBeautyItem:Z

.field private mSupportShineCompare:Z

.field private mSupportSmoothLevel:Z

.field private mSupportVideoBeautyItem:Z

.field private mSupportVideoBokehColorRetention:Z

.field private mTargetShow:Z

.field private mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataItemRunning"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateAmbientLightingItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAmbientLighting"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120699

    const-string v3, "15"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "!isSmoothDependBeautyVersion"
        type = 0x2
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000o()Z

    move-result p0

    const-string v0, "1"

    const v1, 0x7f0802de

    const v2, 0x7f0802dd

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120207

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v3, 0x7f120204

    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyBody"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f120204

    goto :goto_0

    :cond_0
    const p1, 0x7f1201fa

    :goto_0
    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const-string v2, "6"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080531

    const v1, 0x7f080535

    const v2, 0x7f1206e3

    const-string v3, "7"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFrontSuperNightBeauty"
        type = 0x0
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    const-string v3, "11"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "needShowKaleidoscope"
        type = 0x0
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08065b

    const v1, 0x7f12048a

    const-string v2, "10"

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups2"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120209

    const-string v3, "13"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120209

    const-string v3, "12"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportShortVideoBeauty"
        type = 0x0
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    const-string v3, "9"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "p"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0000o()Z

    move-result p0

    const v0, 0x7f0802de

    const v1, 0x7f0802dd

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f120208

    const-string v2, "3"

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-static {p1}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f120204

    goto :goto_0

    :cond_1
    const p1, 0x7f120206

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0O0o()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "11"

    goto :goto_1

    :cond_2
    const-string v2, "4"

    :goto_1
    invoke-direct {p0, v1, v0, p1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generatePortraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPortraitBeautyItem"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    const-string v3, "14"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSmoothDependBeautyVersion"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    const-string v3, "2"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isBeautyTrueSightAlgo"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    const-string v3, "5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBokehAdjust"
        type = 0x2
    .end annotation

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120459

    const-string v3, "8"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHalJsonBeautyItem"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->updateBeautyData(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyData:Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    invoke-virtual {v0}, Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;->isSingleSmoothSlider()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "newJsonBeautyItem singleSmoothSlider, scene : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "ComponentRunningShine"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802dd

    const v1, 0x7f0802de

    const v2, 0x7f120204

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(IZ)Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v10, "15"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v9, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string v10, "14"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v9, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v10, "11"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v9, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v10, "10"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v9, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v10, "9"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v9, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v10, "8"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_1

    :cond_9
    const/4 v9, 0x7

    goto :goto_1

    :sswitch_6
    const-string v10, "7"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x6

    goto :goto_1

    :sswitch_7
    const-string v10, "6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto :goto_1

    :cond_b
    const/4 v9, 0x5

    goto :goto_1

    :sswitch_8
    const-string v10, "5"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto :goto_1

    :cond_c
    const/4 v9, 0x4

    goto :goto_1

    :sswitch_9
    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto :goto_1

    :cond_d
    const/4 v9, 0x3

    goto :goto_1

    :sswitch_a
    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_1

    :cond_e
    const/4 v9, 0x2

    goto :goto_1

    :sswitch_b
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto :goto_1

    :cond_f
    move v9, v8

    goto :goto_1

    :sswitch_c
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto :goto_1

    :cond_10
    move v9, v1

    :goto_1
    packed-switch v9, :pswitch_data_0

    invoke-static {v7}, Lcom/android/camera/fragment/beauty/BeautyJsonData;->isNeedHalJsonsScene(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSkinColorOpen()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_3

    :pswitch_0
    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v6

    goto/16 :goto_0

    :pswitch_1
    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoBokenOn()Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v8

    goto/16 :goto_0

    :pswitch_2
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v7, :cond_2

    :goto_2
    move v4, v8

    goto/16 :goto_0

    :cond_11
    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v7, v9, :cond_2

    if-lez v7, :cond_2

    goto :goto_2

    :pswitch_3
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_4
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {}, Lcom/android/camera/CameraSettings;->isSkinColorOpen()Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_3

    :cond_12
    move v8, v1

    :cond_13
    :goto_3
    move v3, v8

    goto/16 :goto_0

    :cond_14
    if-nez v0, :cond_15

    if-nez v3, :cond_15

    if-nez v4, :cond_15

    if-nez v5, :cond_15

    if-eqz v6, :cond_16

    :cond_15
    move v1, v8

    :cond_16
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto :goto_5

    :cond_17
    :goto_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    :goto_5
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x31 -> :sswitch_c
        0x32 -> :sswitch_b
        0x33 -> :sswitch_a
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x36 -> :sswitch_7
        0x37 -> :sswitch_6
        0x38 -> :sswitch_5
        0x39 -> :sswitch_4
        0x61f -> :sswitch_3
        0x620 -> :sswitch_2
        0x623 -> :sswitch_1
        0x624 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public getActualItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustPro(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getVideoBokehItem()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getCapabilities()Lcom/android/camera2/CameraCapabilities;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    return-object p0
.end method

.method public getCurrentMode()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    return p0
.end method

.method public getCurrentStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentMode"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getHalJsonBeautyData()Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHalJsonBeautyItem"
        type = 0x2
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyData:Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    return-object p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopConfigEntryDesRes()I
    .locals 1
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f120029

    return p0

    :cond_0
    const p0, 0x7f120064

    return p0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newMode"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const p0, 0x7f0805b1

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x7f080535

    goto :goto_0

    :cond_1
    const p0, 0x7f080531

    :goto_0
    return p0
.end method

.method public getTopConfigEntryShadowRes(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "entryRes"
        }
    .end annotation

    const p0, 0x7f0805b1

    if-ne p1, p0, :cond_0

    return p0

    :cond_0
    const p0, 0x7f080531

    if-eq p1, p0, :cond_3

    const v0, 0x7f080535

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const p0, 0x7f0805eb

    if-ne p1, p0, :cond_2

    return p0

    :cond_2
    const/4 p0, -0x1

    :cond_3
    :goto_0
    return p0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object p0
.end method

.method public getVideoBokehItem()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBokehAdjustPro"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return p0
.end method

.method public isCurrentBeautyModeType()Z
    .locals 3
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyMode"
        type = 0x0
    .end annotation

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0OO/o00Ooo;->OooO00o:LOooO0OO/OooO0O0/OooO00o/o00O0OO/OooO00o/OooO0OO/o00Ooo;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/camera/fragment/beauty/BeautyJsonData;->isHalJsonBeautyModeScene(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    const-string v2, "4"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    const-string v0, "5"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public isFcNoneBeautyModeTsBeauty()Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNoneBeautyModeTsVersion"
        type = 0x2
    .end annotation

    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    const/16 v1, 0xa3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {p0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isNoneBeautyModeTsVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShineComparing()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyCompare"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return p0
.end method

.method public isTargetShow()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return p0
.end method

.method public isTopFilterEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVideoShineForceOn(IZ)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "isFrontCamera"
        }
    .end annotation

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    const-string p2, "front"

    goto :goto_0

    :cond_1
    const-string p2, "back"

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "cameraId",
            "p",
            "isNormalIntent"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInitData()V

    iput-object p3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    iput p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentMode:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyData:Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBeautyItem:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    const/16 v2, 0xa7

    const/4 v3, 0x3

    if-eq p1, v2, :cond_4a

    const/16 v2, 0xa9

    if-eq p1, v2, :cond_47

    const/16 v2, 0xab

    const/4 v4, 0x4

    if-eq p1, v2, :cond_3c

    const/16 v2, 0xad

    if-eq p1, v2, :cond_3a

    const/16 v2, 0xb4

    if-eq p1, v2, :cond_38

    const/16 v2, 0xaf

    if-eq p1, v2, :cond_37

    const/16 v2, 0xb0

    if-eq p1, v2, :cond_33

    const/16 p2, 0xb7

    const-string v2, "7"

    if-eq p1, p2, :cond_27

    const/16 p2, 0xb8

    if-eq p1, p2, :cond_26

    const/16 p2, 0xcc

    if-eq p1, p2, :cond_1e

    const/16 p2, 0xcd

    if-eq p1, p2, :cond_b

    const/16 v5, 0xda

    if-eq p1, v5, :cond_8

    const/16 v5, 0xdb

    if-eq p1, v5, :cond_8

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_6

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_3

    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o0O()Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o0O()Z

    move-result p1

    if-eqz p1, :cond_2

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_4

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000oo()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0oO()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_8
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0o0o()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_14

    :cond_9
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p2, :cond_a

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "FrontVlog"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_3

    :cond_a
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_3
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_b
    :pswitch_1
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-nez p4, :cond_c

    sget-boolean p4, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOoo0:Z

    if-nez p4, :cond_c

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v3

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-boolean p4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    const/16 v3, 0xa3

    if-nez p4, :cond_10

    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o000o()Z

    move-result p2

    if-nez p2, :cond_d

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0O0()Z

    move-result p2

    if-eqz p2, :cond_e

    :cond_d
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    :cond_e
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00()Z

    move-result p2

    if-eqz p2, :cond_f

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_f
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1c

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o000o()Z

    move-result p2

    if-eqz p2, :cond_1c

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_8

    :cond_10
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p4

    invoke-virtual {p4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOo0O()Z

    move-result p4

    if-eqz p4, :cond_1c

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p4

    invoke-virtual {p4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0OOo()Z

    move-result p4

    if-nez p4, :cond_1b

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    if-ne p1, v3, :cond_11

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p4

    invoke-virtual {p4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00o()Z

    move-result p4

    if-eqz p4, :cond_11

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    :cond_11
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_15

    iget-boolean p4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    if-eqz p4, :cond_13

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const-string p4, "female"

    invoke-static {p4}, Lcom/android/camera/CameraSettings;->isUseNewBeautyMode(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_12

    const-string p4, "FrontClassicalCapture"

    invoke-direct {p0, p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    goto :goto_4

    :cond_12
    const-string p4, "FrontTextureCapture"

    invoke-direct {p0, p4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    :goto_4
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_13
    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p1, p2, :cond_14

    const-string p2, "FrontAIWatermark"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_5

    :cond_14
    const-string p2, "FrontCapture"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_5
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_15
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p4

    if-eqz p4, :cond_17

    iget-object p4, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne p1, p2, :cond_16

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_6

    :cond_16
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateTsBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_6
    invoke-interface {p4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_17
    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_7
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportBeautyMakeup(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_18

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    :cond_18
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_19

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeupsItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    :cond_19
    if-ne p1, v3, :cond_1a

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00O0()Z

    move-result p2

    if-eqz p2, :cond_1a

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    :cond_1a
    if-ne p1, v3, :cond_1c

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportMakeups2(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMakeups2Item()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    goto :goto_8

    :cond_1b
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_1c

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    :goto_8
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p2

    invoke-virtual {p2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0O0()Z

    move-result p2

    if-eqz p2, :cond_1d

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1d
    iget-boolean p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p2, :cond_4c

    if-ne p1, v3, :cond_4c

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAmbientLighting(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateAmbientLightingItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontAmbientLighting:Z

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_14

    :cond_1e
    :pswitch_2
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBeauty(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_21

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0o00O()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_1f

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_1f

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBeautyItem:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    const-string p2, "FrontRecordVideo"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_20

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_20
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_9
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_23

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_22

    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    :cond_22
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjustPro(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_24

    if-eqz p4, :cond_24

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehAdjust(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_24
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoBokehColorRetention(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_25

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    :cond_25
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v1, :cond_4c

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_14

    :cond_26
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_14

    :cond_27
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o00()Z

    move-result p1

    if-eqz p1, :cond_32

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_28

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_28
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_a
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_2b

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_29

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00()Z

    move-result p1

    if-eqz p1, :cond_32

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_29
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00()Z

    move-result p1

    if-eqz p1, :cond_2a

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0, p3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem(Lcom/android/camera2/CameraCapabilities;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_2a
    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d

    :cond_2b
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0O0o()Z

    move-result p1

    if-eqz p1, :cond_2c

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_d

    :cond_2c
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    const-string p2, "FrontShortVideo"

    if-nez p1, :cond_2f

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0OOo()Z

    move-result p1

    if-nez p1, :cond_2e

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o0O()Z

    move-result p1

    if-eqz p1, :cond_2e

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_2d

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_b

    :cond_2d
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_b
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2f
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0OOo()Z

    move-result p1

    if-nez p1, :cond_31

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o0O()Z

    move-result p1

    if-eqz p1, :cond_31

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p3

    if-eqz p3, :cond_30

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_c

    :cond_30
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_c
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_31
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_32
    :goto_d
    iput-object v2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance p2, Lcom/android/camera/data/data/ComponentDataItem;

    const p3, 0x7f080531

    const p4, 0x7f080535

    const v1, 0x7f1206e3

    invoke-direct {p2, p3, p4, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO0oO()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_33
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyTrueSightAlgo(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_36

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O0oo0O()Z

    move-result p1

    if-nez p1, :cond_34

    goto :goto_e

    :cond_34
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-nez p1, :cond_35

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_35
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_36
    :goto_e
    iput p2, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_14

    :cond_37
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0ooo()Z

    move-result p1

    if-eqz p1, :cond_4c

    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_38
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_39

    goto/16 :goto_14

    :cond_39
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    goto/16 :goto_14

    :cond_3a
    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz p1, :cond_4c

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOoo0()Z

    move-result p1

    if-eqz p1, :cond_4c

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3b

    const-string p2, "FrontSuperNight"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_f

    :cond_3b
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFrontSuperNightBeauty()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_f
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_14

    :cond_3c
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00o0()Z

    move-result p1

    if-eqz p1, :cond_45

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_3f

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00Oo()Z

    move-result p1

    if-eqz p1, :cond_44

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_3e

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_3d

    const-string p2, "RearPortrait"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_10

    :cond_3d
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_10
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    :cond_3e
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    goto :goto_13

    :cond_3f
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o00O0()Z

    move-result p1

    if-eqz p1, :cond_40

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    :cond_40
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportPortraitBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_42

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->supportHalJsonBeautyItem(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p2

    if-eqz p2, :cond_41

    const-string p2, "FrontPortrait"

    invoke-direct {p0, p2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->newJsonBeautyItem(Ljava/lang/String;)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    goto :goto_11

    :cond_41
    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generatePortraitBeautyItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    :goto_11
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_42
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSmoothDependBeautyVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_43

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    goto :goto_12

    :cond_43
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    :goto_12
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    :cond_44
    :goto_13
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isBeautyModeTextureVersion(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_45

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    :cond_45
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-nez p1, :cond_46

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0oo()Z

    move-result p1

    if-eqz p1, :cond_4c

    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_46
    iput v4, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_47
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoMasterFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_48

    goto :goto_14

    :cond_48
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOo()Z

    move-result p1

    if-nez p1, :cond_49

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oO0()Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_14

    :cond_49
    invoke-static {p3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportVideoFilter(Lcom/android/camera2/CameraCapabilities;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    goto :goto_14

    :cond_4a
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oo000()Z

    move-result p1

    if-nez p1, :cond_4b

    goto :goto_14

    :cond_4b
    iput v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    :goto_14
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4d

    iget-object p1, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object p1, p1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    :cond_4d
    iget-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public reInitData()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public setClosed(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "close"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setShineComparation(Z)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyCompare"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compared"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsCompare:Z

    return-void
.end method

.method public setTargetShow(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTargetShow:Z

    return-void
.end method

.method public setVideoShineForceOn(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentMode",
            "status"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setVideoShineForceOn, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/camera/Util;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "ComponentRunningShine"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyBody"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return p0
.end method

.method public supportBeautyLevel()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportOldFaceBeauty"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return p0
.end method

.method public supportBeautyMakeUp()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyMakeup"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return p0
.end method

.method public supportBeautyMiLive()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportShortVideoBeauty"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return p0
.end method

.method public supportBeautyMode()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyMode"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMode:Z

    const/4 p0, 0x1

    return p0
.end method

.method public supportBeautyModel()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSmoothDependBeautyVersion"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return p0
.end method

.method public supportFrontAmbientLighting()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAmbientLighting"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontAmbientLighting:Z

    return p0
.end method

.method public supportFrontMakeups()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups:Z

    return p0
.end method

.method public supportFrontMakeups2()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMakeups2"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontMakeups2:Z

    return p0
.end method

.method public supportFrontNightBeauty()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFrontSuperNightBeauty"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportFrontNightBeauty:Z

    return p0
.end method

.method public supportPopUpEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public supportPortraitBeautyItem()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportPortraitBeautyItem"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportPortraitBeautyItem:Z

    return p0
.end method

.method public supportShineCompare()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportBeautyCompare"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportShineCompare:Z

    return p0
.end method

.method public supportSmoothLevel()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSmoothDependBeautyVersion"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return p0
.end method

.method public supportVideoBeautyItem()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBeautyItem"
        type = 0x0
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBeautyItem:Z

    return p0
.end method

.method public supportVideoBokehColorRetention()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoBokehColorRetention"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportVideoBokehColorRetention:Z

    return p0
.end method

.method public supportVideoFilter()Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportVideoFilter"
        type = 0x2
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    return p0
.end method

.method public updateBeautyData(Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportHalJsonBeautyItem"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0, p1}, Lcom/android/camera/fragment/beauty/BeautyJsonData;->getHalJsonBeautyData(Lcom/android/camera2/CameraCapabilities;Ljava/lang/String;)Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyData:Lcom/android/camera/fragment/beauty/BeautyJsonData$BeautyData;

    return-void
.end method
