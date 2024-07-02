.class public Ld/o/w/d/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld/o/w/d/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ld/o/w/d/b/a/a/l/b$d;

.field private b:I


# direct methods
.method public constructor <init>(Ld/o/w/d/b/a/a/l/b$d;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemType",
            "nameResource"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ld/o/w/d/a/a$a;->a:Ld/o/w/d/b/a/a/l/b$d;

    .line 3
    iput p2, p0, Ld/o/w/d/a/a$a;->b:I

    return-void
.end method

.method public static synthetic a(Ld/o/w/d/a/a$a;)I
    .locals 0

    .line 1
    iget p0, p0, Ld/o/w/d/a/a$a;->b:I

    return p0
.end method


# virtual methods
.method public b()Ld/o/w/d/b/a/a/l/b$d;
    .locals 0

    .line 1
    iget-object p0, p0, Ld/o/w/d/a/a$a;->a:Ld/o/w/d/b/a/a/l/b$d;

    return-object p0
.end method

.method public c()I
    .locals 0

    .line 1
    iget p0, p0, Ld/o/w/d/a/a$a;->b:I

    return p0
.end method

.method public d(Ld/o/w/d/b/a/a/l/b$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemType"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ld/o/w/d/a/a$a;->a:Ld/o/w/d/b/a/a/l/b$d;

    return-void
.end method

.method public e(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameResource"
        }
    .end annotation

    .line 1
    iput p1, p0, Ld/o/w/d/a/a$a;->b:I

    return-void
.end method
