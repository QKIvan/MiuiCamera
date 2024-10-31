.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0o;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0o<",
        "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;


# instance fields
.field private final OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;

.field private final OooO0OO:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;-><init>()V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo;

    :goto_0
    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    sget-object p2, LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o00Oo0;

    :goto_1
    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;",
            "LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;",
            ")",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO0OO<",
            "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo000;

    iget-object v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo0;->OooO0OO:LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;

    invoke-direct {v0, p1, v1, p0, p2}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/Oooo000;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO0;LOooO0oo/OooO00o/OooO0O0/o000O00/o0OOO0o;LOooO0oo/OooO00o/OooO0O0/oo0o0Oo;LOooO0oo/OooO00o/OooO0O0/o000O0o/OooO0OO;)V

    return-object v0
.end method
