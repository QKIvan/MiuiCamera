.class public LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/o0000O0O;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field private static final o0000o0o:J = 0x2701312e8d8938a9L


# instance fields
.field private final o0000o:LOooO0oo/OooO00o/OooO0O0/o0000oo;

.field private final o0000oO0:Ljava/lang/String;

.field private final o0000oOO:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;LOooO0oo/OooO00o/OooO0O0/o0000oo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Method"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000oO0:Ljava/lang/String;

    const-string p1, "URI"

    invoke-static {p2, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000oOO:Ljava/lang/String;

    const-string p1, "Version"

    invoke-static {p3, p1}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LOooO0oo/OooO00o/OooO0O0/o0000oo;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000o:LOooO0oo/OooO00o/OooO0O0/o0000oo;

    return-void
.end method


# virtual methods
.method public OooO00o()LOooO0oo/OooO00o/OooO0O0/o0000oo;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000o:LOooO0oo/OooO00o/OooO0O0/o0000oo;

    return-object p0
.end method

.method public clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000oO0:Ljava/lang/String;

    return-object p0
.end method

.method public getUri()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/o000oOoO;->o0000oOO:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;->OooO0O0(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;LOooO0oo/OooO00o/OooO0O0/o0000O0O;)LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
