.class public final LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OooO0O0"
.end annotation


# instance fields
.field public final OooO00o:I

.field public final OooO0O0:I

.field public final OooO0OO:[Ljava/lang/String;

.field public final OooO0Oo:[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;


# direct methods
.method public constructor <init>(II[Ljava/lang/String;[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO00o:I

    iput p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0O0:I

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0OO:[Ljava/lang/String;

    iput-object p4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0Oo:[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

    return-void
.end method

.method public constructor <init>(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;->OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;)I

    move-result v0

    iput v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO00o:I

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;->OooO0oO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;)I

    move-result v0

    iput v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0O0:I

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;->OooO0oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0OO:[Ljava/lang/String;

    invoke-static {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;->OooO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O;)[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

    move-result-object p1

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;->OooO0Oo:[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

    return-void
.end method

.method public static OooO00o(I)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;
    .locals 3

    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;

    new-array v1, p0, [Ljava/lang/String;

    shr-int/lit8 p0, p0, 0x1

    new-array p0, p0, [LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO0O0;-><init>(II[Ljava/lang/String;[LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000o0/OooOO0O$OooO00o;)V

    return-object v0
.end method
