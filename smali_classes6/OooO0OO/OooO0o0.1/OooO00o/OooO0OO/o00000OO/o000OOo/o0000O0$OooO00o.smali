.class public LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;
.super LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;


# annotations
.annotation runtime LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000O0/OooO00o;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OooO00o"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;

.field private static final o0000o0o:J = 0x1L


# instance fields
.field public final o0000oO0:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;

    invoke-direct {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;-><init>()V

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;-><init>(Ljava/lang/Class;)V

    iput-boolean p1, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->o0000oO0:Z

    return-void
.end method

.method public static OooO0OO(Z)LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;
    .locals 1

    if-eqz p0, :cond_0

    new-instance p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;-><init>(Z)V

    return-object p0

    :cond_0
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;

    return-object p0
.end method


# virtual methods
.method public OooO0Oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    const/4 v3, 0x2

    if-ne v1, v2, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v4

    if-ne v4, v2, :cond_1

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0OOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;

    move-result-object v2

    invoke-virtual {v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO()[Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    move v1, v3

    :goto_0
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v6

    add-int/2addr v3, v0

    array-length v7, v4

    if-lt v1, v7, :cond_2

    invoke-virtual {v2, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0OO([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    move v1, v5

    :cond_2
    add-int/lit8 v7, v1, 0x1

    aput-object v6, v4, v1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v1

    sget-object v6, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v1, v6, :cond_3

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2, v4, v7, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0o0([Ljava/lang/Object;ILjava/util/List;)V

    return-object p0

    :cond_3
    move v1, v7

    goto :goto_0
.end method

.method public OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->ooOO()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000o0()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p0, Ljava/util/LinkedHashMap;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000o0()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    new-instance p0, Ljava/util/LinkedHashMap;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_1
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000o0()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    return-object v5
.end method

.method public OooO0o0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0OOO0o()LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO()[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v4

    array-length v5, v1

    if-lt v3, v5, :cond_0

    invoke-virtual {v0, v1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0OO([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move v3, v2

    :cond_0
    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v3

    sget-object v4, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v3, v4, :cond_1

    invoke-virtual {v0, v1, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o000OO/o00oO0o;->OooO0o([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method public deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OoooO0()I

    move-result v0

    const/4 v1, 0x2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-class p0, Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->OoooooO(Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000oOoO()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/4 p0, 0x0

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_5
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OoooO()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OooooOo()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    sget v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;->F_MASK_INT_COERCIONS:I

    invoke-virtual {p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->oo000o(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0O0O00;->_coerceIntegral(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OooooOo()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->ooOO()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v0

    sget-object v2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v0, v2, :cond_3

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0;->o0000o:[Ljava/lang/Object;

    return-object p0

    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object p0

    :cond_3
    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o0000oOO:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, v0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->OooO0o0(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->OooO0Oo(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_9
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object p0

    :pswitch_a
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v0

    sget-object v2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v0, v2, :cond_5

    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    return-object p0

    :cond_5
    :pswitch_b
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->OooO0o(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->o0000oO0:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OoooO0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v0, v1, :cond_2

    return-object p3

    :cond_2
    instance-of v0, p3, Ljava/util/Collection;

    if-eqz v0, :cond_a

    move-object v0, p3

    check-cast v0, Ljava/util/Collection;

    :cond_3
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v1

    sget-object v2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oOo:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v1, v2, :cond_3

    :cond_4
    return-object p3

    :cond_5
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    move-result-object v0

    sget-object v1, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;->o0000oO0:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    if-ne v0, v1, :cond_6

    return-object p3

    :cond_6
    instance-of v0, p3, Ljava/util/Map;

    if-eqz v0, :cond_a

    move-object v0, p3

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->Oooo()Ljava/lang/String;

    move-result-object v1

    :cond_7
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o0000O00()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o0OoOo0;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual {p0, p1, p2, v2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    if-eq v3, v2, :cond_9

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o00000o0()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_7

    return-object p3

    :cond_a
    :goto_1
    invoke-virtual {p0, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->deserialize(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OoooO0()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    packed-switch p0, :pswitch_data_0

    const-class p0, Ljava/lang/Object;

    invoke-virtual {p2, p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->OoooooO(Ljava/lang/Class;LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->o000oOoO()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/4 p0, 0x0

    return-object p0

    :pswitch_2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :pswitch_4
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o0000o0o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OoooO()Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OooooOo()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_5
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;->o0000o:LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;

    invoke-virtual {p2, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;->o0ooOOo(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOOO0;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->Oooo0()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->OooooOo()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;->ooOO()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :pswitch_7
    invoke-virtual {p3, p1, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o0000O00/OooO;->OooO0OO(LOooO0OO/OooO0o0/OooO00o/OooO0O0/OooOo;LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0O;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public supportsUpdate(LOooO0OO/OooO0o0/OooO00o/OooO0OO/OooOO0;)Ljava/lang/Boolean;
    .locals 0

    iget-boolean p0, p0, LOooO0OO/OooO0o0/OooO00o/OooO0OO/o00000OO/o000OOo/o0000O0$OooO00o;->o0000oO0:Z

    if-eqz p0, :cond_0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
