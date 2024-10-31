.class public final LOooO0oo/OooO00o/OooO0O0/o000000O;
.super LOooO0oo/OooO00o/OooO0O0/o0000oo;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field public static final o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

.field private static final o0000oOo:J = -0x514703574c384bf0L

.field public static final o0000oo0:Ljava/lang/String; = "HTTP"

.field public static final o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000000O;

.field public static final o000O000:LOooO0oo/OooO00o/OooO0O0/o000000O;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000000O;

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, LOooO0oo/OooO00o/OooO0O0/o000000O;-><init>(II)V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000000O;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000000O;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, LOooO0oo/OooO00o/OooO0O0/o000000O;-><init>(II)V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    new-instance v0, LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-direct {v0, v2, v2}, LOooO0oo/OooO00o/OooO0O0/o000000O;-><init>(II)V

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000O000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const-string v0, "HTTP"

    invoke-direct {p0, v0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o0000oo;-><init>(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public OooO0O0(II)LOooO0oo/OooO00o/OooO0O0/o0000oo;
    .locals 1

    iget v0, p0, LOooO0oo/OooO00o/OooO0O0/o0000oo;->o0000oO0:I

    if-ne p1, v0, :cond_0

    iget v0, p0, LOooO0oo/OooO00o/OooO0O0/o0000oo;->o0000oOO:I

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_2

    if-nez p2, :cond_1

    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    return-object p0

    :cond_1
    if-ne p2, p0, :cond_2

    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o000O000:LOooO0oo/OooO00o/OooO0O0/o000000O;

    return-object p0

    :cond_2
    if-nez p1, :cond_3

    const/16 p0, 0x9

    if-ne p2, p0, :cond_3

    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000000O;->o0000ooO:LOooO0oo/OooO00o/OooO0O0/o000000O;

    return-object p0

    :cond_3
    new-instance p0, LOooO0oo/OooO00o/OooO0O0/o000000O;

    invoke-direct {p0, p1, p2}, LOooO0oo/OooO00o/OooO0O0/o000000O;-><init>(II)V

    return-object p0
.end method
