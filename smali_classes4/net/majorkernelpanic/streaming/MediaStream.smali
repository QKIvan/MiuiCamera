.class public abstract Lnet/majorkernelpanic/streaming/MediaStream;
.super Ljava/lang/Object;

# interfaces
.implements Lnet/majorkernelpanic/streaming/Stream;


# static fields
.field public static final TAG:Ljava/lang/String; = "MediaStream"


# instance fields
.field public mByteBufferOutputStream:Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;

.field public mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

.field public mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public mChannelIdentifier:B

.field public mConfigured:Z

.field public mDestination:Ljava/net/InetAddress;

.field public mMediaCodec:Landroid/media/MediaCodec;

.field public mOutputStream:Ljava/io/OutputStream;

.field public mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

.field public mRtcpPort:I

.field public mRtpPort:I

.field public mStreaming:Z

.field private mTTL:I

.field public mUseSharedMediaCodec:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z

    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    iput-byte v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    const/16 v0, 0x40

    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    iput-boolean v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    return-void
.end method

.method private createTimestampedByteBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "src",
            "info"
        }
    .end annotation

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    invoke-interface {p0, v0, v1}, Lnet/majorkernelpanic/streaming/io/ByteBufferPool;->acquire(IZ)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    move-result-object v0

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-wide v0, p2, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {p0, v0, v1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized configure()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    iget v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iget v3, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    invoke-virtual {v0, v1, v2, v3}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setDestination(Ljava/net/InetAddress;II)V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object v0

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iget-byte v2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    invoke-virtual {v0, v1, v2}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->setOutputStream(Ljava/io/OutputStream;B)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mConfigured:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t be called while streaming."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public createByteBufferPool()Lnet/majorkernelpanic/streaming/io/ByteBufferPool;
    .locals 9

    new-instance p0, Lnet/majorkernelpanic/streaming/io/ArrayByteBufferPool;

    const/4 v1, 0x0

    const/16 v2, 0x800

    const/high16 v3, 0x10000

    const/16 v4, 0x8

    const-wide/32 v5, 0x200000

    const-wide/32 v7, 0x200000

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lnet/majorkernelpanic/streaming/io/ArrayByteBufferPool;-><init>(IIIIJJ)V

    return-object p0
.end method

.method public getBitrate()J
    .locals 2

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getBitrate()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDestinationPorts()[I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 v1, 0x1

    aput p0, v0, v1

    return-object v0
.end method

.method public getLocalPorts()[I
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getRtpSocket()Lnet/majorkernelpanic/streaming/rtp/RtpSocket;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/RtpSocket;->getLocalPorts()[I

    move-result-object p0

    return-object p0
.end method

.method public getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;
    .locals 0

    iget-object p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    return-object p0
.end method

.method public getSSRC()I
    .locals 0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->getPacketizer()Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    move-result-object p0

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->getSSRC()I

    move-result p0

    return p0
.end method

.method public abstract getSessionDescription()Ljava/lang/String;
.end method

.method public getUseSharedMediaCodec()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    return p0
.end method

.method public isStreaming()Z
    .locals 0

    iget-boolean p0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    return p0
.end method

.method public declared-synchronized offerMediaCodecBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "info"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    const-string p1, "MediaStream"

    const-string p2, "offer: stream already closed, discard buffer"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferOutputStream:Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;

    invoke-direct {p0, p1, p2}, Lnet/majorkernelpanic/streaming/MediaStream;->createTimestampedByteBuffer(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;->write(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized recycleByteBuffer(Ljava/nio/ByteBuffer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z

    if-nez v0, :cond_0

    const-string p1, "MediaStream"

    const-string v0, "recycle: stream already closed, discard buffer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    invoke-interface {v0, p1}, Lnet/majorkernelpanic/streaming/io/ByteBufferPool;->release(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDestinationAddress(Ljava/net/InetAddress;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dest"
        }
    .end annotation

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    return-void
.end method

.method public setDestinationPorts(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dport"
        }
    .end annotation

    rem-int/lit8 v0, p1, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    add-int/2addr p1, v1

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    :goto_0
    return-void
.end method

.method public setDestinationPorts(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rtpPort",
            "rtcpPort"
        }
    .end annotation

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    iput p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    return-void
.end method

.method public setOutputStream(Ljava/io/OutputStream;B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "stream",
            "channelIdentifier"
        }
    .end annotation

    iput-object p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mOutputStream:Ljava/io/OutputStream;

    iput-byte p2, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mChannelIdentifier:B

    return-void
.end method

.method public setTimeToLive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ttl"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    return-void
.end method

.method public setUseSharedMediaCodec(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "shared"
        }
    .end annotation

    iput-boolean p1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mDestination:Ljava/net/InetAddress;

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtpPort:I

    if-lez v0, :cond_1

    iget v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mRtcpPort:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    iget v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mTTL:I

    invoke-virtual {v0, v1}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->setTimeToLive(I)V

    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mUseSharedMediaCodec:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    new-instance v0, Lnet/majorkernelpanic/streaming/io/QueuedByteBufferOutputStream;

    iget-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0, v1}, Lnet/majorkernelpanic/streaming/io/QueuedByteBufferOutputStream;-><init>(Ljava/util/concurrent/LinkedBlockingQueue;)V

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferOutputStream:Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;

    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->createByteBufferPool()Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    move-result-object v0

    iput-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    :cond_0
    invoke-virtual {p0}, Lnet/majorkernelpanic/streaming/MediaStream;->startStreaming()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ports set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination ip address set for the stream !"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract startStreaming()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public declared-synchronized stop()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mPacketizer:Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/rtp/AbstractPacketizer;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mMediaCodec:Landroid/media/MediaCodec;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_1
    :cond_0
    :try_start_4
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    if-eqz v0, :cond_1

    const-string v0, "MediaStream"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Statistics of ByteBufferPool in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    check-cast v0, Lnet/majorkernelpanic/streaming/io/ArrayByteBufferPool;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/io/ArrayByteBufferPool;->dump()V

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    invoke-interface {v0}, Lnet/majorkernelpanic/streaming/io/ByteBufferPool;->clear()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferPool:Lnet/majorkernelpanic/streaming/io/ByteBufferPool;

    :cond_1
    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferOutputStream:Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;

    invoke-virtual {v0}, Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;->close()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferOutputStream:Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;

    iget-object v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    iput-object v1, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mByteBufferQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/MediaStream;->mStreaming:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
