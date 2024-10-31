.class public LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field private static final o0000o0o:J = -0x26f6e7ac454e3980L


# instance fields
.field private final o0000o:I

.field private final o0000oO0:I

.field private final o0000oOO:I

.field private final o0000oOo:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000o:I

    iput p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oO0:I

    iput p3, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOO:I

    iput p4, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOo:I

    return-void
.end method


# virtual methods
.method public OooO00o()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOO:I

    return p0
.end method

.method public OooO0O0()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000o:I

    return p0
.end method

.method public OooO0OO()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOo:I

    return p0
.end method

.method public OooO0Oo()I
    .locals 0

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oO0:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[leased: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000o:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; pending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oO0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; available: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O0/OooOO0O;->o0000oOo:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
