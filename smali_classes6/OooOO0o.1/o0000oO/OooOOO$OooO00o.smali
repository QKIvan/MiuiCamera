.class public final LOooOO0o/o0000oO/OooOOO$OooO00o;
.super Ljava/util/AbstractList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOooOO0o/o0000oO/OooOOO;->o00oOoO0()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "LOooOO0/OooO00o;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic o0000o0o:LOooOO0o/o0000oO/OooOOO;


# direct methods
.method public constructor <init>(LOooOO0o/o0000oO/OooOOO;)V
    .locals 0

    iput-object p1, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public OooO00o(ILOooOO0/OooO00o;)V
    .locals 0

    iget-object p0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {p0, p1}, LOooOO0o/o0000oO/OooOOO;->o0O00Ooo(I)LOooOO0/OooO00o;

    move-result-object p0

    invoke-interface {p0, p2}, Lorg/apache/xmlbeans/XmlObject;->set(Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method

.method public OooO0OO(I)LOooOO0/OooO00o;
    .locals 0

    iget-object p0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {p0, p1}, LOooOO0o/o0000oO/OooOOO;->o00oooo(I)LOooOO0/OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public OooO0Oo(I)LOooOO0/OooO00o;
    .locals 1

    iget-object v0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {v0, p1}, LOooOO0o/o0000oO/OooOOO;->o00oooo(I)LOooOO0/OooO00o;

    move-result-object v0

    iget-object p0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {p0, p1}, LOooOO0o/o0000oO/OooOOO;->oo0o0Oo(I)V

    return-object v0
.end method

.method public OooO0o0(ILOooOO0/OooO00o;)LOooOO0/OooO00o;
    .locals 1

    iget-object v0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {v0, p1}, LOooOO0o/o0000oO/OooOOO;->o00oooo(I)LOooOO0/OooO00o;

    move-result-object v0

    iget-object p0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {p0, p1, p2}, LOooOO0o/o0000oO/OooOOO;->o00oOooo(ILOooOO0/OooO00o;)V

    return-object v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0

    check-cast p2, LOooOO0/OooO00o;

    invoke-virtual {p0, p1, p2}, LOooOO0o/o0000oO/OooOOO$OooO00o;->OooO00o(ILOooOO0/OooO00o;)V

    return-void
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LOooOO0o/o0000oO/OooOOO$OooO00o;->OooO0OO(I)LOooOO0/OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, LOooOO0o/o0000oO/OooOOO$OooO00o;->OooO0Oo(I)LOooOO0/OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, LOooOO0/OooO00o;

    invoke-virtual {p0, p1, p2}, LOooOO0o/o0000oO/OooOOO$OooO00o;->OooO0o0(ILOooOO0/OooO00o;)LOooOO0/OooO00o;

    move-result-object p0

    return-object p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, LOooOO0o/o0000oO/OooOOO$OooO00o;->o0000o0o:LOooOO0o/o0000oO/OooOOO;

    invoke-virtual {p0}, LOooOO0o/o0000oO/OooOOO;->o000Oo00()I

    move-result p0

    return p0
.end method
