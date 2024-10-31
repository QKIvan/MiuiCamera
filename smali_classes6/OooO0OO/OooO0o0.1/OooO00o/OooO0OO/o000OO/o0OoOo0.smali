.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;
.super Ljava/lang/Object;

# interfaces
.implements LOooO0OO/OooO0o0/OooO00o/OooO0OO/Oooo0;


# instance fields
.field public final o0000o:Ljava/lang/String;

.field public final o0000o0o:Ljava/lang/String;

.field public final o0000oO0:Ljava/lang/Object;

.field public final o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o0o:Ljava/lang/String;

    iput-object p2, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o:Ljava/lang/String;

    iput-object p3, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oO0:Ljava/lang/Object;

    iput-object p4, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    return-void
.end method


# virtual methods
.method public OooO00o()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o0o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0O0()LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    return-object p0
.end method

.method public OooO0OO()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o:Ljava/lang/String;

    return-object p0
.end method

.method public OooO0Oo()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oO0:Ljava/lang/Object;

    return-object p0
.end method

.method public OooOoo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooOOO0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo0;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V

    return-void
.end method

.method public Oooo0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            LOooO0OO/OooO0o0/OooO00o/OooO0O0/Oooo0;
        }
    .end annotation

    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o0o:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;->o0000O0(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oO0:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p2, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;->OoooO0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {p2, v1, v3, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;->Ooooo00(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOOO;ZLOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000oOoO;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oO0:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000oOoO;->serialize(Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, v3, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;->Ooooo0o(Ljava/lang/Class;ZLOooO0OO/OooO0o0/OooO00o/OooO0OO/OooO0o;)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000oOoO;

    move-result-object v0

    iget-object v1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000oO0:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000oOoO;->serialize(Ljava/lang/Object;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000;)V

    :goto_0
    iget-object p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o0OoOo0;->o0000o:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOOO;->o0000O0(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
