.class public LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0oo/OooO00o/OooO0O0/OooOO0O;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation build LOooO0oo/OooO00o/OooO0O0/o000O000/OooO00o;
    threading = .enum LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;->o0000o0o:LOooO0oo/OooO00o/OooO0O0/o000O000/OooO0o;
.end annotation


# static fields
.field private static final o0000o:J = -0x4b516aaf286317beL

.field private static final o0000o0o:[LOooO0oo/OooO00o/OooO0O0/OooOOO0;


# instance fields
.field private final o0000oO0:Ljava/lang/String;

.field private final o0000oOO:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    sput-object v0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000o0o:[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Name"

    invoke-static {p1, v0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO00o;->OooOO0(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000oO0:Ljava/lang/String;

    iput-object p2, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000oOO:Ljava/lang/String;

    return-void
.end method


# virtual methods
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

.method public getElements()[LOooO0oo/OooO00o/OooO0O0/OooOOO0;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            LOooO0oo/OooO00o/OooO0O0/o0000;
        }
    .end annotation

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->getValue()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOO0O;->OooO0oO(Ljava/lang/String;LOooO0oo/OooO00o/OooO0O0/o000O00/o00oO0o;)[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000o0o:[LOooO0oo/OooO00o/OooO0O0/OooOOO0;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000oO0:Ljava/lang/String;

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooO0O0;->o0000oOO:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;->OooO0O0:LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, LOooO0oo/OooO00o/OooO0O0/o000O00/OooOo00;->OooO0OO(LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;LOooO0oo/OooO00o/OooO0O0/OooOO0O;)LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;

    move-result-object p0

    invoke-virtual {p0}, LOooO0oo/OooO00o/OooO0O0/o000O0O0/OooO0o;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
