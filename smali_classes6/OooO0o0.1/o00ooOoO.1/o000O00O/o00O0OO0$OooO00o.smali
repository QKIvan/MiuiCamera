.class public final LOooO0o0/o00ooOoO/o000O00O/o00O0OO0$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lkotlin/jvm/internal/TypeParameterReference$Companion;",
        "",
        "()V",
        "toString",
        "",
        "typeParameter",
        "Lkotlin/reflect/KTypeParameter;",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0o0/o00ooOoO/o000O00O/o00O0OO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO0o0/o00ooOoO/o000O00O/o00O0OO0$OooO00o$OooO00o;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LOooO0o0/o00ooOoO/o000O00O/o0OOO0o;)V
    .locals 0

    invoke-direct {p0}, LOooO0o0/o00ooOoO/o000O00O/o00O0OO0$OooO00o;-><init>()V

    return-void
.end method


# virtual methods
.method public final OooO00o(LOooO0o0/o00ooo0o/o00O0000;)Ljava/lang/String;
    .locals 2
    .param p1    # LOooO0o0/o00ooo0o/o00O0000;
        .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
        .end annotation
    .end param
    .annotation build LOooO0oo/OooO0OO/OooO00o/OooOOO;
    .end annotation

    const-string/jumbo p0, "typeParameter"

    invoke-static {p1, p0}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOo(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, LOooO0o0/o00ooo0o/o00O0000;->OooO0oo()LOooO0o0/o00ooo0o/o00oOoo;

    move-result-object v0

    sget-object v1, LOooO0o0/o00ooOoO/o000O00O/o00O0OO0$OooO00o$OooO00o;->OooO00o:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "out "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v0, "in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-interface {p1}, LOooO0o0/o00ooo0o/o00O0000;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, p1}, LOooO0o0/o00ooOoO/o000O00O/o0000oo;->OooOOOO(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
