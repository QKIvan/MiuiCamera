.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:Ljava/io/InputStream;

.field public final OooO0O0:[B

.field public final OooO0OO:I

.field public final OooO0Oo:I

.field public final OooO0o:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;

.field public final OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[BIILOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO00o:Ljava/io/InputStream;

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0O0:[B

    iput p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0OO:I

    iput p4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0Oo:I

    iput-object p5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;

    iput-object p6, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;->OooO0oo()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOO0;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO00o:Ljava/io/InputStream;

    if-nez v1, :cond_1

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0O0:[B

    iget v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0OO:I

    iget p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0Oo:I

    invoke-virtual {v0, v1, v2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOO0;->OooOo00([BII)LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0O0()Ljava/io/InputStream;

    move-result-object p0

    invoke-virtual {v0, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOO0;->OooOOOO(Ljava/io/InputStream;)LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0()Ljava/io/InputStream;
    .locals 9

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO00o:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0O0:[B

    iget v2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0OO:I

    iget p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0Oo:I

    invoke-direct {v0, v1, v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0

    :cond_0
    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOOO0;

    const/4 v4, 0x0

    iget-object v5, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO00o:Ljava/io/InputStream;

    iget-object v6, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0O0:[B

    iget v7, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0OO:I

    iget v8, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0Oo:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOOO0;-><init>(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO0o;Ljava/io/InputStream;[BII)V

    return-object v0
.end method

.method public OooO0OO()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;

    if-nez p0, :cond_0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000O/OooO0o;

    :cond_0
    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;->OooO0oo()LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOO0;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOO0;->OooOo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o()Z
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public OooO0o0()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/OooOo$OooO0O0;->OooO0o0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0ooOOo;

    return-object p0
.end method
