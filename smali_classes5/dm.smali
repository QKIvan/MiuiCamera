.class public final enum Ldm;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Ldm;

.field public static final enum b:Ldm;

.field public static final enum c:Ldm;

.field public static final enum d:Ldm;

.field public static final enum e:Ldm;

.field public static final enum f:Ldm;

.field public static final enum g:Ldm;

.field public static final enum h:Ldm;

.field public static final enum i:Ldm;

.field public static final enum j:Ldm;

.field private static final synthetic l:[Ldm;


# instance fields
.field private final k:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    const-class v0, Ljava/lang/Integer;

    new-instance v1, Ldm;

    const-class v2, Ljava/lang/Void;

    const-string v3, "VOID"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v1, Ldm;->a:Ldm;

    new-instance v2, Ldm;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "INT"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v5, v0}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v2, Ldm;->b:Ldm;

    new-instance v3, Ldm;

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    const-string v7, "LONG"

    const/4 v8, 0x2

    invoke-direct {v3, v7, v8, v6}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v3, Ldm;->c:Ldm;

    new-instance v6, Ldm;

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v7, Ljava/lang/Float;

    const-string v9, "FLOAT"

    const/4 v10, 0x3

    invoke-direct {v6, v9, v10, v7}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v6, Ldm;->d:Ldm;

    new-instance v7, Ldm;

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v9, Ljava/lang/Double;

    const-string v11, "DOUBLE"

    const/4 v12, 0x4

    invoke-direct {v7, v11, v12, v9}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v7, Ldm;->e:Ldm;

    new-instance v9, Ldm;

    const-class v11, Ljava/lang/Boolean;

    const-string v13, "BOOLEAN"

    const/4 v14, 0x5

    invoke-direct {v9, v13, v14, v11}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v9, Ldm;->f:Ldm;

    new-instance v11, Ldm;

    const-class v13, Ljava/lang/String;

    const-string v15, "STRING"

    const/4 v14, 0x6

    invoke-direct {v11, v15, v14, v13}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v11, Ldm;->g:Ldm;

    new-instance v13, Ldm;

    sget-object v15, Lck;->b:Lck;

    const-class v15, Lck;

    const-string v14, "BYTE_STRING"

    const/4 v12, 0x7

    invoke-direct {v13, v14, v12, v15}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v13, Ldm;->h:Ldm;

    new-instance v14, Ldm;

    const-string v15, "ENUM"

    const/16 v12, 0x8

    invoke-direct {v14, v15, v12, v0}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v14, Ldm;->i:Ldm;

    new-instance v0, Ldm;

    const-class v15, Ljava/lang/Object;

    const-string v12, "MESSAGE"

    const/16 v10, 0x9

    invoke-direct {v0, v12, v10, v15}, Ldm;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Ldm;->j:Ldm;

    const/16 v12, 0xa

    new-array v12, v12, [Ldm;

    aput-object v1, v12, v4

    aput-object v2, v12, v5

    aput-object v3, v12, v8

    const/4 v1, 0x3

    aput-object v6, v12, v1

    const/4 v1, 0x4

    aput-object v7, v12, v1

    const/4 v1, 0x5

    aput-object v9, v12, v1

    const/4 v1, 0x6

    aput-object v11, v12, v1

    const/4 v1, 0x7

    aput-object v13, v12, v1

    const/16 v1, 0x8

    aput-object v14, v12, v1

    aput-object v0, v12, v10

    sput-object v12, Ldm;->l:[Ldm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Ldm;->k:Ljava/lang/Class;

    return-void
.end method

.method public static values()[Ldm;
    .locals 1

    sget-object v0, Ldm;->l:[Ldm;

    invoke-virtual {v0}, [Ldm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldm;

    return-object v0
.end method
