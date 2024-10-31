.class public Lcom/android/camera/module/impl/ImplFactory;
.super Ljava/lang/Object;


# instance fields
.field private mAdditionalProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mPersistentProtocolList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;"
        }
    .end annotation
.end field

.field private mReleased:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized detach(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "protocolList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-nez p1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/BaseProtocol;

    invoke-interface {v1}, Lcom/android/camera/protocol/BaseProtocol;->unRegisterProtocol()V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activityBase",
            "container",
            "classes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List<",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    iget-boolean p0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    array-length p0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1e

    aget-object v1, p3, v0

    const-class v2, Lcom/android/camera/protocol/protocols/ConfigChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_1
    const-class v2, Lcom/android/camera/protocol/protocols/BackStack;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p1}, Lcom/android/camera/module/impl/component/BackStackImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_2
    const-class v2, Lcom/android/camera/protocol/protocols/DualVideoRenderProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v1, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/camera/dualvideo/render/DualVideoRenderProtocolImpl;-><init>(Landroid/content/res/Resources;)V

    goto/16 :goto_1

    :cond_3
    const-class v2, Lcom/android/camera/protocol/protocols/RemoteOnlineProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p1}, Lcom/android/camera/dualvideo/remote/RemoteOnlineController;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/dualvideo/remote/RemoteOnlineController;

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    const-class v2, Lcom/android/camera/protocol/protocols/StandaloneRecorderProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v1, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;

    invoke-direct {v1}, Lcom/android/camera/dualvideo/recorder/StandaloneRecorderProtocolImpl;-><init>()V

    goto/16 :goto_1

    :cond_5
    const-class v2, Lcom/android/camera/protocol/protocols/MultiFeatureManager;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MultiFeatureManagerImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_6
    const-class v2, Lcom/android/camera/protocol/protocols/OnShineChangedProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ShineChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ShineChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_7
    const-class v2, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-static {p1}, Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ManuallyValueChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_8
    const-class v2, Lcom/android/camera/protocol/protocols/milive/MiLiveConfigChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-static {p1}, Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/MiLiveConfigChangesImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_9
    const-class v2, Lcom/android/camera/protocol/protocols/RecordState;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {p1}, Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/RecordingStateChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_a
    const-class v2, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiControl;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0o()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu2/MimojiFu2ControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/xiaomi/mimoji/mimojifu2/MimojiFu2ControlImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_b
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0O()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/xiaomi/mimoji/mimojifu/impl/MimojiFuControlImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_c
    invoke-static {p1}, Lcom/xiaomi/mimoji/mimojias/impl/MimojiAsControlImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/xiaomi/mimoji/mimojias/impl/MimojiAsControlImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_d
    const-class v2, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiVideoEditor;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {p1}, Lcom/xiaomi/mimoji/common/impl/MimojiVideoEditorImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/xiaomi/mimoji/common/impl/MimojiVideoEditorImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_e
    const-class v2, Lcom/xiaomi/mimoji/common/mvp/base/protocol/MimojiModeProtocol$MimojiStateChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-static {p1}, Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/xiaomi/mimoji/common/state/MiStateChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_f
    const-class v2, Lcom/android/camera/protocol/protocols/live/LiveConfigVV;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-static {p1}, Lcom/android/camera/module/impl/component/LiveSubVVImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/LiveSubVVImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_10
    const-class v2, Lcom/android/camera/protocol/protocols/VlogProConfigChanges;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-static {p1}, Lcom/android/camera/module/impl/component/VlogProConfigChangeImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/VlogProConfigChangeImpl;

    move-result-object v1

    goto/16 :goto_1

    :cond_11
    const-class v2, Lcom/android/camera/protocol/protocols/MiKeyEvent;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-static {p1}, Lcom/android/camera/module/impl/component/KeyEventImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiKeyEvent;

    move-result-object v1

    goto/16 :goto_1

    :cond_12
    const-class v2, Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-static {p1}, Lcom/android/camera/bluetooth/MiBluetoothHeadsetImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/protocols/MiBluetoothHeadset;

    move-result-object v1

    goto/16 :goto_1

    :cond_13
    const-class v2, Lcom/android/camera/protocol/protocols/AIWatermarkDetect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-static {}, Lcom/android/camera/module/impl/component/AIWatermarkDetectImpl;->create()Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v1

    goto/16 :goto_1

    :cond_14
    const-class v2, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-static {}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->create()Lcom/android/camera/protocol/BaseProtocol;

    move-result-object v1

    goto/16 :goto_1

    :cond_15
    const-class v2, Lcom/android/camera/protocol/protocols/FilmDreamConfig;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmDreamImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmDreamImpl;

    move-result-object v1

    goto :goto_1

    :cond_16
    const-class v2, Lcom/android/camera/protocol/protocols/FilmTimeBackflowConfig;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-static {p1}, Lcom/android/camera/module/impl/component/FilmTimeBackflowImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/FilmTimeBackflowImpl;

    move-result-object v1

    goto :goto_1

    :cond_17
    const-class v2, Lcom/android/camera/protocol/protocols/VideoCastStateProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-static {}, Lcom/android/camera/module/impl/component/VideoCastStateManager;->create()Lcom/android/camera/module/impl/component/VideoCastStateManager;

    move-result-object v1

    goto :goto_1

    :cond_18
    const-class v2, Lcom/android/camera/protocol/protocols/GalleryConnect;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-static {p1}, Lcom/android/camera/module/impl/component/GalleryConnectImpl;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/GalleryConnectImpl;

    move-result-object v1

    goto :goto_1

    :cond_19
    const-class v2, Lcom/android/camera/protocol/protocols/PresentationDisplayProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {p1}, Lcom/android/camera/fragment/PresentationDisplay;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationDisplay;

    move-result-object v1

    goto :goto_1

    :cond_1a
    const-class v2, Lcom/android/camera/protocol/protocols/DisplayGuide;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-static {p1}, Lcom/android/camera/module/impl/component/DisplayGuideImp;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/DisplayGuideImp;

    move-result-object v1

    goto :goto_1

    :cond_1b
    const-class v2, Lcom/android/camera/protocol/protocols/PresentationSelfieProtocol;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {p1}, Lcom/android/camera/fragment/PresentationSelfie;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/fragment/PresentationSelfie;

    move-result-object v1

    goto :goto_1

    :cond_1c
    const-class v2, Lcom/android/camera/protocol/MiKaraokeController;

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-static {p1}, Lcom/android/camera/module/video/KaraokeController;->create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/protocol/MiKaraokeController;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lcom/android/camera/protocol/BaseProtocol;->registerProtocol()V

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1d
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "unknown protocol type"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1e
    return-void
.end method


# virtual methods
.method public detachAdditional()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachBase()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public detachModulePersistent()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/ImplFactory;->detach(Ljava/util/List;)V

    return-void
.end method

.method public final varargs initAdditional(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityBase",
            "classes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mAdditionalProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public final varargs initBase(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityBase",
            "classes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mBaseProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public final varargs initModulePersistent(Lcom/android/camera/ActivityBase;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activityBase",
            "classes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lcom/android/camera/protocol/BaseProtocol;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mPersistentProtocolList:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/camera/module/impl/ImplFactory;->initTypes(Lcom/android/camera/ActivityBase;Ljava/util/List;[Ljava/lang/Class;)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachAdditional()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachModulePersistent()V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/ImplFactory;->detachBase()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/impl/ImplFactory;->mReleased:Z

    return-void
.end method
