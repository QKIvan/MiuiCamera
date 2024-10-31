.class public Lcom/android/camera/customization/FragmentCustomTint;
.super Lcom/android/camera/fragment/BaseFragment;

# interfaces
.implements Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;
    }
.end annotation


# static fields
.field private static final CUP_LENS_OFFSET:I = 0x60

.field private static MODE_PREVIEW:I = 0x2

.field private static MODE_SELECT:I = 0x1

.field private static final PREV_ACTION:F = -276.0f

.field private static final PREV_COLOR:F = 950.0f

.field private static final SELECT_COLOR:F = 0.0f

.field private static TAG:Ljava/lang/String; = "FragCustomTint"


# instance fields
.field private actionBar:Landroid/view/View;

.field private applyButton:Landroid/view/View;

.field private back:Lcom/android/camera/ui/ColorImageView;

.field private colorSelectContainer:Landroid/view/View;

.field private colorSelectTextView:Landroid/view/View;

.field private colorView:Lcom/android/camera/customization/TintColorTableView;

.field private itemContainer:Landroid/view/View;

.field private mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

.field private mCurrentIndex:I

.field private mCurrentItemView:Landroid/view/View;

.field private mCurrentMode:I

.field private mIsLandscape:Z

.field private mIsTalbet:Z

.field private mSpaceView:Landroid/view/View;

.field private previewList:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    iput v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    return-void
.end method

.method public static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$100(Lcom/android/camera/customization/FragmentCustomTint;)Landroidx/viewpager/widget/ViewPager;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTextSizeWidth(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTipSizeWidth(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/android/camera/customization/FragmentCustomTint;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/android/camera/customization/FragmentCustomTint;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->itemContainer:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->itemContainer:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/android/camera/customization/FragmentCustomTint;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/android/camera/customization/FragmentCustomTint;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    return p0
.end method

.method public static synthetic access$600(Lcom/android/camera/customization/FragmentCustomTint;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    return p0
.end method

.method public static synthetic access$700(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->refreshColorTable(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$800(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTextColor(Landroid/view/View;I)V

    return-void
.end method

.method public static synthetic access$900(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/customization/FragmentCustomTint;->refreshTipColor(Landroid/view/View;I)V

    return-void
.end method

.method private enterPreviewMode(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string v1, "enterPreviewMode "

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    return-void
.end method

.method private getAppBoundHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result p0

    return p0
.end method

.method private getAppBoundWidth()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundHeight()I

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->getAppBoundWidth()I

    move-result p0

    return p0
.end method

.method private isSelectMode()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v0, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private previewModeHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result p0

    return p0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result p0

    invoke-static {}, Lcom/android/camera/display/Display;->checkDeviceHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v0

    sub-int/2addr p0, v0

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->isNotchDevice()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/display/Display;->getStatusBarHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sub-int/2addr p0, v0

    return p0
.end method

.method private refreshColorTable(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/android/camera/display/Display;->checkDeviceHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f07022c

    goto :goto_0

    :cond_0
    const v0, 0x7f07022d

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    return-void
.end method

.method private refreshTextColor(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemView",
            "currentIndex"
        }
    .end annotation

    const p0, 0x7f0a0383

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/customization/TintColor;

    invoke-virtual {p1}, Lcom/android/camera/customization/TintColor;->color()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private refreshTextSizeWidth(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    const v0, 0x7f0a0507

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOoo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v1, :cond_0

    const v1, 0x3f6147ae    # 0.88f

    goto :goto_0

    :cond_0
    const v1, 0x3f6e147b    # 0.93f

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3f63d70a    # 0.89f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    const v1, 0x3f3df3b6    # 0.742f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private refreshTipColor(Landroid/view/View;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "itemView",
            "currentIndex"
        }
    .end annotation

    const p0, 0x7f0a005e

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-nez p2, :cond_0

    const p1, 0x7f0801b0

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0801af

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method

.method private refreshTipSizeWidth(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    const v0, 0x7f0a00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    const v0, 0x7f0a005e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOoo()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    if-eqz v1, :cond_0

    const v1, 0x3e408312    # 0.188f

    goto :goto_0

    :cond_0
    const v1, 0x3df5c28f    # 0.12f

    :goto_0
    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayThin()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0OoO()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x3e0f5c29    # 0.14f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x3e23d70a    # 0.16f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_1

    :cond_3
    const v1, 0x3e051eb8    # 0.13f

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_1
    const/4 p0, -0x2

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private selectModeHeight()I
    .locals 3

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v0

    invoke-static {}, Lcom/android/camera/display/Display;->getStatusBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {}, Lcom/android/camera/display/Display;->checkDeviceHasNavigationBar()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/camera/display/Display;->getNavigationBarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070243

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f07023c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private selectModeWidth()I
    .locals 2

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-direct {p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private toggleMode(Landroid/view/View;)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentView"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    iget v1, v0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v2, Lcom/android/camera/customization/FragmentCustomTint;->MODE_SELECT:I

    if-ne v1, v2, :cond_0

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    iput v1, v0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    goto :goto_0

    :cond_0
    iput v2, v0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    :goto_0
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    iget-object v3, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    sget-object v3, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "previewList refresh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f0a00a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :cond_1
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/camera/customization/FragmentCustomTint$1;

    move-object/from16 v3, p1

    invoke-direct {v2, v0, v3}, Lcom/android/camera/customization/FragmentCustomTint$1;-><init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/view/View;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->previewModeHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eq v5, v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v6, v3

    move v3, v7

    move v7, v6

    move v6, v3

    goto :goto_3

    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v3, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->selectModeHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->getAppBoundHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    move v6, v5

    move v5, v7

    :goto_3
    iget-object v8, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-boolean v9, v0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    const v10, 0x7f070243

    const/4 v11, 0x2

    if-eqz v9, :cond_4

    iget-object v4, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-static {v4}, Lcom/android/camera/Util;->getLocationOnScreen(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v9, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v9, v9

    add-float/2addr v4, v9

    iget-object v9, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    div-int/2addr v9, v11

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v9, v12

    sub-float v4, v9, v4

    :cond_4
    new-instance v9, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v12, "preview"

    invoke-direct {v9, v12}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v12, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v13, v5

    invoke-virtual {v9, v12, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v9, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v13, v7

    invoke-virtual {v5, v9, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    sget-object v7, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v13, v4

    invoke-virtual {v5, v7, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v4

    new-instance v5, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v13, "previewColor"

    invoke-direct {v5, v13}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide v13, 0x408db00000000000L    # 950.0

    invoke-virtual {v5, v7, v13, v14}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v5

    new-instance v13, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v14, "previewAction"

    invoke-direct {v13, v14}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    const-wide v14, -0x3f8ec00000000000L    # -276.0

    invoke-virtual {v13, v7, v14, v15}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v13

    new-instance v14, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v15, "select"

    invoke-direct {v14, v15}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    move-object/from16 v16, v2

    float-to-double v1, v3

    invoke-virtual {v14, v12, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    float-to-double v2, v6

    invoke-virtual {v1, v9, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    const-wide/16 v11, 0x0

    if-eqz v2, :cond_5

    move-wide v2, v11

    goto :goto_4

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    float-to-double v2, v2

    :goto_4
    invoke-virtual {v1, v7, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    new-instance v2, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v3, "selectColor"

    invoke-direct {v2, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    new-instance v3, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v6, "selectAction"

    invoke-direct {v3, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v7, v11, v12}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/customization/FragmentCustomTint;->isSelectMode()Z

    move-result v6

    const/4 v7, -0x2

    const/4 v9, 0x1

    if-eqz v6, :cond_7

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v8, 0x2

    new-array v8, v8, [F

    fill-array-data v8, :array_0

    invoke-virtual {v6, v7, v8}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    new-array v7, v9, [Lmiuix/animation/listener/TransitionListener;

    const/4 v10, 0x0

    aput-object v16, v7, v10

    invoke-virtual {v6, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v7, :cond_6

    new-array v4, v9, [Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v7, v4, v10

    invoke-static {v4}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v4

    invoke-interface {v4}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v4

    new-array v7, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v7, v10

    invoke-interface {v4, v1, v7}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_5

    :cond_6
    new-array v7, v9, [Landroid/view/View;

    iget-object v8, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v8, v7, v10

    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v7

    new-array v8, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v8, v10

    invoke-interface {v7, v4, v1, v8}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_5
    new-array v1, v9, [Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    aput-object v4, v1, v10

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v4, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v4, v10

    invoke-interface {v1, v5, v2, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v1, v9, [Landroid/view/View;

    iget-object v0, v0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    aput-object v0, v1, v10

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v0

    new-array v1, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v1, v10

    invoke-interface {v0, v13, v3, v1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto/16 :goto_7

    :cond_7
    const/4 v10, 0x0

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v11, 0x2

    new-array v11, v11, [F

    fill-array-data v11, :array_1

    invoke-virtual {v6, v7, v11}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    new-array v7, v9, [Lmiuix/animation/listener/TransitionListener;

    aput-object v16, v7, v10

    invoke-virtual {v6, v7}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v6

    iget-boolean v7, v0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-eqz v7, :cond_8

    new-array v1, v9, [Landroid/view/View;

    iget-object v7, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v7, v1, v10

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v7, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v7, v10

    invoke-interface {v1, v4, v7}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_6

    :cond_8
    new-array v7, v9, [Landroid/view/View;

    iget-object v11, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    aput-object v11, v7, v10

    invoke-static {v7}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v7

    invoke-interface {v7}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v7

    new-array v11, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v11, v10

    invoke-interface {v7, v1, v4, v11}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_6
    new-array v1, v9, [Landroid/view/View;

    iget-object v4, v0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    aput-object v4, v1, v10

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v4, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v4, v10

    invoke-interface {v1, v2, v5, v4}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    new-array v1, v9, [Landroid/view/View;

    iget-object v2, v0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    aput-object v2, v1, v10

    invoke-static {v1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v1

    new-array v2, v9, [Lmiuix/animation/base/AnimConfig;

    aput-object v6, v2, v10

    invoke-interface {v1, v3, v13, v2}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    iget-boolean v1, v0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    if-nez v1, :cond_9

    iput v10, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, v0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    :goto_7
    return-void

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f666666    # 0.9f
        0x3e99999a    # 0.3f
    .end array-data
.end method


# virtual methods
.method public getCurrentColorIndex()I
    .locals 0

    iget p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    return p0
.end method

.method public getFragmentInto()I
    .locals 0

    const p0, 0xfff8

    return p0
.end method

.method public getLayoutResourceId()I
    .locals 0

    const p0, 0x7f0d0026

    return p0
.end method

.method public initView(Landroid/view/View;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-static {}, Lcom/android/camera/display/Display;->isSupportLandscape()Z

    move-result v0

    const v1, 0x7f0a04af

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsTalbet:Z

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/display/Display;->getStatusBarHeight()I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/android/camera/customization/TintColor;->readColorId()I

    move-result v3

    const-string v4, "color_index"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    :goto_1
    const v0, 0x7f0a012e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    const v0, 0x7f0a004f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    const v0, 0x7f0a0150

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectTextView:Landroid/view/View;

    const v0, 0x7f0a009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ui/ColorImageView;

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->back:Lcom/android/camera/ui/ColorImageView;

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00O0O0o()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mSpaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x60

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mSpaceView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->back:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06043a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ColorImageView;->setColor(I)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->back:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/customization/TintColorTableView;

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v1

    iget v3, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {v0, v1, v3}, Lcom/android/camera/customization/TintColorTableView;->initialize(Ljava/util/List;I)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {v0, p0}, Lcom/android/camera/customization/TintColorTableView;->setOnColorChangeListener(Lcom/android/camera/customization/TintColorTableView$OnColorChangeListener;)V

    const v0, 0x7f0a007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->applyButton:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->applyButton:Landroid/view/View;

    invoke-static {v0}, Lcom/android/camera/animation/FolmeUtils;->touchTint(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->applyButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;-><init>(Lcom/android/camera/customization/FragmentCustomTint;Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    const v0, 0x7f0a041f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/viewpager/widget/ViewPager;

    iput-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_4
    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 2

    iget v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentMode:I

    sget v1, Lcom/android/camera/customization/FragmentCustomTint;->MODE_PREVIEW:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentItemView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/camera/customization/FragmentCustomTint;->toggleMode(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a007f

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a009f

    if-eq v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/customization/FragmentCustomTint;->enterPreviewMode(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick back"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "onClick apply"

    invoke-static {p1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Lcom/android/camera/customization/TintColor;->persistColorId(I)V

    iget p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "attr_edit_tint"

    invoke-static {v0, p1}, Lcom/android/camera/statistic/MistatsWrapper;->settingClickEvent(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onColorChange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorIndex"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onColorChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOooO()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    invoke-static {}, Lcom/android/camera/display/Display;->isLandscape()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mIsLandscape:Z

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mAdapter:Lcom/android/camera/customization/FragmentCustomTint$TintPreviewAdapter;

    invoke-virtual {p0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->previewList:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->removeOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    :cond_0
    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplay16_10()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/display/Display;->fitDisplayFat()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    sget-object v0, Lcom/android/camera/customization/FragmentCustomTint;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPageSelected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    iget-object p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {p0, p1}, Lcom/android/camera/customization/TintColorTableView;->setCurrent(I)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    return-void
.end method

.method public updateLayoutParams()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->actionBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070228

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->back:Lcom/android/camera/ui/ColorImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07070c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07070b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070709

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07023b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorSelectTextView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070231

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->applyButton:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070232

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070233

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07022d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v0, p0, Lcom/android/camera/customization/FragmentCustomTint;->colorView:Lcom/android/camera/customization/TintColorTableView;

    invoke-static {}, Lcom/android/camera/customization/TintColor;->getAvailableColors()Ljava/util/List;

    move-result-object v1

    iget p0, p0, Lcom/android/camera/customization/FragmentCustomTint;->mCurrentIndex:I

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/customization/TintColorTableView;->initialize(Ljava/util/List;I)V

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

    invoke-virtual {p0}, Lcom/android/camera/customization/FragmentCustomTint;->updateLayoutParams()V

    return-void
.end method
