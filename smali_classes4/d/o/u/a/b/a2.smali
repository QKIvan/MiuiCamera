.class public final synthetic Ld/o/u/a/b/a2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld/d/a/n6/f/q$b;


# instance fields
.field public final synthetic a:Ld/o/u/a/b/p3;


# direct methods
.method public synthetic constructor <init>(Ld/o/u/a/b/p3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld/o/u/a/b/a2;->a:Ld/o/u/a/b/p3;

    return-void
.end method


# virtual methods
.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p0, p0, Ld/o/u/a/b/a2;->a:Ld/o/u/a/b/p3;

    invoke-virtual {p0, p1}, Ld/o/u/a/b/p3;->im(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
