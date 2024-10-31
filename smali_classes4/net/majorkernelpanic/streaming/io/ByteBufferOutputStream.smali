.class public abstract Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;
.super Ljava/io/OutputStream;


# instance fields
.field public mClosed:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;->mClosed:Z

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/majorkernelpanic/streaming/io/ByteBufferOutputStream;->mClosed:Z

    return-void
.end method

.method public abstract write(Ljava/nio/ByteBuffer;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method
