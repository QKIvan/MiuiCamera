.class public final LOooO0o0/o00ooO/OooOO0O$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0o0/o00ooO/OooOO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# direct methods
.method public static OooO00o(LOooO0o0/o00ooO/OooOO0O;LOooO0o0/o00ooO/OooOO0O;)LOooO0o0/o00ooO/OooOO0O;
    .locals 1
    .param p0    # LOooO0o0/o00ooO/OooOO0O;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .param p1    # LOooO0o0/o00ooO/OooOO0O;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LOooO0o0/o00ooO/OooOOO;->o0000o0o:LOooO0o0/o00ooO/OooOOO;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, LOooO0o0/o00ooO/OooOO0O$OooO00o$OooO00o;->o0000o0o:LOooO0o0/o00ooO/OooOO0O$OooO00o$OooO00o;

    invoke-interface {p1, p0, v0}, LOooO0o0/o00ooO/OooOO0O;->OooO0OO(Ljava/lang/Object;LOooO0o0/o00ooOoO/o000O00/o0OoOo0;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LOooO0o0/o00ooO/OooOO0O;

    :goto_0
    return-object p0
.end method
