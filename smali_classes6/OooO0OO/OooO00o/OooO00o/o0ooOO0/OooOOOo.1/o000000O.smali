.class public LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o00O0O;


# instance fields
.field private final OooO00o:Ljava/lang/String;

.field private final OooO0O0:I

.field private final OooO0OO:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOOO0;

.field private final OooO0Oo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOOO0;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO00o:Ljava/lang/String;

    iput p2, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0O0:I

    iput-object p3, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOOO0;

    iput-boolean p4, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0Oo:Z

    return-void
.end method


# virtual methods
.method public OooO00o(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;)LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/OooO0OO;
    .locals 1

    new-instance v0, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00Oo0;

    invoke-direct {v0, p1, p2, p0}, LOooO0OO/OooO00o/OooO00o/o00oO0o/OooO0O0/o00Oo0;-><init>(LOooO0OO/OooO00o/OooO00o/OooOOO0;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOo0/OooO00o;LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;)V

    return-object v0
.end method

.method public OooO0O0()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO00o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0OO()LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOOO0;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0OO:LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOO/OooOOO0;

    return-object p0
.end method

.method public OooO0Oo()Z
    .locals 0

    iget-boolean p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0Oo:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShapePath{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO00o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, LOooO0OO/OooO00o/OooO00o/o0ooOO0/OooOOOo/o000000O;->OooO0O0:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
