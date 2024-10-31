.class public Lcom/android/camera/display/device/FlatSelfieManager;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATION_DURATION_5S:I = 0x1388

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_REVERSE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "FlatSelfieManager"

.field private static sInstance:Lcom/android/camera/display/device/FlatSelfieManager;


# instance fields
.field private disposable:Lio/reactivex/disposables/Disposable;

.field private isDisplayCanceled:Z

.field private mBokehStateIdle:Z

.field private mBokehStateReverse:Z

.field private mOrientation:I

.field private mState:I

.field private mTipPresentation:Lcom/android/camera/fragment/TipPresentation;

.field private onStopFromSwitch:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    return-void
.end method

.method public static getInstance()Lcom/android/camera/display/device/FlatSelfieManager;
    .locals 1

    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/display/device/FlatSelfieManager;

    invoke-direct {v0}, Lcom/android/camera/display/device/FlatSelfieManager;-><init>()V

    sput-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    :cond_0
    sget-object v0, Lcom/android/camera/display/device/FlatSelfieManager;->sInstance:Lcom/android/camera/display/device/FlatSelfieManager;

    return-object v0
.end method

.method public static synthetic lambda$cancelDisplayWhenStopped$3(Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ps"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->cancelFlatSelfiePresentation()V

    return-void
.end method

.method public static synthetic lambda$cancelFlatSelfiePresentation$4(Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ps"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->cancelFlatSelfiePresentation()V

    return-void
.end method

.method public static synthetic lambda$interruptSwitch$2(Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "ps"
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->cancelFlatSelfiePresentation()V

    return-void
.end method

.method public static synthetic lambda$switchDisplay$0(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aLong"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public static synthetic lambda$switchDisplay$1(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aLong"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p0, 0x0

    invoke-static {p0}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    return-void
.end method


# virtual methods
.method public cancelDisplayWhenStopped()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDisplayWhenStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onStopped "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDisplayCanceled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FlatSelfieManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/display/device/FlatSelfieManager;->isFrontCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    :cond_1
    return-void
.end method

.method public cancelFlatSelfiePresentation()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->impl()Ljava/util/Optional;

    move-result-object p0

    sget-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0O0;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0O0;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public getBokehStateIdle()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    return p0
.end method

.method public getBokehStateReverse()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    return p0
.end method

.method public getOrientation()I
    .locals 0

    iget p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mOrientation:I

    return p0
.end method

.method public getState()I
    .locals 0

    iget p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    return p0
.end method

.method public getTipPresentation()Lcom/android/camera/fragment/TipPresentation;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mTipPresentation:Lcom/android/camera/fragment/TipPresentation;

    return-object p0
.end method

.method public init()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FlatSelfieManager"

    const-string v3, "init"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/display/Display;->getDisplaySelfieState()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    :goto_0
    return-void
.end method

.method public interruptSwitch()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interruptSwitch from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FlatSelfieManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;->impl()Ljava/util/Optional;

    move-result-object v0

    sget-object v2, LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO00o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO00o;

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    iget v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    iput v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/android/camera/display/Display;->switchPresentationDisplay(Z)V

    iput v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    iput-boolean v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interruptSwitch to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isFrontCamera()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public resetState()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetState from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FlatSelfieManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->notifyFlatSelfieOnFolded()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetState to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public reverseState()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reverseState from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FlatSelfieManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    iput-boolean v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/ConfigChanges;->notifyFlatSelfieOnFolded()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reverseState to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setBokehStateIdle(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBokehStateIdle"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateIdle:Z

    return-void
.end method

.method public setBokehStateReverse(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mBokehStateReverse"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mBokehStateReverse:Z

    return-void
.end method

.method public setOrientation(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOrientation"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mOrientation:I

    return-void
.end method

.method public setTipPresentation(Lcom/android/camera/fragment/TipPresentation;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tipPresentation"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mTipPresentation:Lcom/android/camera/fragment/TipPresentation;

    return-void
.end method

.method public switchDisplay()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchDisplay from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v1}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "FlatSelfieManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isESPDisplayOn()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->setESPSDisplaywitch(Z)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->impl2()Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;->hide()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_1
    iget v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    const-wide/16 v4, 0x1388

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x6

    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    iput-boolean v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->isDisplayCanceled:Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v4, LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0o;

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    iput v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/android/camera/display/Display;->switchDisplayForFlatSelfie(I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v6

    invoke-static {v4, v5, v0, v6}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    sget-object v4, LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0OO;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OOO/OooO00o/OooO0OO;

    invoke-virtual {v0, v4}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/display/device/FlatSelfieManager;->disposable:Lio/reactivex/disposables/Disposable;

    iput v1, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/global/ComponentModuleList;->reInit(Z)V

    iput-boolean v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->onStopFromSwitch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "switchDisplay to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/camera/display/device/FlatSelfieManager;->mState:I

    invoke-virtual {p0, v2}, Lcom/android/camera/display/device/FlatSelfieManager;->translate(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public translate(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    const-string/jumbo p0, "selfie"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "normal"

    :goto_0
    return-object p0
.end method
