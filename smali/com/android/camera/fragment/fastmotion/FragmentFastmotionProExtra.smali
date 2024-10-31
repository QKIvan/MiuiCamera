.class public Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/protocol/protocols/ProExtra;
.implements Lcom/android/camera/fragment/manually/ManuallyListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;
    }
.end annotation


# static fields
.field public static final FRAGMENT_INFO:I = 0xfffff2

.field private static final TAG:Ljava/lang/String; = "FragmentFastmotionProExtra"


# instance fields
.field private mAutoButton:Lcom/android/camera/ui/ActivateImageView;

.field private mAutoButtonLayout:Landroid/widget/LinearLayout;

.field private mCurrentTitle:I

.field private mData:Lcom/android/camera/data/data/ComponentData;

.field private mExtraLayout:Landroid/view/View;

.field private mExtraList:Landroidx/recyclerview/widget/RecyclerView;

.field private mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

.field private mHorizontalViewLayout:Landroid/widget/LinearLayout;

.field private mNeedAnimation:Z

.field private mRootView:Landroid/view/View;

.field private mRootViewWidth:F

.field private mShowOrHideAnimatorSet:Landroid/animation/AnimatorSet;

.field private mTargetKey:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    return-void
.end method

.method public static synthetic access$002(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mShowOrHideAnimatorSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method private animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "isShow",
            "onComplete"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateEntrance(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private animateShowView(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-boolean p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/android/camera/animation/FolmeUtils;->animateShow(Landroid/view/View;)Lmiuix/animation/IVisibleStyle;

    :cond_0
    return-void
.end method

.method private hideView()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mShowOrHideAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private initAdapter(Lcom/android/camera/data/data/ComponentData;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V

    :cond_0
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f12078f -> :sswitch_2
        0x7f1207b0 -> :sswitch_2
        0x7f12084d -> :sswitch_1
        0x7f120893 -> :sswitch_2
        0x7f1208b4 -> :sswitch_0
    .end sparse-switch
.end method

.method private initHorizontalListView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v2, v3, p1, v4, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    const p1, 0x7f12078f

    const v3, 0x7f07047b

    const/4 v5, 0x1

    if-eq v0, p1, :cond_1

    const p1, 0x7f1207b0

    if-eq v0, p1, :cond_0

    const p1, 0x7f120893

    if-eq v0, p1, :cond_1

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v0, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070479

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p1, v0, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v0, 0x7f1208eb

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string p1, "0"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, v4, v4}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {v2, v1}, Lcom/android/camera/fragment/manually/adapter/ExtraHorizontalListAdapter;->mapValueToPosition(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1, v0, v5}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v0, 0x0

    invoke-virtual {p1, v2, v0}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initSlideFocusView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v2, 0x7f1208eb

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v1

    invoke-virtual {p1, v5, v1}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v5}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {v1, v3, v3}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraFocusAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, p1, v5}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070479

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07047b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private initWBRecyclerView(Lcom/android/camera/data/data/ComponentData;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->hideView()V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07047e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mRootViewWidth:F

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getItems()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v2

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget v7, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    move-object v4, p1

    move-object v6, p0

    invoke-interface/range {v2 .. v8}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getExtraRecyclerViewAdapter(Lcom/android/camera/fragment/BaseFragment;Lcom/android/camera/data/data/ComponentData;ILcom/android/camera/fragment/manually/ManuallyListener;II)Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    move-result-object p1

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "manually_extra_list"

    invoke-direct {v0, v2, v3}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    invoke-virtual {v0, v2}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;->setScrollEnabled(Z)V

    iget-object v3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecorationAt(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v3, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$ItemPadding;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateShowView(Landroid/view/View;)V

    return-void
.end method

.method private performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "oldValue",
            "newValue"
        }
    .end annotation

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    :try_start_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    rem-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0Oo()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOO0o()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "FragmentFastmotionProExtra"

    invoke-static {p1, p0}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setWidthAndGravity(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getCenterDisplayWidth()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070497

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    :goto_0
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mRootViewWidth:F

    const/4 p0, 0x1

    iput p0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-void
.end method

.method private toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fromView",
            "toView",
            "isShow"
        }
    .end annotation

    iput-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0704af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v3, 0x2

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-static {p2, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p3, :cond_0

    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v3, v3, [F

    neg-int v1, v1

    int-to-float v1, v1

    aput v1, v3, v5

    aput v2, v3, v4

    invoke-static {p2, p3, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance p3, Landroid/animation/AnimatorSet;

    invoke-direct {p3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v0, Lmiuix/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiuix/view/animation/CubicEaseOutInterpolator;-><init>()V

    invoke-virtual {p3, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v0, 0x190

    invoke-virtual {p3, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra$1;-><init>(Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p3}, Landroid/animation/AnimatorSet;->start()V

    iput-object p3, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mShowOrHideAnimatorSet:Landroid/animation/AnimatorSet;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public animateOut()V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    return-void
.end method

.method public getCurrentTitle()I
    .locals 0

    iget p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfffff2

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d00b8

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mRootView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->setWidthAndGravity(Landroid/view/View;)V

    const v0, 0x7f0a0332

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraLayout:Landroid/view/View;

    const v0, 0x7f0a0333

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    const v0, 0x7f0a0331

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/HorizontalZoomView;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v0, 0x7f0a0330

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a032f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoImageView(Landroid/content/Context;)Lcom/android/camera/ui/ActivateImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->impl2()Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->getSelectComponentData()Lcom/android/camera/data/data/ComponentData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    :cond_1
    return-void
.end method

.method public notifyDataChanged(II)V
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

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

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    const/4 v1, -0x1

    const-string v2, "0"

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v1, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v2

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :sswitch_1
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyET()Lcom/android/camera/data/data/config/ComponentManuallyET;

    move-result-object v4

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v6, "0"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :sswitch_2
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    goto :goto_0

    :sswitch_3
    check-cast p1, Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->tintColor()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1, v1, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getmComponentManuallyISO()Lcom/android/camera/data/data/config/ComponentManuallyISO;

    move-result-object v4

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {v4, p1, v2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p1}, Lcom/android/camera/ui/HorizontalZoomView;->getDrawAdapter()Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;->setCurrentValue(Ljava/lang/String;)V

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    const-string v6, "0"

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f12078f -> :sswitch_3
        0x7f12084d -> :sswitch_2
        0x7f120893 -> :sswitch_1
        0x7f1208b4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDestroyView()V
    .locals 3

    invoke-static {}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->impl2()Lcom/android/camera/protocol/protocols/MainContentProtocol;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v2, v1}, Lcom/android/camera/protocol/protocols/MainContentProtocol;->updateMaskCover(ZIZ)V

    :cond_0
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onDestroyView()V

    return-void
.end method

.method public onManuallyDataChanged(Lcom/android/camera/data/data/ComponentData;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "componentData",
            "oldValue",
            "newValue",
            "isCustomValue",
            "currentMode"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragment;->isEnableClick()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    if-eq p5, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->impl2()Lcom/android/camera/protocol/protocols/ManuallyValueChanged;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lcom/android/camera/protocol/protocols/TopAlert;->impl2()Lcom/android/camera/protocol/protocols/TopAlert;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/protocols/utils/RunningStateUtil;->isRecording()Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result v3

    const/16 v4, 0x3e8

    const-string v5, "0"

    const/4 v6, 0x7

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_3

    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    const/16 p4, 0x9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/camera/CameraSettings;->getManualFocusName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p4, v7, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_3
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onFocusValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyFocus;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_9

    invoke-direct {p0, p2, p3}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->performFocusValueChangedViberator(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_4

    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    const/4 p4, 0x6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v4}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p4, v7, v3}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_4
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyET;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onETValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyET;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0oo()V

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo p2, "manual"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    move-object p2, p1

    check-cast p2, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-virtual {p0, p2}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V

    :cond_5
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyWB;

    invoke-interface {v0, p1, p3, p4}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onWBValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyWB;Ljava/lang/String;Z)V

    if-eqz p4, :cond_6

    if-nez v2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0oo()V

    :cond_6
    if-eqz p4, :cond_9

    const/4 p0, 0x5

    invoke-static {}, Lcom/android/camera/CameraSettings;->getCustomWB()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, v7, p1}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    goto :goto_0

    :sswitch_3
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    const/16 p2, 0x8

    iget p4, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, p4}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayStringNotFromResource(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, p2, v7, p4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_7
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyEV;

    invoke-interface {v0, p1, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onEVValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyEV;Ljava/lang/String;)V

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0oo()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_8

    invoke-virtual {p0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toUpdateAutoButton()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    iget v3, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v3}, Lcom/android/camera/data/data/ComponentData;->getValueDisplayString(I)I

    move-result v3

    invoke-virtual {p4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {v1, v6, v7, p4}, Lcom/android/camera/protocol/protocols/TopAlert;->alertUpdateValue(IILjava/lang/String;)V

    :cond_8
    check-cast p1, Lcom/android/camera/data/data/config/ComponentManuallyISO;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/protocols/ManuallyValueChanged;->onISOValueChanged(Lcom/android/camera/data/data/config/ComponentManuallyISO;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_9

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v6}, Lcom/android/camera/MiuiCameraSound;->playCameraSound(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooOOO0(Landroid/content/Context;)LOooO0OO/OooO0O0/OooO0Oo/OooOo00;

    move-result-object p0

    invoke-virtual {p0}, LOooO0OO/OooO0O0/OooO0Oo/OooOo00;->OooO0oo()V

    :cond_9
    :goto_0
    invoke-static {}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->impl2()Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p0, p5}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->updateEVState(I)V

    :cond_a
    invoke-static {}, Lcom/android/camera/protocol/protocols/ConfigChanges;->impl2()Lcom/android/camera/protocol/protocols/ConfigChanges;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/android/camera/protocol/protocols/ConfigChanges;->reCheckParameterResetTip(Z)V

    if-eqz p0, :cond_b

    invoke-interface {p0}, Lcom/android/camera/protocol/protocols/expandable/FastmotionProAdjust;->notifyDataSetChange()V

    :cond_b
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f12078f -> :sswitch_4
        0x7f1207b0 -> :sswitch_3
        0x7f12084d -> :sswitch_2
        0x7f120893 -> :sswitch_1
        0x7f1208b4 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/android/camera/animation/FolmeUtils;->clean(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
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

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    iget-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mNeedAnimation:Z

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->animateParentInOrOut(Landroid/view/View;ZLjava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public provideAnimateElement(ILjava/util/List;I)V
    .locals 0
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

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;

    invoke-virtual {v0, p2}, Lcom/android/camera/fragment/manually/adapter/ExtraRecyclerViewAdapter;->setDegree(I)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/camera/ui/HorizontalZoomView;->setRotate(I)V

    :cond_2
    iget-object p2, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-eqz p2, :cond_6

    iget v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    const v1, 0x7f12084d

    if-ne v0, v1, :cond_5

    iget p0, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p0, :cond_4

    const/16 p1, 0x5a

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p0, 0x43340000    # 180.0f

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_2

    :cond_4
    :goto_1
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_2
    return-void

    :cond_5
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
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

    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetData(Lcom/android/camera/data/data/ComponentData;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    invoke-virtual {p1}, Lcom/android/camera/data/data/ComponentData;->getDisplayTitleString()I

    move-result p1

    iput p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mCurrentTitle:I

    :cond_0
    return-void
.end method

.method public setClickEnable(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setExtraVisibility(Z)Z
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public showCustomWB(Lcom/android/camera/data/data/config/ComponentManuallyWB;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "componentManuallyWB"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetView:Landroid/view/View;

    invoke-virtual {p1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getDisplayTitleString()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mTargetKey:I

    new-instance v0, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-direct {v0, v1, p1, v2, p0}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;-><init>(Landroid/content/Context;Lcom/android/camera/data/data/config/ComponentManuallyWB;ILcom/android/camera/fragment/manually/ManuallyListener;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const v2, 0x7f12084d

    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    iget v2, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/camera/ui/HorizontalZoomView;->setDrawAdapter(Lcom/android/camera/ui/BaseHorizontalZoomView$HorizontalDrawAdapter;IZ)V

    iget v1, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    invoke-virtual {p1, v1}, Lcom/android/camera/data/data/config/ComponentManuallyWB;->getCustomWB(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/camera/fragment/manually/adapter/ExtraCustomWBListAdapter;->mapValueToPosition(Ljava/lang/Integer;)F

    move-result p1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/camera/ui/HorizontalZoomView;->setListener(Lcom/android/camera/ui/BaseHorizontalZoomView$OnPositionSelectListener;Lcom/android/camera/ui/BaseHorizontalZoomView$onTouchUpStateListener;)V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070479

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07047b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalView:Lcom/android/camera/ui/HorizontalZoomView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/camera/ui/HorizontalZoomView;->setSelection(IZ)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-virtual {p1, v3, v3}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x2

    invoke-interface {v0, v2, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoResDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->geteOperationManual()Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;

    move-result-object v0

    invoke-interface {v0, v4}, Lcom/android/camera2/compat/theme/common/MiThemeOperationManualInterface;->getAutoBackgroundResDrawable(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const v0, 0x7f120516

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButtonLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget p1, p0, Lcom/android/camera/fragment/BaseFragment;->mDegree:I

    if-eqz p1, :cond_1

    const/16 v0, 0x5a

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/high16 v0, 0x43340000    # 180.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setRotation(F)V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mExtraList:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mHorizontalViewLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->toShowOrHideView(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public toUpdateAutoButton()V
    .locals 1

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mAutoButton:Lcom/android/camera/ui/ActivateImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/camera/ui/ActivateImageView;->setActiveOrColorFilter(ZI)V

    :cond_0
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

    const-class v0, Lcom/android/camera/protocol/protocols/ProExtra;

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeCoordinator;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public updateData()V
    .locals 1
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    iput v0, p0, Lcom/android/camera/fragment/BaseFragment;->mCurrentMode:I

    iget-object v0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mData:Lcom/android/camera/data/data/ComponentData;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->initAdapter(Lcom/android/camera/data/data/ComponentData;)V

    :cond_0
    return-void
.end method

.method public updateView(Landroid/view/View;Landroid/os/Bundle;)V
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
            "v",
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->updateView(Landroid/view/View;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->getDragLayoutTopMargin()I

    move-result p2

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object p0, p0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;->mRootView:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
