.class public LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOO0<",
        "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;


# instance fields
.field private final OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;

    invoke-direct {v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;-><init>()V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;->OooO00o:LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;-><init>(LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V

    return-void
.end method

.method public constructor <init>(LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;

    :goto_0
    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;)LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;",
            ")",
            "LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooO<",
            "LOooO0oo/OooO00o/OooO0O0/o0OO00O;",
            ">;"
        }
    .end annotation

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o000oOoO;

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o0OoOo0;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;

    invoke-direct {v0, p1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O/o0O0O00/o000oOoO;-><init>(LOooO0oo/OooO00o/OooO0O0/o000Oo0/OooOOO;LOooO0oo/OooO00o/OooO0O0/o000O00/o0ooOOo;)V

    return-object v0
.end method
