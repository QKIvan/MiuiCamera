.class public final LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOo;

.field public final OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;

.field public final OooO0OO:LOooO0OO/OooO0o0/OooO00o/OooO00o/OooO0o$OooO00o;


# direct methods
.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;LOooO0OO/OooO0o0/OooO00o/OooO00o/OooO0o$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;->OooO00o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/OooOo;

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;->OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;->OooO0OO:LOooO0OO/OooO0o0/OooO00o/OooO00o/OooO0o$OooO00o;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0OO00O;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;->OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;->getFullName()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0OO00O;

    move-result-object p0

    return-object p0
.end method

.method public OooO0O0()Z
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o0O0O00/OooO0o$OooO00o;->OooO0O0:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000Ooo/o00Ooo;->getFullName()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0OO00O;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0OO00O;->OooO0o()Z

    move-result p0

    return p0
.end method
