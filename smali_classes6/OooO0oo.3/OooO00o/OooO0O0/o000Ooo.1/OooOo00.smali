.class public LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOo00;
.super LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooO0o;


# instance fields
.field private final o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;)V
    .locals 1

    invoke-direct {p0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooO0o;-><init>()V

    const-string v0, "Content producer"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOo00;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;

    return-void
.end method


# virtual methods
.method public OooO0Oo()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public OooO0o0()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOo00;->writeTo(Ljava/io/OutputStream;)V

    new-instance p0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object p0
.end method

.method public isStreaming()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Output stream"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOo00;->o0000oOo:LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000Ooo/OooOOO;->writeTo(Ljava/io/OutputStream;)V

    return-void
.end method
