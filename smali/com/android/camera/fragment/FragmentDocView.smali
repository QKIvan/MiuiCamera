.class public Lcom/android/camera/fragment/FragmentDocView;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/protocol/protocols/DocViewProtocol;
.implements Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;
.implements Lcom/android/camera/ui/DragLayout$OnDragListener;


# static fields
.field public static final FRAGMENT_INFO:I = 0xff9

.field private static final TAG:Ljava/lang/String; = "FragmentDocView"


# instance fields
.field private mDocumentView:Lcom/android/camera/ui/DocumentView;

.field private mEditPopupTip:Landroid/view/View;

.field private mHideEditPopupTip:Z

.field private mIsFirstInit:Z

.field private mIsNeedDocView:Z

.field private mIsPopupTipReady:Z

.field private mLastZoomVisibility:Z

.field private mNeedAdjustEditPopupTipPosition:Z

.field private mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsNeedDocView:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    return-void
.end method

.method private hideOrShowPrivacyWatermarkView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->show()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->hide()V

    :goto_0
    return-void
.end method

.method private isEditPopupTipShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "view"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->isEditPopupTipShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentDocView;->gotoEditPage()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStart$1(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modePopupController"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->addOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    return-void
.end method

.method private synthetic lambda$onStop$2(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "modePopupController"
        }
    .end annotation

    invoke-interface {p1, p0}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->removeOnDragListener(Lcom/android/camera/ui/DragLayout$OnDragListener;)V

    return-void
.end method

.method private updateEditPopupTipBackground()V
    .locals 1

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getPaintCondition()Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/PaintConditionReferred;->popupSolidPattern()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v0, 0x7f08014e

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getBottomTipsBg()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private updateView(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dataChangeType"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/Util;->getCameraPreviewRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragment;->mAppController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/AppController;

    invoke-interface {v1}, Lcom/android/camera/AppController;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/Module;->getCameraManager()Lcom/android/camera/module/common/ModuleCameraManagerInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/module/common/ModuleCameraManagerInterface;->getPreviewSize()Lcom/android/camera/CameraSize;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Util.getCameraPreviewRect() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , preview Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "FragmentDocView"

    invoke-static {v5, v2, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Lcom/android/camera/ui/DocumentView;->setDisplaySize(II)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    iget v4, v1, Lcom/android/camera/CameraSize;->width:I

    iget v1, v1, Lcom/android/camera/CameraSize;->height:I

    invoke-virtual {v2, v4, v1}, Lcom/android/camera/ui/DocumentView;->setPreviewSize(II)V

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v1

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v4, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {v2, v4, v0}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setViewSize(II)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-static {}, Lcom/android/camera/CameraSettings;->getPrivacyWatermark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setPrivacyWatermark(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    :cond_1
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    if-eqz p1, :cond_5

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707f2

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sub-float/2addr v0, p1

    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    if-eqz v2, :cond_3

    const/16 v2, 0xba

    invoke-static {v2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomVisible(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsFirstInit:Z

    :cond_3
    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    add-float/2addr v0, p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0704a2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    sub-float/2addr v0, p1

    :cond_4
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    :cond_5
    iget-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    if-nez p1, :cond_6

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    :cond_6
    return-void
.end method


# virtual methods
.method public synthetic OooO0OO(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public synthetic OooO0Oo(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->lambda$onStart$1(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V

    return-void
.end method

.method public synthetic OooO0o0(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->lambda$onStop$2(Lcom/android/camera/protocol/protocols/MoreModePopupController;)V

    return-void
.end method

.method public clearDocView()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsNeedDocView:Z

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/ui/DocumentView;->clear()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getFragmentInto()I
    .locals 0

    const/16 p0, 0xff9

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0095

    return p0
.end method

.method public gotoEditPage()V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Lcom/android/camera/ActivityBase;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    const-class v0, Lcom/android/camera/privacywatermark/PrivacyWatermarkEditActivity;

    invoke-static {p0, v0}, Lcom/android/camera/ActivityLauncher;->launch(Landroid/app/Activity;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public hideOrShowDocument(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->hideOrShowPath(Z)V

    :cond_0
    return-void
.end method

.method public hideOrShowEditPopupTip(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/camera/Util;->isFromSecureKeyguard()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-direct {p1, p0}, Lcom/android/camera/animation/folme/FolmeAlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {p1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    invoke-static {p0}, Lcom/android/camera/animation/folme/FolmeAlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initView(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "FragmentDocView"

    const-string v3, "initView: started"

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const v1, 0x7f0a0185

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ui/DocumentView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const v1, 0x7f0a0424

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    iput-object v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    const v1, 0x7f0a0407

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v1, 0x7f0a0409

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->getEnterPopupTipIcon()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const v1, 0x7f0a040a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTips()Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTipsInterface;->setShadowLayer(Landroid/widget/TextView;)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000Oo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000Oo;-><init>(Lcom/android/camera/fragment/FragmentDocView;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentDocView;->togglePrivacyWatermarkView(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsPopupTipReady:Z

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsNeedDocView:Z

    invoke-static {}, Lcom/android/camera/protocol/protocols/BaseDelegate;->impl2()Lcom/android/camera/protocol/protocols/BaseDelegate;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/BaseDelegate;->getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setRotation(I)V

    :cond_0
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dataChangeType",
            "currentMode"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->updateView(I)V

    return-void
.end method

.method public notifyThemeChanged(ILjava/util/List;I)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportFlashScreenHalo"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "themeChangeType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->notifyThemeChanged(ILjava/util/List;I)V

    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "supportMultiWindow"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDragDone(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    return-void
.end method

.method public onDragProgress(IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "translationY",
            "up"
        }
    .end annotation

    iget-object p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    invoke-static {}, Lcom/android/camera/ui/DragLayout;->getAnimationConfig()Lcom/android/camera/ui/DragLayout$DragAnimationConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/camera/ui/DragLayout$DragAnimationConfig;->getDisappearDistance()F

    move-result p2

    div-float/2addr p1, p2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    sub-float/2addr p2, p1

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onDragStart(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "up"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mEditPopupTip:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/DocumentView;->clear()V

    :cond_0
    return-void
.end method

.method public onPromptExpand(Ljava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "finishCb"
        }
    .end annotation

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    return-void
.end method

.method public onPromptShrink(ZLjava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isPadOrFoldingPhone"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "withAnim",
            "finishCb"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsNeedDocView:Z

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStart()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000O;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000O;-><init>(Lcom/android/camera/fragment/FragmentDocView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPrivacyWatermarkEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mHideEditPopupTip:Z

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onStop()V

    invoke-static {}, Lcom/android/camera/CameraSettings;->getMoreModeStyle()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/protocol/protocols/MoreModePopupController;->impl()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000o0;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO0000o0;-><init>(Lcom/android/camera/fragment/FragmentDocView;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "newMode",
            "animateInElements",
            "resetType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lio/reactivex/Completable;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;I)V

    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    const/16 p2, 0xba

    invoke-static {p2}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;->isZoomVisible(I)Z

    move-result p2

    iget-boolean p3, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    if-eq p3, p2, :cond_0

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastZoomVisibility="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mLastZoomVisibility:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", newZoomVisibility="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, p1, [Ljava/lang/Object;

    const-string v0, "FragmentDocView"

    invoke-static {v0, p2, p3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    :cond_0
    iget-boolean p2, p0, Lcom/android/camera/fragment/FragmentDocView;->mNeedAdjustEditPopupTipPosition:Z

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentDocView;->updateEditPopupTipBackground()V

    return-void
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pendingRotateItems",
            "newDegree"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "provideRotateItem: newDegree="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "FragmentDocView"

    invoke-static {v1, p1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mPrivacyWatermarkView:Lcom/android/camera/privacywatermark/PrivacyWatermarkView;

    invoke-virtual {p0, p2}, Lcom/android/camera/privacywatermark/PrivacyWatermarkView;->setRotation(I)V

    return-void
.end method

.method public register(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public togglePrivacyWatermarkView(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowPrivacyWatermarkView(Z)V

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->hideOrShowEditPopupTip(Z)V

    return-void
.end method

.method public unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modeCoordinator"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeCoordinator;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/DocViewProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object p1

    const-class v0, Lcom/android/camera/protocol/protocols/PrivacyWatermarkProtocol;

    invoke-virtual {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateDocument(Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "points"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Lcom/xiaomi/ocr/sdk/imgprocess/DocumentProcess$QuadStatus;",
            "[F>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x8

    if-eqz p1, :cond_3

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, [F

    array-length v1, v1

    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentDocView;->mIsNeedDocView:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, p1}, Lcom/android/camera/ui/DocumentView;->updateDocument(Landroid/util/Pair;)V

    return-void

    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p1}, Lcom/android/camera/ui/DocumentView;->clear()V

    iget-object p0, p0, Lcom/android/camera/fragment/FragmentDocView;->mDocumentView:Lcom/android/camera/ui/DocumentView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "savedInstanceState"
        }
    .end annotation

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/FragmentDocView;->updateView(I)V

    return-void
.end method
