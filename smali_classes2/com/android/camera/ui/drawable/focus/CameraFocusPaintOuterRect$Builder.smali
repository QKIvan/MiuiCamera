.class public final Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mRoundRadius:I

.field private mStickLength:I

.field private mStrokeWidthDp:F


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    iput-object p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method public static aCameraFocusPaintOuterRect(Landroid/content/Context;)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public build()Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;
    .locals 2

    new-instance v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;

    iget-object v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStickLength:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStickLength:I

    iget v1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mStrokeWidthDp:F

    iget p0, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mRoundRadius:I

    iput p0, v0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->mRoundRadius:I

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect;->reInitPaint()V

    return-object v0
.end method

.method public withRoundRadius(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mRoundRadius"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mRoundRadius:I

    return-object p0
.end method

.method public withStickLength(I)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mStickLength"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStickLength:I

    return-object p0
.end method

.method public withStrokeWidthDp(F)Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mStrokeWidthDp"
        }
    .end annotation

    iput p1, p0, Lcom/android/camera/ui/drawable/focus/CameraFocusPaintOuterRect$Builder;->mStrokeWidthDp:F

    return-object p0
.end method
