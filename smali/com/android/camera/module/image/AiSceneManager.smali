.class public Lcom/android/camera/module/image/AiSceneManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AiSceneManager"


# instance fields
.field private volatile isResetFromMutex:Z

.field public mAiSceneEnabled:Z

.field private mCurrentAiScene:I

.field public mHasAiSceneFilterEffect:Z

.field private mModule:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/camera/module/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/module/Module;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "module"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/module/image/AiSceneManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    return p1
.end method

.method private synthetic lambda$resetAiSceneInDocumentModeOn$0()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/module/image/AiSceneManager;->consumeAiSceneResult(IZ)V

    iput-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    return-void
.end method

.method private realConsumeAiSceneResult(IZ)V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "isReset"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;->setCvStyleEffect(I)V

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v1

    if-ne v1, p1, :cond_2

    if-eqz p1, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/camera/protocol/protocols/TopAlert;->getCurrentAiSceneLevel()I

    move-result v1

    if-ne v1, p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->isDoingAction()Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleState()Lcom/android/camera/module/common/BaseModuleStateManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/BaseModuleStateManagerInterface;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getActivity()Lcom/android/camera/Camera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->isActivityPaused()Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    if-eqz p2, :cond_4

    iget-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const/4 v1, 0x0

    if-nez p2, :cond_5

    iput-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "consumeAiSceneResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; isReset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "AiSceneManager"

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v2

    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v4

    const/16 v5, 0x19

    const/4 v6, 0x1

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    if-ne p1, v5, :cond_7

    move v7, v6

    goto :goto_0

    :cond_7
    move v7, v1

    :goto_0
    invoke-virtual {v4, v7}, Lcom/android/camera2/CameraConfigManager;->setCameraAI30(Z)V

    :cond_8
    const/4 v4, 0x6

    const-string v7, "e"

    if-eq p1, v6, :cond_16

    const/16 v8, 0xa

    if-eq p1, v8, :cond_13

    const/16 v8, 0xf

    if-eq p1, v8, :cond_11

    const/16 v8, 0x13

    if-eq p1, v8, :cond_11

    const/4 v4, 0x3

    if-eq p1, v4, :cond_18

    const/4 v4, 0x4

    if-eq p1, v4, :cond_10

    const/4 v4, 0x7

    if-eq p1, v4, :cond_f

    const/16 v4, 0x8

    if-eq p1, v4, :cond_f

    const/16 v4, 0x22

    if-eq p1, v4, :cond_d

    const/16 v4, 0x23

    if-eq p1, v4, :cond_e

    const/16 v4, 0x25

    if-eq p1, v4, :cond_d

    const/16 v4, 0x26

    if-eq p1, v4, :cond_c

    packed-switch p1, :pswitch_data_0

    iget-object v4, v0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {v4}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRPreference()V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object v3

    sget-object v4, Lcom/android/camera/constant/UpdateConstant;->AI_SCENE_CONFIG:[I

    invoke-interface {v3, v4}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOoO()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    new-array v3, v6, [I

    const/16 v4, 0xb

    aput v4, v3, v1

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p1

    sget-object v3, Lcom/android/camera/constant/UpdateConstant;->AI_SCENE_CONFIG:[I

    invoke-interface {p1, v3}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_a
    move p1, v1

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-static {p2}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result p2

    if-eqz p2, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    const/16 v4, 0xab

    if-eq p2, v4, :cond_b

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-direct {p0, p2, v5}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    invoke-interface {v2, v5}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    invoke-virtual {p0, v5}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    iget-object p0, v0, Lcom/android/camera/module/Camera2Module;->mHdrManager:Lcom/android/camera/module/image/hdr/HDRManager;

    invoke-virtual {p0}, Lcom/android/camera/module/image/hdr/HDRManager;->updateHDRPreference()V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v1, [I

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    return-void

    :cond_c
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getAIWatermarkEnable(I)Z

    move-result v3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oo0oO()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->isNormalIntent()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-ne v4, v5, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->isMacroModeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_a

    if-nez v3, :cond_a

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    invoke-interface {v2, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    return-void

    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    :cond_e
    move v3, v1

    goto/16 :goto_2

    :cond_f
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_10
    invoke-static {}, Lcom/android/camera/CameraSettings;->getContrast()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera2/CameraConfigManager;->setContrast(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    new-array v3, v6, [I

    const/16 v4, 0x1e

    aput v4, v3, v1

    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->updatePreferenceTrampoline([I)V

    goto/16 :goto_1

    :cond_11
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v4, :cond_12

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v4

    xor-int/2addr v4, v6

    add-int/2addr v5, v4

    :cond_12
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera2/CameraConfigManager;->setSharpness(I)V

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    goto :goto_1

    :cond_13
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v5

    invoke-virtual {v5}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OoOO00()Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "3"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    :cond_14
    new-array v4, v6, [I

    const/16 v5, 0xc1

    aput v5, v4, v1

    invoke-interface {v3, v7, v4}, Lcom/android/camera/protocol/protocols/ConfigChanges;->closeMutexElement(Ljava/lang/String;[I)V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Lcom/android/camera/module/BaseModule;->setFlashMode(Ljava/lang/String;)V

    :cond_15
    invoke-virtual {v0, v6}, Lcom/android/camera/module/Camera2Module;->updateMfnr(Z)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->updateOIS()V

    goto :goto_1

    :cond_16
    invoke-static {}, Lcom/android/camera/CameraSettings;->getSharpness()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-ge v5, v4, :cond_17

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v4

    xor-int/2addr v4, v6

    add-int/2addr v5, v4

    :cond_17
    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    invoke-interface {v3, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->restoreAllMutexElement(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/camera2/CameraConfigManager;->setSharpness(I)V

    :cond_18
    :goto_1
    move v3, v6

    :goto_2
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->getAiSceneOpen(I)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    invoke-direct {p0, v4, p1}, Lcom/android/camera/module/image/AiSceneManager;->trackAISceneChanged(II)V

    invoke-interface {v2, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->setAiSceneImageLevel(I)V

    if-eqz v3, :cond_19

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    :cond_19
    if-nez p2, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/camera/module/image/AiSceneManager;->setCurrentAiScene(I)V

    :cond_1a
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, v6, [I

    const/16 p2, 0xd

    aput p2, p1, v1

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_1b
    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x19
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private trackAISceneChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cameraMode",
            "scene"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/module/Module;

    invoke-interface {p0}, Lcom/android/camera/module/Module;->getActivity()Lcom/android/camera/Camera;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/camera/statistic/CameraStatUtils;->trackAISceneChanged(IILandroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/image/AiSceneManager;->lambda$resetAiSceneInDocumentModeOn$0()V

    return-void
.end method

.method public consumeAiSceneResult(IZ)V
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "newResult",
            "isReset"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/camera/module/image/AiSceneManager;->realConsumeAiSceneResult(IZ)V

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result p0

    const/16 p1, 0x23

    const/4 p2, 0x0

    if-eq p0, p1, :cond_1

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/camera2/CameraConfigManager;->setASDScene(I)V

    :cond_1
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    new-array p1, p2, [I

    invoke-interface {p0, p1}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceInWorkThread([I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public getCurrentAiScene()I
    .locals 0

    iget p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    return p0
.end method

.method public resetAiSceneInDocumentModeOn()V
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooO0OO;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O00o0/OooO0OO;-><init>(Lcom/android/camera/module/image/AiSceneManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_2
    :goto_0
    return-void
.end method

.method public resetAiSceneInHdrOrFlashOn()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/module/image/AiSceneManager;->isResetFromMutex:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    new-instance v1, Lcom/android/camera/module/image/AiSceneManager$1;

    invoke-direct {v1, p0}, Lcom/android/camera/module/image/AiSceneManager$1;-><init>(Lcom/android/camera/module/image/AiSceneManager;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_1
    :goto_0
    return-void
.end method

.method public setAiSceneEffect(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAiSceneEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "AiSceneManager"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OOOOO()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/camera/CameraSettings;->isBackCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x19

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "supportAi30: AI 3.0 back camera in HUMAN SCENE not apply filter! reset AiSceneEffect! "

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "setAiSceneEffect: front camera nonsupport!"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v2

    const/16 v4, 0xab

    if-ne v2, v4, :cond_3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O000oo()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "setAiSceneEffect: portrait mode nonsupport!"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/camera/CameraSettings;->getPortraitLightingPattern()I

    move-result v2

    if-eqz v2, :cond_4

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "setAiSceneEffect: scene = 0 but portrait lighting is on..."

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_4
    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/effect/FilterInfo;->getCategory(I)I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_5

    sget v4, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v2, v4, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/android/camera/CameraSettings;->isProColorEnable()Z

    move-result v2

    if-eqz v2, :cond_6

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "ProColor is enable, disable AI filter"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_6
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/camera/effect/EffectController;->getFilterInfo(I)Ljava/util/ArrayList;

    move-result-object v2

    if-ltz p1, :cond_d

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt p1, v4, :cond_7

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/EffectController;->getAiColorCorrectionVersion()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    goto :goto_0

    :cond_8
    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    iget-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v3, :cond_9

    if-nez p1, :cond_9

    sget-object p1, Lcom/android/camera/effect/render/FilterType;->A_COMMON:Lcom/android/camera/effect/render/FilterType;

    invoke-static {p1}, Lcom/android/camera/effect/EffectController;->createAiSceneEffectId(Lcom/android/camera/effect/render/FilterType;)I

    move-result p1

    goto :goto_0

    :cond_9
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    goto :goto_0

    :cond_a
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/effect/FilterInfo;

    invoke-virtual {p1}, Lcom/android/camera/effect/FilterInfo;->getId()I

    move-result p1

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0OO0()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Lcom/android/camera/module/Module;->getModuleIndex()I

    move-result v0

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_b

    sget p1, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    :cond_b
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/android/camera/effect/EffectController;->setAiSceneEffect(IZ)V

    sget v0, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq p1, v0, :cond_c

    move v1, v4

    :cond_c
    iput-boolean v1, p0, Lcom/android/camera/module/image/AiSceneManager;->mHasAiSceneFilterEffect:Z

    return-void

    :cond_d
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setAiSceneEffect: scene unknown: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public setCurrentAiScene(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scene"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    return-void
.end method

.method public updateAiScene()V
    .locals 5

    iget-object v0, p0, Lcom/android/camera/module/image/AiSceneManager;->mModule:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/Camera2Module;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mCurrentAiScene:I

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/camera/module/Camera2Module;->getAiSceneEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/camera2/CameraConfigManager;->setAiASDEnable(Z)V

    iget-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera2/CameraCapabilitiesUtil;->isSupportAIIE(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/camera2/CameraConfigManager;->setAIIEPreviewEnable(Z)V

    :goto_0
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/camera/module/ModuleManager;->isCapture()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    iget-boolean v2, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-nez v2, :cond_4

    :cond_3
    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setCameraAI30(Z)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/camera/module/image/AiSceneManager;->setAiSceneEffect(I)V

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationFilter()Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFilterInterface;->setCvStyleEffect(I)V

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/module/image/AiSceneManager;->getCurrentAiScene()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/camera2/CameraConfigManager;->setASDScene(I)V

    iget-boolean p0, p0, Lcom/android/camera/module/image/AiSceneManager;->mAiSceneEnabled:Z

    if-eqz p0, :cond_5

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getConfigMgr()Lcom/android/camera2/CameraConfigManager;

    move-result-object p0

    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Lcom/android/camera2/CameraConfigManager;->setASDPeriod(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->getUserEventMgr()Lcom/android/camera/module/common/IUserEventMgr;

    move-result-object p0

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-interface {p0, v0}, Lcom/android/camera/module/common/IUserEventMgr;->updatePreferenceTrampoline([I)V

    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0xb
        0xa
        0xd
    .end array-data
.end method
