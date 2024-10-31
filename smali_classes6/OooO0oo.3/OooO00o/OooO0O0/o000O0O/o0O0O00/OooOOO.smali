.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;
.super LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO00o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO00o<",
        "LOooO0oo/OooO00o/OooO0O0/o0ooOOo;",
        ">;"
    }
.end annotation


# instance fields
.field private final OooO:LOooO0oo/OooO00o/OooO0O0/o0OOO0o;

.field private final OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;


# direct methods
.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;)V
    .locals 2

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2, p4}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO00o;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O00O/OooOOOO;)V

    const-string p1, "Request factory"

    invoke-static {p3, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o0OOO0o;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooO:LOooO0oo/OooO00o/OooO0O0/o0OOO0o;

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;-><init>(I)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO00o;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p3, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00O0O;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00O0O;

    :goto_0
    iput-object p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooO:LOooO0oo/OooO00o/OooO0O0/o0OOO0o;

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    const/16 p2, 0x80

    invoke-direct {p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;-><init>(I)V

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;)LOooO0oo/OooO00o/OooO0O0/o00oO0o;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            LOooO0oo/OooO00o/OooO0O0/o0000;
        }
    .end annotation

    invoke-virtual {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooO0o0(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;)LOooO0oo/OooO00o/OooO0O0/o0ooOOo;

    move-result-object p0

    return-object p0
.end method

.method public OooO0o0(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;)LOooO0oo/OooO00o/OooO0O0/o0ooOOo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0oo/OooO00o/OooO0O0/o00O0O;,
            LOooO0oo/OooO00o/OooO0O0/o0000;
        }
    .end annotation

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-virtual {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->OooOO0O()V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-interface {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    new-instance p1, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;

    const/4 v0, 0x0

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-virtual {v1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->length()I

    move-result v1

    invoke-direct {p1, v0, v1}, LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;-><init>(II)V

    iget-object v0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooO00o;->OooO0o:LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooOO0:LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    invoke-interface {v0, v1, p1}, LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;->OooO0o0(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;LOooO0oo/OooO00o/OooO0O0/o000O00/o0Oo0oo;)LOooO0oo/OooO00o/OooO0O0/o0000O0O;

    move-result-object p1

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/OooOOO;->OooO:LOooO0oo/OooO00o/OooO0O0/o0OOO0o;

    invoke-interface {p0, p1}, LOooO0oo/OooO00o/OooO0O0/o0OOO0o;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o0000O0O;)LOooO0oo/OooO00o/OooO0O0/o0ooOOo;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/OooO00o;

    const-string p1, "Client closed connection"

    invoke-direct {p0, p1}, LOooO0oo/OooO00o/OooO0O0/OooO00o;-><init>(Ljava/lang/String;)V

    throw p0
.end method
