.class public Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AnimEndTransitionListener"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AnimEndTransitionListen"


# instance fields
.field private final weakReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subScribe"
        }
    .end annotation

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->weakReference:Ljava/lang/ref/SoftReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;-><init>(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)V

    return-void
.end method

.method private onEndAction()V
    .locals 2

    iget-object p0, p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->weakReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "AnimEndTransitionListen"

    const-string/jumbo v1, "onComplete: subScribe is null, returning."

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->onAnimationEnd()V

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$100(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;->access$100(Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe;)Lio/reactivex/CompletableEmitter;

    move-result-object p0

    invoke-interface {p0}, Lio/reactivex/CompletableEmitter;->onComplete()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toTag"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->onEndAction()V

    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "toTag"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/animation/folme/FolmeBaseOnSubScribe$AnimEndTransitionListener;->onEndAction()V

    return-void
.end method
