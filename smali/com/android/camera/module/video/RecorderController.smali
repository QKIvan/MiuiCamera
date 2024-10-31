.class public Lcom/android/camera/module/video/RecorderController;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaRecorder$OnInfoListener;
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/video/RecorderController$ModuleCallback;,
        Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    }
.end annotation


# static fields
.field private static final RESTART_TIME:I = 0x32c8

.field private static final TAG:Ljava/lang/String; = "RecorderController"


# instance fields
.field private final I_FRAME_FREQUENCY:I

.field private mCacheDir:Ljava/io/File;

.field private mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

.field private final mLock:Ljava/lang/Object;

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private final mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

.field private mRecorderSurface:Landroid/view/Surface;

.field private final mRestartMotionDetectionTask:Lio/reactivex/functions/Action;

.field private mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

.field private mSplitWhenReachMaxSize:Z

.field private mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

.field private mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

.field private mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

.field private mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/video/UserRecordSetting;Lcom/android/camera/module/video/RecordRuntimeInfo;Lcom/android/camera/module/video/VideoTrackInfo$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "setting",
            "runtimeInfo",
            "builder"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/module/video/RecorderController;->I_FRAME_FREQUENCY:I

    new-instance v0, LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO0OO/OooO;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/OooOo;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/OooOo;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    iput-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRestartMotionDetectionTask:Lio/reactivex/functions/Action;

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p2, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/camera/module/video/RecorderController;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/camera/module/video/RecorderController;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    return-object p1
.end method

.method public static synthetic access$100(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/camera/module/video/RecorderController;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/camera/module/video/RecorderController;)Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$ModuleCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/camera/module/video/RecorderController;)Lcom/android/camera/module/video/RecorderController$RecorderStateListener;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-object p0
.end method

.method private createRecorder()Z
    .locals 7

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v1, Landroid/media/MediaRecorder;

    invoke-direct {v1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const-string v1, "RecorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initializeRecorder: init "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    const-string p0, "RecorderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeRecorder: reset cost: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getCodecLevelForTrueColour(I)I
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoFrameRate"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0x3c

    const/16 v3, 0x18

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is4KCamcorder()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v0}, Lcom/android/camera/module/video/UserRecordSetting;->is1080PCamcorder()Z

    move-result v0

    if-eqz v0, :cond_3

    if-ne p1, v3, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    if-ne p1, v2, :cond_2

    const/16 v1, 0x10

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->is720PCamcorder()Z

    move-result p0

    if-eqz p0, :cond_8

    if-ne p1, v3, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    :goto_0
    if-ne p1, v3, :cond_5

    const/16 v1, 0x20

    goto :goto_1

    :cond_5
    const/16 p0, 0x30

    if-ne p1, p0, :cond_6

    const/16 v1, 0x80

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    const/16 v1, 0x100

    goto :goto_1

    :cond_7
    const/16 v1, 0x40

    :cond_8
    :goto_1
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->motionDetectionRestart()V

    return-void
.end method

.method public static synthetic lambda$releaseMediaRecorder$3(Landroid/media/MediaRecorder;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "recorder"
        }
    .end annotation

    const-string v0, "RecorderController"

    const-string v1, "[WTP] mediarecorder reset and release: E"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->reset()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "releaseRecorder: reset cost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/media/MediaRecorder;->release()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseRecorder: release cost: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "[WTP] mediarecorder reset and release: X"

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$stopRecorder$1(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "succeed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {p0, p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderReleased(Z)V

    return-void
.end method

.method public static synthetic lambda$stopRecorder$2(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "throwable"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopRecorder error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecorderController"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoost()V

    return-void
.end method

.method private prepareRecorder()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v2, p0}, Landroid/media/MediaRecorder;->setOnInfoListener(Landroid/media/MediaRecorder$OnInfoListener;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder: prepare cost: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RecorderController"

    invoke-static {v1, p0, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mimeType"
        }
    .end annotation

    invoke-static {}, Landroid/media/MediaCodecList;->getCodecCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-static {v2}, Landroid/media/MediaCodecList;->getCodecInfoAt(I)Landroid/media/MediaCodecInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v3}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object v4

    move v5, v1

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {v6, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private setInputSurface(Landroid/view/Surface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recorderSurface"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {p0, p1}, Landroid/media/MediaRecorder;->setInputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method private waitLastStopDone()V
    .locals 6

    const-string v0, "RecorderController"

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mStopRecorderDone:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v3, v4, v5}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v0, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: waitTime="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->lambda$new$0()V

    return-void
.end method

.method public synthetic OooO0O0(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/module/video/RecorderController;->lambda$stopRecorder$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public cancelAllPendingTasks()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0O0()V

    return-void
.end method

.method public createRecordSurface()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-nez v1, :cond_0

    invoke-static {}, Landroid/media/MediaCodec;->createPersistentInputSurface()Landroid/view/Surface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    const-string v1, "RecorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMediaRecorder()Landroid/media/MediaRecorder;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object p0
.end method

.method public getRecordSurface()Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUserRecordSettings()Lcom/android/camera/module/video/UserRecordSetting;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    return-object p0
.end method

.method public initializeRecorder(ZLcom/android/camera/module/video/AiAudioController;Landroid/content/Context;I)Lcom/android/camera/module/video/InitRecorderResult;
    .locals 18
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isStartRecorder",
            "aiAudio",
            "context",
            "moduleIndex"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v10, p3

    invoke-static {}, Lcom/xiaomi/camera/util/ThreadUtils;->assertWorkerThread()V

    const-string v3, "RecorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initializeRecorder>>startRecorder = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    new-array v5, v11, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v14, Lcom/android/camera/module/video/InitRecorderResult;

    invoke-direct {v14}, Lcom/android/camera/module/video/InitRecorderResult;-><init>()V

    iget-object v15, v1, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->waitLastStopDone()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecordSurface()V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    move-result v3

    iput-boolean v3, v14, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v0, v10, v3}, Lcom/android/camera/module/video/AiAudioController;->initAiAudio(ZLandroid/content/Context;Landroid/media/MediaRecorder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v9, 0x0

    move/from16 v3, p4

    :try_start_1
    invoke-virtual {v1, v10, v3}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-static {v3, v8}, Lcom/android/camera/module/video/MediaRecorderCreator;->setupMediaRecorder(Landroid/media/MediaRecorder;Lcom/android/camera/module/video/MediaRecorderParameter;)Landroid/media/MediaRecorder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    :try_start_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0O00o0()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/AiAudioController;->setCurrentAiAudioParameters(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v10, v9

    move-object v9, v8

    goto/16 :goto_4

    :cond_1
    :goto_0
    :try_start_4
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->isThirdPartyUri()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {v2, v3, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v7, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v2, v7, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v2, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v6, v2, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v16
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/16 v17, 0x1

    move-object v2, v7

    move-object v11, v7

    move/from16 v7, v16

    move-object/from16 v16, v8

    move/from16 v8, p1

    move-object v10, v9

    move/from16 v9, v17

    :try_start_5
    invoke-static/range {v2 .. v9}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v2

    iput-object v2, v11, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    goto :goto_1

    :cond_2
    move-object/from16 v16, v8

    move-object v10, v9

    :goto_1
    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    if-eqz v3, :cond_5

    if-eqz v0, :cond_3

    const-string v0, "_data"

    invoke-virtual {v3, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    if-nez v0, :cond_4

    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    :cond_4
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    iget-object v4, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v5, "_display_name"

    invoke-virtual {v4, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-direct {v1, v0}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v8, v16

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v16, v8

    move-object v10, v9

    :goto_3
    move-object/from16 v9, v16

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v10, v9

    :goto_4
    :try_start_6
    const-string v2, ""

    instance-of v3, v0, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_6

    iget-object v2, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v2, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v2}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v10, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    :cond_6
    const-string v3, "RecorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v5}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    move-object v8, v9

    :goto_5
    iget-boolean v0, v14, Lcom/android/camera/module/video/InitRecorderResult;->succeed:Z

    if-eqz v0, :cond_7

    const-string v0, "RecorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initializeRecorder: recordSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-static {v3}, Lcom/android/camera/Util;->getSurfaceInfo(Landroid/view/Surface;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v0

    iput-object v0, v14, Lcom/android/camera/module/video/InitRecorderResult;->mediaRecorder:Landroid/media/MediaRecorder;

    iput-object v8, v14, Lcom/android/camera/module/video/InitRecorderResult;->recorderParameter:Lcom/android/camera/module/video/MediaRecorderParameter;

    :cond_7
    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const-string v0, "RecorderController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initializeRecorder<<time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v12

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v14

    :catchall_0
    move-exception v0

    :try_start_7
    monitor-exit v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0
.end method

.method public motionDetectionRestart()V
    .locals 12
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportMotionDetectionEnable"
        type = 0x2
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecorderController"

    const-string/jumbo v3, "motionDetectionRestart E"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->deleteFile()V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->createRecordSurface()V

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->createRecorder()Z

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->setupRecorderParameterForSlowMotion()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/android/camera/module/video/MediaRecorderCreator;->setupMediaRecorder(Landroid/media/MediaRecorder;Lcom/android/camera/module/video/MediaRecorderParameter;)Landroid/media/MediaRecorder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    iget-object v6, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v1, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v3, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v4, v1

    invoke-static/range {v4 .. v11}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    invoke-virtual {v3, v1}, Lcom/android/camera/storage/mediastore/VideoFile;->setContentValues(Landroid/content/ContentValues;)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getMediaRecorder()Landroid/media/MediaRecorder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/storage/mediastore/VideoFile;->setMediaRecorderOutput(Landroid/media/MediaRecorder;Z)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mCacheDir:Ljava/io/File;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const-string v6, "_display_name"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoFilePath:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->getRecordSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/module/video/RecorderController;->setInputSurface(Landroid/view/Surface;)V

    invoke-direct {p0}, Lcom/android/camera/module/video/RecorderController;->prepareRecorder()V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0, v1, v0}, Lcom/android/camera/module/video/RecorderController;->startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v3}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/camera/Util;->getFilesState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "prepare failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v5}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFilePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    :goto_1
    new-array p0, v0, [Ljava/lang/Object;

    const-string/jumbo v0, "motionDetectionRestart X"

    invoke-static {v2, v0, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const-string p3, "MediaRecorder error. what=%d extra=%d"

    invoke-static {p1, p3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "RecorderController"

    invoke-static {p3, p1}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0, p2}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderError(I)V

    return-void
.end method

.method public onInfo(Landroid/media/MediaRecorder;II)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mr",
            "what",
            "extra"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-boolean p1, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderRecording:Z

    const/4 p3, 0x0

    const-string v0, "RecorderController"

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onInfo: ignore event "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onInfo what : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, p3, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_0
    new-array p1, p3, [Ljava/lang/Object;

    const-string/jumbo p2, "next output file started"

    invoke-static {v0, p2, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p1}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onNextFileStarted()V

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentVideoValues:Landroid/content/ContentValues;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    :pswitch_1
    iget-boolean p1, p0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "max file size is approaching. split: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, p3, [Ljava/lang/Object;

    invoke-static {v0, p2, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mCurrentFileNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    invoke-static {p1, p2, v3, v2}, Lcom/android/camera/module/video/VideoUtil;->createVideoName(JILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v2, v1, Lcom/android/camera/module/video/UserRecordSetting;->mOutputFormat:I

    iget-object v4, v1, Lcom/android/camera/module/video/UserRecordSetting;->mBaseFileName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v1 .. v8}, Lcom/android/camera/module/video/VideoUtil;->genContentValues(Lcom/android/camera/module/video/UserRecordSetting;IILjava/lang/String;Ljava/lang/String;ZZZ)Landroid/content/ContentValues;

    move-result-object p1

    const-string p2, "_data"

    invoke-virtual {p1, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nextVideoPath: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Object;

    invoke-static {v0, v1, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-static {p2, p3}, Lcom/android/camera/module/video/VideoUtil;->setNextOutputFile(Ljava/lang/String;Landroid/media/MediaRecorder;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iput-object p1, p0, Lcom/android/camera/module/video/UserRecordSetting;->mNextVideoValues:Landroid/content/ContentValues;

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxFileSizeReached()V

    goto :goto_0

    :pswitch_3
    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onMaxDurationReached()V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x320
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseVideoRecording()V
    .locals 6

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "RecorderController"

    const-string/jumbo v3, "pauseVideoRecording"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-virtual {v1}, Lcom/android/camera/module/video/RecordRuntimeInfo;->isTrueRecording()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->pause()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "failed to pause media recorder"

    invoke-static {v2, v1, v0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iget-wide v4, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    sub-long/2addr v1, v4

    iput-wide v1, v0, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    invoke-interface {p0}, Lcom/android/camera/module/video/RecorderController$RecorderStateListener;->onRecorderPaused()V

    :cond_0
    return-void
.end method

.method public releaseMediaRecorder()V
    .locals 3

    const-string v0, "RecorderController"

    const-string/jumbo v1, "releaseRecorder"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {p0}, Lcom/android/camera/module/video/UserRecordSetting;->cleanupEmptyFile()V

    sget-object p0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraWorkScheduler:Lio/reactivex/Scheduler;

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/Oooo0;

    invoke-direct {v0, v1}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/Oooo0;-><init>(Landroid/media/MediaRecorder;)V

    invoke-virtual {p0, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public releaseRecordSurface()V
    .locals 4

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    if-eqz v1, :cond_0

    const-string v1, "RecorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "releaseRecordSurface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mRecorderSurface:Landroid/view/Surface;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resumeVideoRecording(Lcom/android/camera/protocol/protocols/RecordState;Lcom/android/camera/module/video/RecordRuntimeInfo;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recordState",
            "runtimeInfo"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->resume()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    sub-long/2addr v1, v3

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingStartTime:J

    const-wide/16 v1, 0x0

    iput-wide v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mVideoRecordedDuration:J

    iput-boolean v0, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingPaused:Z

    const-string v1, ""

    iput-object v1, p2, Lcom/android/camera/module/video/RecordRuntimeInfo;->mRecordingTime:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onResume()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p2

    const-string v1, "RecorderController"

    const-string v2, "failed to resume media recorder"

    invoke-static {v1, v2, p2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/android/camera/module/video/RecorderController;->releaseMediaRecorder()V

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/RecordState;->onFailed()V

    return v0
.end method

.method public setModuleCallback(Lcom/android/camera/module/video/RecorderController$ModuleCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    return-void
.end method

.method public setStateListener(Lcom/android/camera/module/video/RecorderController$RecorderStateListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mListener:Lcom/android/camera/module/video/RecorderController$RecorderStateListener;

    return-void
.end method

.method public setupRecorderParameter(Landroid/content/Context;I)Lcom/android/camera/module/video/MediaRecorderParameter;
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "moduleIndex"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    new-instance v2, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-direct {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->10bit()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v5, 0x2

    const/high16 v12, 0x100000

    invoke-virtual {v2, v5, v12}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_0
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setEnableAudio(Z)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isNeededSetCamcorder(I)Z

    move-result v6

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v6, :cond_1

    if-eqz v4, :cond_2

    invoke-virtual {v2, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_2

    invoke-virtual {v2, v8}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_2
    :goto_0
    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOutputFormat(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v6, v6, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setupRecorder: videoSize = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    new-array v10, v9, [Ljava/lang/Object;

    const-string v11, "RecorderController"

    invoke-static {v11, v6, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v10, v6, Lcom/android/camera/CameraSize;->width:I

    iget v6, v6, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v10, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSize(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v6

    const/4 v10, 0x0

    if-nez v6, :cond_3

    new-array v0, v9, [Ljava/lang/Object;

    const-string/jumbo v1, "setupRecorderParameter: cameraCapabilities is null"

    invoke-static {v11, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v10

    :cond_3
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v12

    invoke-static {v12}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v13

    if-lez v13, :cond_4

    invoke-virtual {v2, v13}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v14, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v14, v13}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setupRecorder: videoFrameRate = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v11, v14, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v14, v13

    goto :goto_1

    :cond_4
    iget-object v14, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v14, v14, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v14, v14, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v2, v14}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v15, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v10, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v10, v10, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v10, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v15, v10}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setupRecorder: profile videoFrameRate = "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v15, v15, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v15, v15, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v15, v9, [Ljava/lang/Object;

    invoke-static {v11, v10, v15}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v10

    invoke-virtual {v10}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO000o()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v6, v14}, Lcom/android/camera/module/video/VideoConfig;->getTrueColourVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v6

    invoke-direct {v0, v14}, Lcom/android/camera/module/video/RecorderController;->getCodecLevelForTrueColour(I)I

    move-result v10

    const/16 v15, 0x100

    invoke-virtual {v2, v15, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    sget-object v15, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v5, v7, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v7, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v14, 0x2

    aput-object v7, v5, v14

    const/4 v7, 0x3

    const/16 v14, 0x100

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v5, v7

    const/4 v7, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v5, v7

    const-string/jumbo v7, "setupRecorder(TrueColor): quality = %d, framerate = %d, bitrate = %d, profile = %d, level = %d"

    invoke-static {v15, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_5
    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v7, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    const/16 v10, 0x1000

    const/4 v14, 0x5

    if-ne v14, v7, :cond_d

    invoke-static {v5}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "setupRecorder: H265 bitrate = "

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v14, v9, [Ljava/lang/Object;

    invoke-static {v11, v7, v14}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v7}, Lcom/android/camera/module/video/UserRecordSetting;->is8KCamcorder()Z

    move-result v7

    if-nez v7, :cond_6

    const/high16 v7, 0x40000

    goto :goto_2

    :cond_6
    const/high16 v7, 0x100000

    :goto_2
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v14

    invoke-virtual {v14}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0ooOO0()I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_8

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10OrPlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v15

    if-nez v15, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_7
    invoke-virtual {v2, v14, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const/4 v10, 0x2

    new-array v15, v10, [Ljava/lang/Object;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v15, v8

    const-string/jumbo v7, "setupRecorder: profile = %d, level = %d"

    invoke-static {v6, v7, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_8
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v2, v10, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_9
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_a

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v10

    const-string/jumbo v14, "setupRecorder: hdr10pro HEVCProfileMain10 & "

    if-eqz v10, :cond_b

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x2

    invoke-virtual {v2, v10, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    invoke-static/range {p2 .. p2}, Lcom/android/camera/CameraSettings;->isProVideoLogOpen(I)Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-static {v6}, Lcom/android/camera2/CameraCapabilitiesUtil;->getVideoLogFormat(Lcom/android/camera2/CameraCapabilities;)I

    move-result v6

    const/16 v10, 0xa

    if-ne v6, v10, :cond_c

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v6, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    :goto_3
    move v6, v5

    goto :goto_6

    :cond_d
    invoke-static {v5}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v6

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v5

    if-eqz v5, :cond_f

    const-string/jumbo v5, "video/avc"

    invoke-static {v5}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-virtual {v7, v5}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v5

    iget-object v5, v5, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v7, v5

    move v14, v9

    :goto_4
    if-ge v14, v7, :cond_f

    aget-object v15, v5, v14

    iget v8, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v10, v8, :cond_e

    iget v8, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v15, 0x8

    if-ne v15, v8, :cond_e

    invoke-virtual {v2, v15, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_5

    :cond_e
    add-int/lit8 v14, v14, 0x1

    const/4 v8, 0x1

    goto :goto_4

    :cond_f
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupRecorder: H264 bitrate = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioChannels(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSamplingRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_10
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-boolean v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mCaptureTimeLapse:Z

    if-eqz v5, :cond_14

    const/16 v5, 0xd0

    const/16 v6, 0xa0

    if-ne v1, v5, :cond_11

    const-string v5, "10000"

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iput-wide v6, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: MODE_FILM_EXPOSUREDELAY. timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeLapseDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_11
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oOo()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oO0()Z

    move-result v4

    if-eqz v4, :cond_13

    :cond_12
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionSpeed()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionSpeed;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v7, "pref_new_video_time_lapse_frame_interval_key"

    invoke-virtual {v4, v7, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionDuration()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionDuration;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "pref_new_video_time_lapse_duration_key"

    invoke-virtual {v4, v6, v5}, Lcom/android/camera/data/data/DataItemBase;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v6, v4

    iput-wide v6, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: timeBetweenTimeLapseFrameCaptureMs = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", timeLapseDuration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mTimeLapseDuration:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_13
    :goto_7
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mTimeBetweenTimeLapseFrameCaptureMs:I

    if-eqz v4, :cond_19

    const-wide v5, 0x408f400000000000L    # 1000.0

    int-to-double v7, v4

    div-double/2addr v5, v7

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto/16 :goto_8

    :cond_14
    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v4

    if-nez v4, :cond_18

    const/16 v4, 0xac

    if-ne v4, v1, :cond_17

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000ooO0()Z

    move-result v4

    if-nez v4, :cond_17

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v4

    div-int/2addr v5, v4

    const/4 v4, 0x2

    div-int/2addr v5, v4

    mul-int/2addr v6, v5

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v7, 0x1e0

    const-string/jumbo v8, "vendor.qti-ext-enc-entropy-mode.value=0"

    const-string/jumbo v10, "setupRecorder: set enc-entropy-mode to CAVLC"

    if-ne v5, v7, :cond_15

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_15

    const v4, 0x7270e00

    const-string v5, "camcorder.480fps.bitrate.max"

    invoke-static {v5, v4}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v11, v10, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v7, 0x3c0

    if-ne v5, v7, :cond_16

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_16

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOOO0()Z

    move-result v4

    if-eqz v4, :cond_16

    const v4, 0x8583b00

    const-string v5, "camcorder.960fps.bitrate.max"

    invoke-static {v5, v4}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupRecorder: camcorder.960fps.bitrate.max = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v11, v10, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: bitRate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: setVideoEncodingBitRate_960 = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_17
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_8

    :cond_18
    if-lez v13, :cond_19

    invoke-virtual {v2, v13}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    int-to-double v4, v13

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/16 v4, 0xa2

    if-ne v1, v4, :cond_19

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v4, v12}, Lcom/android/camera/module/video/UserRecordSetting;->is4K120FpsCamcorder(I)Z

    move-result v4

    if-eqz v4, :cond_19

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v4}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v4

    div-int/2addr v5, v4

    const/4 v4, 0x2

    div-int/2addr v5, v4

    mul-int/2addr v6, v5

    invoke-virtual {v2, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_19
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupRecorder: maxDuration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v11, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v2, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxDuration(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/camera/ActivityBase;

    invoke-virtual {v4}, Lcom/android/camera/ActivityBase;->getCameraIntentManager()Lcom/android/camera/CameraIntentManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/CameraIntentManager;->checkIntentLocationPermission(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v10

    goto :goto_9

    :cond_1a
    const/4 v10, 0x0

    :goto_9
    if-eqz v10, :cond_1b

    invoke-virtual {v10}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v10}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setLocation(FF)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_1b
    const-string v4, "camera.debug.video_max_size"

    invoke-static {v4, v9}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {v4, v5, v6}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    const-wide v12, 0xdac00000L

    if-lez v7, :cond_1c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupRecorder: maxFileSize = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxFileSize(J)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    cmp-long v7, v5, v12

    if-lez v7, :cond_1c

    const-string/jumbo v7, "param-use-64bit-offset=1"

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v7

    invoke-virtual {v7}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OoOOo()Z

    move-result v7

    if-eqz v7, :cond_1e

    if-gtz v4, :cond_1d

    cmp-long v4, v5, v12

    if-nez v4, :cond_1e

    :cond_1d
    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_a

    :cond_1e
    iput-boolean v9, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    :goto_a
    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/module/video/SlowMotionModule;->isSlowMotion(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v4

    invoke-virtual {v4}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000ooO0()Z

    move-result v4

    if-nez v4, :cond_20

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mSlowModeFps:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/camera/module/video/SlowMotionModule;->isFPS480(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    new-instance v4, Ljava/text/DecimalFormat;

    new-instance v5, Ljava/text/DecimalFormatSymbols;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v5, v6}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v6, "0.000"

    invoke-direct {v4, v6, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const-wide/high16 v5, 0x4020000000000000L    # 8.0

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v7, v7

    div-double/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "video-param-i-frames-interval="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v9, [Ljava/lang/Object;

    invoke-static {v11, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_1f
    const-string/jumbo v4, "video-param-i-frames-interval=0.033"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_b
    const/16 v4, 0xd9

    if-ne v1, v4, :cond_21

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v4, "video-param-i-frames-interval=0"

    invoke-static {v11, v4, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, 0x4c4b400

    invoke-virtual {v2, v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_21
    iget-object v0, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {v2, v0}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOrientationHint(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-virtual {v2, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setExtraParameters(Ljava/util/List;)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-virtual {v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->build()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v0

    return-object v0
.end method

.method public setupRecorderParameterForSlowMotion()Lcom/android/camera/module/video/MediaRecorderParameter;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-direct {v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->recordAudio()Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setEnableAudio(Z)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSource(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOutputFormat(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v5, v5, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setupRecorder: videoSize = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v6, v6, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Object;

    const-string v8, "RecorderController"

    invoke-static {v8, v5, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mVideoSize:Lcom/android/camera/CameraSize;

    iget v7, v5, Lcom/android/camera/CameraSize;->width:I

    iget v5, v5, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v1, v7, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoSize(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-static {}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getInstance()Lcom/android/camera/module/loader/camera2/Camera2DataContainer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/module/loader/camera2/Camera2DataContainer;->getCurrentCameraCapabilities()Lcom/android/camera2/CameraCapabilities;

    move-result-object v5

    if-nez v5, :cond_0

    new-array v0, v6, [Ljava/lang/Object;

    const-string/jumbo v1, "setupRecorderParameter: cameraCapabilities is null"

    invoke-static {v8, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->getCameraId(Lcom/android/camera2/CameraCapabilities;)I

    move-result v7

    invoke-static {v7}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v1, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    invoke-virtual {v9, v7}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: videoFrameRate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v9, v7

    goto :goto_0

    :cond_1
    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v9, v9, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v1, v9}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v10, v0, Lcom/android/camera/module/video/RecorderController;->mTrackBuilder:Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v11, v11, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Lcom/android/camera/module/video/VideoTrackInfo$Builder;->setFrameRate(I)Lcom/android/camera/module/video/VideoTrackInfo$Builder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: profile videoFrameRate = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v11, v11, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v11, v6, [Ljava/lang/Object;

    invoke-static {v8, v10, v11}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v10

    invoke-virtual {v10}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0OO000o()Z

    move-result v10

    const/4 v11, 0x5

    const/4 v12, 0x1

    if-eqz v10, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isTrueColourVideoModeOn()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v5, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v5, v5, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    invoke-static {v5, v9}, Lcom/android/camera/module/video/VideoConfig;->getTrueColourVideoEncoderBitRate(Landroid/media/CamcorderProfile;I)I

    move-result v5

    invoke-direct {v0, v9}, Lcom/android/camera/module/video/RecorderController;->getCodecLevelForTrueColour(I)I

    move-result v10

    const/16 v13, 0x100

    invoke-virtual {v1, v13, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    sget-object v14, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v15, v11, [Ljava/lang/Object;

    iget-object v11, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v11, v11, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v11, v11, Landroid/media/CamcorderProfile;->quality:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v12

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v15, v4

    const/4 v9, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v15, v9

    const/4 v9, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v15, v9

    const-string/jumbo v9, "setupRecorder(TrueColor): quality = %d, framerate = %d, bitrate = %d, profile = %d, level = %d"

    invoke-static {v14, v9, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_2
    iget-object v9, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v9, v9, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v10, v9, Landroid/media/CamcorderProfile;->videoCodec:I

    const/16 v11, 0x1000

    const/4 v13, 0x5

    if-ne v13, v10, :cond_8

    invoke-static {v9}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setupRecorder: H265 bitrate = "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v13, v6, [Ljava/lang/Object;

    invoke-static {v8, v10, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/high16 v10, 0x40000

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v13

    invoke-virtual {v13}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0ooOO0()I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_4

    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10OrPlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v14

    if-nez v14, :cond_3

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    invoke-virtual {v1, v13, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v11, v4, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v6

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v11, v12

    const-string/jumbo v10, "setupRecorder: profile = %d, level = %d"

    invoke-static {v5, v10, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10VideoModeOn()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v1, v11, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: HEVCProfileMain10HDR10 & "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10PlusModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10PlusVideoModeOn()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {v1, v4, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: HEVCProfileMain10 & "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {v5}, Lcom/android/camera2/CameraCapabilitiesUtil;->isVideoHdr10ProModeSupported(Lcom/android/camera2/CameraCapabilities;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {}, Lcom/android/camera/CameraSettings;->isHdr10ProVideoModeOn()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {v1, v4, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: hdr10pro HEVCProfileMain10 & "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v5, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_1
    move v5, v9

    goto :goto_4

    :cond_8
    invoke-static {v9}, Lcom/android/camera/module/video/VideoConfig;->getHevcVideoEncoderBitRate(Landroid/media/CamcorderProfile;)I

    move-result v5

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string/jumbo v9, "video/avc"

    invoke-static {v9}, Lcom/android/camera/module/video/RecorderController;->selectCodec(Ljava/lang/String;)Landroid/media/MediaCodecInfo;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10, v9}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    move-result-object v9

    iget-object v9, v9, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    array-length v10, v9

    move v13, v6

    :goto_2
    if-ge v13, v10, :cond_a

    aget-object v14, v9, v13

    iget v15, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    if-ne v11, v15, :cond_9

    iget v14, v14, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    const/16 v15, 0x8

    if-ne v15, v14, :cond_9

    invoke-virtual {v1, v15, v11}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingProfileLevel(II)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_3

    :cond_9
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_a
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupRecorder: H264 bitrate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_4
    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioChannels(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioSamplingRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setAudioEncoder(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_b
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->isNormalMode()Z

    move-result v3

    if-nez v3, :cond_f

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000ooO0()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v7, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    div-int/2addr v7, v3

    div-int/2addr v7, v4

    mul-int/2addr v5, v7

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v7, 0x1e0

    const-string/jumbo v9, "vendor.qti-ext-enc-entropy-mode.value=0"

    const-string/jumbo v10, "setupRecorder: set enc-entropy-mode to CAVLC"

    if-ne v4, v7, :cond_c

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_c

    const v3, 0x7270e00

    const-string v4, "camcorder.480fps.bitrate.max"

    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v10, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    const/16 v7, 0x3c0

    if-ne v4, v7, :cond_d

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_d

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOOO0()Z

    move-result v3

    if-eqz v3, :cond_d

    const v3, 0x8583b00

    const-string v4, "camcorder.960fps.bitrate.max"

    invoke-static {v4, v3}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setupRecorder: camcorder.960fps.bitrate.max = "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v8, v4, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v10, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: bitRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_e
    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    int-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    goto :goto_5

    :cond_f
    if-lez v7, :cond_10

    invoke-virtual {v1, v7}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoFrameRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    int-to-double v9, v7

    invoke-virtual {v1, v9, v10}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setCaptureRate(D)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v7, v3, Lcom/android/camera/module/video/UserRecordSetting;->mFrameRate:I

    invoke-virtual {v3}, Lcom/android/camera/module/video/UserRecordSetting;->getNormalVideoFrameRate()I

    move-result v3

    div-int/2addr v7, v3

    div-int/2addr v7, v4

    mul-int/2addr v5, v7

    invoke-virtual {v1, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setVideoEncodingBitRate(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    :cond_10
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setupRecorder: maxDuration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v8, v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v3, v3, Lcom/android/camera/module/video/UserRecordSetting;->mMaxVideoDurationInMs:I

    invoke-virtual {v1, v3}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxDuration(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    const-string v3, "camera.debug.video_max_size"

    invoke-static {v3, v6}, Lcom/xiaomi/camera/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-wide v4, v4, Lcom/android/camera/module/video/UserRecordSetting;->mIntentRequestSize:J

    invoke-static {v3, v4, v5}, Lcom/android/camera/module/video/VideoUtil;->getRecorderMaxFileSize(IJ)J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v7, v4, v9

    const-wide v9, 0xdac00000L

    if-lez v7, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setupRecorder: maxFileSize = "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setMaxFileSize(J)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    cmp-long v7, v4, v9

    if-lez v7, :cond_11

    const-string/jumbo v7, "param-use-64bit-offset=1"

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v7

    invoke-virtual {v7}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OoOOo()Z

    move-result v7

    if-eqz v7, :cond_13

    if-gtz v3, :cond_12

    cmp-long v3, v4, v9

    if-nez v3, :cond_13

    :cond_12
    iput-boolean v12, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    goto :goto_6

    :cond_13
    iput-boolean v6, v0, Lcom/android/camera/module/video/RecorderController;->mSplitWhenReachMaxSize:Z

    :goto_6
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v3

    invoke-virtual {v3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000ooO0()Z

    move-result v3

    if-nez v3, :cond_14

    new-instance v3, Ljava/text/DecimalFormat;

    new-instance v4, Ljava/text/DecimalFormatSymbols;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v4, v5}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v5, "0.000"

    invoke-direct {v3, v5, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    iget-object v7, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v7, v7, Lcom/android/camera/module/video/UserRecordSetting;->mHfrFPSRange:Landroid/util/Range;

    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v9, v7

    div-double/2addr v4, v9

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "video-param-i-frames-interval="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v8, v4, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    iget-object v0, v0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mOrientationHint:I

    invoke-virtual {v1, v0}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setOrientationHint(I)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-virtual {v1, v2}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->setExtraParameters(Ljava/util/List;)Lcom/android/camera/module/video/MediaRecorderParameter$Builder;

    invoke-virtual {v1}, Lcom/android/camera/module/video/MediaRecorderParameter$Builder;->build()Lcom/android/camera/module/video/MediaRecorderParameter;

    move-result-object v0

    return-object v0
.end method

.method public startRecorder(Lcom/android/camera/module/video/UserRecordSetting;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "userRecordSetting",
            "cameraId"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0()Z

    move-result v0

    const-string v1, "RecorderController"

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result p2

    if-gtz p2, :cond_0

    iget-object p2, p1, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget p2, p2, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_0
    iget v0, p1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0, p2}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStart(II)V

    const-string/jumbo p2, "notifyThermalRecordStart"

    invoke-static {v1, p2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v4, :cond_2

    return v0

    :cond_2
    invoke-virtual {v4}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMotionDetectionOn()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigSlowMotion()Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigSlowMotion;->isSlowMotionFps3840()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mStartRecordTimens:J

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Lcom/android/camera/module/video/UserRecordSetting;->mMotionDetectionFrameTimens:J

    iget-object v4, p0, Lcom/android/camera/module/video/RecorderController;->mPendingTasks:LOooO0OO/OooO0O0/OooO0OO/OooO;

    const-wide/16 v5, 0x32c8

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/module/video/RecorderController;->mRestartMotionDetectionTask:Lio/reactivex/functions/Action;

    invoke-virtual {v4, v5, v6, v7, v8}, LOooO0OO/OooO0O0/OooO0OO/OooO;->OooO0OO(JLio/reactivex/Scheduler;Lio/reactivex/functions/Action;)V

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startRecorder: videoFile = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/camera/module/video/UserRecordSetting;->mVideoFile:Lcom/android/camera/storage/mediastore/VideoFile;

    invoke-virtual {p1}, Lcom/android/camera/storage/mediastore/VideoFile;->getCurrentFileUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " cost = "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1, p1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/camera/module/video/RecorderController;->mRuntimeInfo:Lcom/android/camera/module/video/RecordRuntimeInfo;

    iput-boolean p2, p1, Lcom/android/camera/module/video/RecordRuntimeInfo;->mMediaRecorderWorking:Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :catch_0
    move-exception p1

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    const-string p1, "could not start recorder: %s"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/camera/log/LogK;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/camera/module/video/RecorderController;->mVideoBase:Lcom/android/camera/module/video/RecorderController$ModuleCallback;

    if-eqz p0, :cond_4

    const p1, 0x7f120329

    const p2, 0x7f120328

    invoke-interface {p0, p1, p2}, Lcom/android/camera/module/video/RecorderController$ModuleCallback;->showConfirmMessage(II)V

    :cond_4
    return v0
.end method

.method public stopRecorder(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CheckResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraId"
        }
    .end annotation

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o0()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v0}, Lcom/android/camera/CameraSettings;->is4KHigherVideoQuality(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/camera/module/video/VideoUtil;->getHSRValue(I)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget-object v0, v0, Lcom/android/camera/module/video/UserRecordSetting;->mProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/video/RecorderController;->mUserSetting:Lcom/android/camera/module/video/UserRecordSetting;

    iget v1, v1, Lcom/android/camera/module/video/UserRecordSetting;->mQuality:I

    invoke-static {v1, v0}, Lcom/android/camera/ThermalHelper;->notifyThermalRecordStop(II)V

    :cond_1
    new-instance v0, Lcom/android/camera/module/video/RecorderController$1;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/module/video/RecorderController$1;-><init>(Lcom/android/camera/module/video/RecorderController;I)V

    invoke-static {v0}, Lio/reactivex/Single;->create(Lio/reactivex/SingleOnSubscribe;)Lio/reactivex/Single;

    move-result-object p1

    sget-object v0, Lcom/xiaomi/camera/rx/CameraSchedulers;->sCameraSetupScheduler:Lio/reactivex/Scheduler;

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Single;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Single;

    move-result-object p1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/OooOo00;

    invoke-direct {v0, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/OooOo00;-><init>(Lcom/android/camera/module/video/RecorderController;)V

    sget-object p0, LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/Oooo000;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0o0/oO0O0/Oooo000;

    invoke-virtual {p1, v0, p0}, Lio/reactivex/Single;->subscribe(Lio/reactivex/functions/Consumer;Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
