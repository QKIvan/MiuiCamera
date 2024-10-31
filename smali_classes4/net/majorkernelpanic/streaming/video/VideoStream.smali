.class public abstract Lnet/majorkernelpanic/streaming/video/VideoStream;
.super Lnet/majorkernelpanic/streaming/MediaStream;


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoStream"


# instance fields
.field public mInputSurface:Landroid/view/Surface;

.field public mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

.field public mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

.field public mSettings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/majorkernelpanic/streaming/MediaStream;-><init>()V

    sget-object v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->DEFAULT_VIDEO_QUALITY:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    invoke-static {v0}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic OooO00o(Lnet/majorkernelpanic/streaming/video/VideoStream;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnet/majorkernelpanic/streaming/MediaStream;->recycleByteBuffer(Ljava/nio/ByteBuffer;)V

    return-void
.end method


# virtual methods
.method public getInputSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mInputSurface:Landroid/view/Surface;

    return-object p0
.end method

.method public getPreferences()Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public getVideoQuality()Lnet/majorkernelpanic/streaming/video/VideoQuality;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-object p0
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefs"
        }
    .end annotation

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    return-void
.end method

.method public setVideoQuality(Lnet/majorkernelpanic/streaming/video/VideoQuality;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoQuality"
        }
    .end annotation

    invoke-static {p1}, Lnet/majorkernelpanic/streaming/video/VideoQuality;->copyOf(Lnet/majorkernelpanic/streaming/video/VideoQuality;)Lnet/majorkernelpanic/streaming/video/VideoQuality;

    move-result-object p1

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mRequestedQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->start()V

    const-string v0, "VideoStream"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stream configuration: FPS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v2, v2, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startStreaming()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startStreaming: reuse mediacodec = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoStream"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mSettings:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v5, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    invoke-static {v0, v5, v4}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->debug(Landroid/content/SharedPreferences;II)Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;

    move-result-object v0

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/hw/EncoderDebugger;->getEncoderName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaCodec;->createByCodecName(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resX:I

    iget v0, v0, Lnet/majorkernelpanic/streaming/video/VideoQuality;->resY:I

    const-string/jumbo v5, "video/avc"

    invoke-static {v5, v4, v0}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->bitRate:I

    const-string v5, "bitrate"

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v4, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mQuality:Lnet/majorkernelpanic/streaming/video/VideoQuality;

    iget v4, v4, Lnet/majorkernelpanic/streaming/video/VideoQuality;->frameRate:I

    const-string v5, "frame-rate"

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v4, 0x7f000789

    const-string v5, "color-format"

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const v4, 0x3e4ccccd    # 0.2f

    const-string v5, "i-frame-interval"

    invoke-virtual {v0, v5, v4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startStreaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mInputSurface:Landroid/view/Surface;

    new-instance v0, Lnet/majorkernelpanic/streaming/io/MediaCodecInputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/io/MediaCodecInputStream;-><init>(Landroid/media/MediaCodec;)V

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    iput-object v3, p0, Lnet/majorkernelpanic/streaming/video/VideoStream;->mInputSurface:Landroid/view/Surface;

    new-instance v0, Lnet/majorkernelpanic/streaming/io/QueuedByteBufferInputStream;

    new-instance v1, LOooO0oO/OooO0O0/OooO00o/OooO0O0/o000000O;

    invoke-direct {v1, p0}, LOooO0oO/OooO0O0/OooO00o/OooO0O0/o000000O;-><init>(Lnet/majorkernelpanic/streaming/video/VideoStream;)V

    iget-object v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1, v3}, Lnet/majorkernelpanic/streaming/io/QueuedByteBufferInputStream;-><init>(Ljava/util/function/Consumer;Ljava/util/concurrent/LinkedBlockingQueue;)V

    :goto_0
    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v1, v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setInputStream(Lnet/majorkernelpanic/streaming/io/ByteBufferInputStream;)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->start()V

    iput-boolean v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return-void
.end method
