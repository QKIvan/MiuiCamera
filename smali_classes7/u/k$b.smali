.class public final enum Lu/k$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu/k$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lu/k$b;

.field public static final enum d:Lu/k$b;

.field public static final enum f:Lu/k$b;

.field private static final synthetic g:[Lu/k$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lu/k$b;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lu/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/k$b;->c:Lu/k$b;

    .line 2
    new-instance v1, Lu/k$b;

    const-string v3, "HEAD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lu/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lu/k$b;->d:Lu/k$b;

    .line 3
    new-instance v3, Lu/k$b;

    const-string v5, "SECTION"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lu/k$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lu/k$b;->f:Lu/k$b;

    const/4 v5, 0x3

    new-array v5, v5, [Lu/k$b;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lu/k$b;->g:[Lu/k$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/k$b;
    .locals 1

    .line 1
    const-class v0, Lu/k$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu/k$b;

    return-object p0
.end method

.method public static values()[Lu/k$b;
    .locals 1

    .line 1
    sget-object v0, Lu/k$b;->g:[Lu/k$b;

    invoke-virtual {v0}, [Lu/k$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/k$b;

    return-object v0
.end method
