.class public Lcom/android/camera/module/impl/component/SpeechShutterImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/protocols/SpeechShutterDetect;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "SpeechShutterImpl"


# instance fields
.field private mIsInit:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "camera.feature.speechshutter"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaomi/camera/util/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/camera/protocol/BaseProtocol;
    .locals 1

    new-instance v0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;

    invoke-direct {v0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "SpeechShutterImpl"

    const-string/jumbo v3, "onDestroy"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->release()V

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    :cond_0
    return-void
.end method

.method public processingSpeechShutter(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "processingSpeechShutter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "SpeechShutterImpl"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-nez p1, :cond_1

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "init start"

    invoke-static {v3, v0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;

    invoke-direct {p1}, Lcom/android/camera/module/impl/component/SpeechShutterImpl$WVPCallback;-><init>()V

    invoke-static {p1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->setListener(Lcom/xiaomi/asr/engine/WVPListener;)V

    sget-boolean p1, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->DEBUG:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->openLog(Z)V

    invoke-static {v0}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->saveRecord(Z)V

    :cond_0
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->init()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string v2, "init end "

    invoke-static {v3, v2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->start()V

    new-array p1, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "processingSpeechShutter start"

    invoke-static {v3, v1, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->restart()V

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "processingSpeechShutter restart"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->mIsInit:Z

    if-eqz p0, :cond_3

    invoke-static {v1}, Lcom/xiaomi/asr/engine/MultiWakeupEngine;->stop(I)V

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "processingSpeechShutter stop"

    invoke-static {v3, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/SpeechShutterDetect;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/SpeechShutterImpl;->onDestroy()V

    return-void
.end method
