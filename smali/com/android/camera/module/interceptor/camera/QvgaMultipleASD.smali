.class public Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;
.super Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor<",
        "Lcom/android/camera/features/mode/portrait/PortraitModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final BOKEH_GONE_TIP_SHOW:I = 0x0

.field private static final BOKEH_SHOW_TIP_GONE:I = 0x1

.field private static final LOW_THRESHOLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "QvgaMultipleASD"

.field private static final UP_THRESHOLD:I = 0x2


# instance fields
.field public mCapabilities:Lcom/android/camera2/CameraCapabilities;

.field private mLastLux:I

.field private mLux:I

.field private mResult:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;-><init>()V

    return-void
.end method

.method public static synthetic lambda$consumeResultOnMainThreadIfDataChanged$0(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ta"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f120173

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    return-void
.end method

.method public static synthetic lambda$consumeResultOnMainThreadIfDataChanged$1(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ta"
        }
    .end annotation

    const/16 v0, 0x8

    const v1, 0x7f120173

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    return-void
.end method

.method public static synthetic lambda$showOrHideTip$2(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ta"
        }
    .end annotation

    const/4 v0, 0x0

    const v1, 0x7f120173

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    return-void
.end method

.method public static synthetic lambda$showOrHideTip$3(Lcom/android/camera/protocol/protocols/TopAlert;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ta"
        }
    .end annotation

    const/16 v0, 0x8

    const v1, 0x7f120173

    invoke-interface {p0, v0, v1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertSubtitleHint(II)V

    return-void
.end method


# virtual methods
.method public acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/portrait/PortraitModule;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "module",
            "chain"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "cameraDevice",
            "module",
            "chain"
        }
    .end annotation

    check-cast p2, Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->acceptResult(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/portrait/PortraitModule;Lcom/android/camera/module/interceptor/base/ASDInterceptorChain;)V

    return-void
.end method

.method public consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/features/mode/portrait/PortraitModule;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->dataChanged()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {v0}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportQvgaLux(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mLux:I

    const/4 v2, 0x0

    if-lez v0, :cond_2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mLastLux:I

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->showOrHideTip(ZLcom/android/camera/features/mode/portrait/PortraitModule;)V

    goto :goto_3

    :cond_2
    :goto_1
    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1, p1}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->showOrHideTip(ZLcom/android/camera/features/mode/portrait/PortraitModule;)V

    iget p1, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mLux:I

    iput p1, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mLastLux:I

    goto :goto_3

    :cond_4
    iget p0, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mResult:I

    if-nez p0, :cond_5

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooOO0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooOO0;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_3

    :cond_5
    if-ne p0, v1, :cond_6

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooOO0O;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooOO0O;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public bridge synthetic consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/module/Module;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "module"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->consumeResultOnMainThreadIfDataChanged(Lcom/android/camera/features/mode/portrait/PortraitModule;)V

    return-void
.end method

.method public declareTags()V
    .locals 1

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->QVGA:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    sget-object v0, Lcom/android/camera2/vendortag/CaptureResultVendorTags;->QVGA_LUX:Lcom/android/camera2/vendortag/VendorTag;

    invoke-virtual {p0, v0}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->addTag(Lcom/android/camera2/vendortag/VendorTag;)Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;

    return-void
.end method

.method public getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/portrait/PortraitModule;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraDevice",
            "module"
        }
    .end annotation

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/module/Module;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "cameraDevice",
            "module"
        }
    .end annotation

    check-cast p2, Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->getInTimeCondition(Lcom/android/camera2/Camera2Proxy;Lcom/android/camera/features/mode/portrait/PortraitModule;)Z

    move-result p0

    return p0
.end method

.method public getSampleTime()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getScope()I
    .locals 0

    const/4 p0, 0x6

    return p0
.end method

.method public getTAG()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    const-string p0, "QvgaMultipleASD"

    return-object p0
.end method

.method public initAndGetPriorCondition(Lcom/android/camera/features/mode/portrait/PortraitModule;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "module",
            "capabilities"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mCapabilities:Lcom/android/camera2/CameraCapabilities;

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00O0o()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic initAndGetPriorCondition(Lcom/android/camera/module/Module;Lcom/android/camera2/CameraCapabilities;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "module",
            "capabilities"
        }
    .end annotation

    check-cast p1, Lcom/android/camera/features/mode/portrait/PortraitModule;

    invoke-virtual {p0, p1, p2}, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->initAndGetPriorCondition(Lcom/android/camera/features/mode/portrait/PortraitModule;Lcom/android/camera2/CameraCapabilities;)Z

    move-result p0

    return p0
.end method

.method public moveOnMainThread()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public showOrHideTip(ZLcom/android/camera/features/mode/portrait/PortraitModule;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportQvgaLux"
        type = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isWeakLight",
            "module"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooO0o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooO0o;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/camera/features/mode/portrait/PortraitModule;->updatePortraitSingleBokeh(Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object p1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00oO/OooO0O0/OooO;

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    invoke-virtual {p2, p0}, Lcom/android/camera/features/mode/portrait/PortraitModule;->updatePortraitSingleBokeh(Z)V

    :goto_0
    return-void
.end method

.method public tagValueAutomaticParsed()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mResult:I

    const/16 v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/interceptor/base/MultipleASDInterceptor;->getTagValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/camera/module/interceptor/camera/QvgaMultipleASD;->mLux:I

    return-void
.end method
