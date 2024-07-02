.class public Lu/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lu/e;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lu/e;


# direct methods
.method public constructor <init>(Lu/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu/e$b;->c:Lu/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lu/e$b;->c:Lu/e;

    invoke-static {p0}, Lu/e;->a(Lu/e;)V

    return-void
.end method
