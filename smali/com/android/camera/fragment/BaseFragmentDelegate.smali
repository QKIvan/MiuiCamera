.class public Lcom/android/camera/fragment/BaseFragmentDelegate;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/camera/protocol/protocols/BaseDelegate;
.implements Lcom/android/camera/module/loader/base/FeatureManager$Loader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/BaseFragmentDelegate$FragmentInto;,
        Lcom/android/camera/fragment/BaseFragmentDelegate$ContainerType;
    }
.end annotation


# static fields
.field public static final BEAUTY_PANEL:I = 0x5

.field public static final BOTTOM_BAR:I = 0x4

.field public static final DUAL_CAMERA:I = 0x8

.field public static final FRAGMENT_AI_WATER_MARK:I = 0xff2

.field public static final FRAGMENT_AMBIENT_LIGHTING:I = 0xfc

.field public static final FRAGMENT_AMBILIGHT:I = 0xfffff0

.field public static final FRAGMENT_ASD_WATERMARK:I = 0xffffc

.field public static final FRAGMENT_AUTO_ZOOM:I = 0xff1

.field public static final FRAGMENT_BASE_WATERMARK:I = 0xffff6

.field public static final FRAGMENT_BEAUTY:I = 0xfb

.field public static final FRAGMENT_BLANK_MILIVE:I = 0xffa

.field public static final FRAGMENT_BOTTOM_ACTION:I = 0xf1

.field public static final FRAGMENT_BOTTOM_INTENT_DONE:I = 0xff3

.field public static final FRAGMENT_BOTTOM_MENU:I = 0xf5

.field public static final FRAGMENT_BOTTOM_POPUP_TIPS:I = 0xfff9

.field public static final FRAGMENT_BOTTOM_REVIEW_DONE:I = 0xffffff6

.field public static final FRAGMENT_CITY_WATERMARK:I = 0xffffd

.field public static final FRAGMENT_CLONE_GALLERY:I = 0xffff4

.field public static final FRAGMENT_CLONE_PROCESS:I = 0xffff3

.field public static final FRAGMENT_CLONE_USE_GUIDE:I = 0xffff5

.field public static final FRAGMENT_COSMETIC_MIRROR:I = 0xffffff5

.field public static final FRAGMENT_CUSTOM_TINT:I = 0xfff8

.field public static final FRAGMENT_CV_LENS:I = 0xfff

.field public static final FRAGMENT_DISPATCH:I = 0xd

.field public static final FRAGMENT_DOC_VIEW:I = 0xff9

.field public static final FRAGMENT_DOLLY_ZOOM_PROCESS:I = 0xfffffb

.field public static final FRAGMENT_DOLLY_ZOOM_USE_GUIDE:I = 0xfffffc

.field public static final FRAGMENT_DUAL_CAMERA_ADJUST:I = 0xff4

.field public static final FRAGMENT_DUAL_CAMERA_BOKEH_ADJUST:I = 0xffb

.field public static final FRAGMENT_FAST_MOTION:I = 0xfffff1

.field public static final FRAGMENT_FAST_MOTION_EXTRA:I = 0xfffff2

.field public static final FRAGMENT_FAST_MOTION_PRO:I = 0xfffff6

.field public static final FRAGMENT_FESTIVAL_WATERMARK:I = 0xffffb

.field public static final FRAGMENT_FILM_DREAM_PROCESS:I = 0xfffff5

.field public static final FRAGMENT_FILM_GALLERY:I = 0xfffff3

.field public static final FRAGMENT_FILM_PREVIEW:I = 0xfffff4

.field public static final FRAGMENT_FILM_TIME_BACKFLOW:I = 0xffffff4

.field public static final FRAGMENT_FILM_TIME_FREEZE:I = 0xfffff9

.field public static final FRAGMENT_FILTER:I = 0xfa

.field public static final FRAGMENT_GENERAL_WATERMARK:I = 0xffff7

.field public static final FRAGMENT_GIF:I = 0xfff4

.field public static final FRAGMENT_HALO:I = 0xf8

.field public static final FRAGMENT_ID_CARD:I = 0xffff0

.field public static final FRAGMENT_INVALID:I = 0xf0

.field public static final FRAGMENT_LIGHTING:I = 0xff7

.field public static final FRAGMENT_LIGHTING_VIEW:I = 0xff8

.field public static final FRAGMENT_LIVE_REVIEW:I = 0xffff1

.field public static final FRAGMENT_MAIN_CONTENT:I = 0xf3

.field public static final FRAGMENT_MANUALLY_EXTRA:I = 0xfe

.field public static final FRAGMENT_MANUAL_PICTURE_STYLE:I = 0xfffffe

.field public static final FRAGMENT_MASTER_FILTER:I = 0xfffff7

.field public static final FRAGMENT_MENU_AI_WATER_MARK:I = 0xe1

.field public static final FRAGMENT_MENU_BEAUTY_SKIN_COLOR:I = 0xe6

.field public static final FRAGMENT_MENU_CV_LENS:I = 0xeb

.field public static final FRAGMENT_MENU_FAST_MOTION:I = 0xe4

.field public static final FRAGMENT_MENU_FAST_MOTION_PRO:I = 0xe5

.field public static final FRAGMENT_MENU_LIVE_SPEED:I = 0xe8

.field public static final FRAGMENT_MENU_MASTER_FILTER:I = 0xe2

.field public static final FRAGMENT_MENU_MIMOJI:I = 0xea

.field public static final FRAGMENT_MENU_PIC_STYLE:I = 0xe3

.field public static final FRAGMENT_MENU_PORTRAIT_LIGHTING:I = 0xe9

.field public static final FRAGMENT_MENU_SHINE:I = 0xe0

.field public static final FRAGMENT_MENU_VIDEO_BOKEH:I = 0xef

.field public static final FRAGMENT_MENU_VIDEO_SKY:I = 0xe7

.field public static final FRAGMENT_MIMOJI_EDIT:I = 0xfff1

.field public static final FRAGMENT_MIMOJI_EMOTICON:I = 0xfff2

.field public static final FRAGMENT_MIMOJI_LIST:I = 0xfff0

.field public static final FRAGMENT_MIMOJI_SCREEN:I = 0xfff3

.field public static final FRAGMENT_MODES_EDIT:I = 0xfff7

.field public static final FRAGMENT_MODES_MORE_NORMAL:I = 0xfff5

.field public static final FRAGMENT_MODES_MORE_POPUP:I = 0xfff6

.field public static final FRAGMENT_MODE_SELECT:I = 0xf2

.field public static final FRAGMENT_MODULE_CONTENT:I = 0xffff2

.field public static final FRAGMENT_NULL:I = 0xf

.field public static final FRAGMENT_OCR:I = 0xffffff7

.field public static final FRAGMENT_OCR_CONTENT:I = 0xffffff8

.field public static final FRAGMENT_PANORAMA:I = 0xff0

.field public static final FRAGMENT_POPUP_LIVE_SPEED:I = 0xffd

.field public static final FRAGMENT_POPUP_MANUALLY:I = 0xf7

.field public static final FRAGMENT_PRESENTATION_DISPLAY:I = 0xffffff1

.field public static final FRAGMENT_REFERENCE_LINE:I = 0xffffff2

.field public static final FRAGMENT_SCREEN_LIGHT:I = 0xff6

.field public static final FRAGMENT_SILHOUETTE_WATERMARK:I = 0xffff9

.field public static final FRAGMENT_SLOW_MOTION:I = 0xffffff3

.field public static final FRAGMENT_SLOW_SHUTTER_USE_GUIDE:I = 0xfffffd

.field public static final FRAGMENT_SPOTS_WATERMARK:I = 0xffff8

.field public static final FRAGMENT_SUBTITLE:I = 0xfffe

.field public static final FRAGMENT_TEXT_WATERMARK:I = 0xffffa

.field public static final FRAGMENT_TIME_FREEZE_USE_GUIDE:I = 0xfffffa

.field public static final FRAGMENT_TOP_ALERT:I = 0xfd

.field public static final FRAGMENT_TOP_CONFIG:I = 0xf4

.field public static final FRAGMENT_VIDEO_PROMPTER:I = 0xec

.field public static final FRAGMENT_VIDEO_PROMPTER_ADJUST:I = 0xee

.field public static final FRAGMENT_VIDEO_PROMPTER_EDIT:I = 0xed

.field public static final FRAGMENT_VIDEO_REVIEW:I = 0xffc

.field public static final FRAGMENT_VIDEO_SKY_LIST:I = 0xffffff

.field public static final FRAGMENT_VIDEO_SKY_PROCESS:I = 0xffffff0

.field public static final FRAGMENT_VLOG_PRO:I = -0xf

.field public static final FRAGMENT_VLOG_PRO_GALLERY:I = -0xe

.field public static final FRAGMENT_VLOG_PRO_PREVIEW:I = -0xd

.field public static final FRAGMENT_VLOG_PRO_PROCESS:I = -0xc

.field public static final FRAGMENT_VV_FEATURE:I = 0xfffff8

.field public static final FRAGMENT_VV_GALLERY:I = 0xfffb

.field public static final FRAGMENT_VV_PREVIEW:I = 0xfffc

.field public static final FRAGMENT_VV_PROCESS:I = 0xfffd

.field public static final FRAGMENT_WATERMARK:I = 0xffffe

.field public static final FRAGMENT_WIDESELFIE:I = 0xffe

.field public static final FRAGMENT_ZOOM_VIEW:I = 0xf6

.field public static final MAIN_CONTENT:I = 0x2

.field public static final MODE_SELECTOR:I = 0x3

.field public static final MODULE_CONTENT_HIGHER_LAYER:I = 0x16

.field public static final MODULE_CONTENT_LOWER_LAYER:I = 0x14

.field public static final MODULE_CONTENT_MID_LAYER:I = 0x15

.field public static final POPUP_TIPS:I = 0x7

.field public static final POST_VIEW:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BaseFragmentDelegate"

.field public static final TOP_BAR:I = 0x1

.field public static final UNSPECIFIED:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

.field private volatile mCurrentFragments:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFragmentCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastFragmentAlias:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;"
        }
    .end annotation
.end field

.field private mOriginalFragments:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    new-instance p1, Lcom/android/camera/animation/AnimationComposite;

    invoke-direct {p1}, Lcom/android/camera/animation/AnimationComposite;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    return-void
.end method

.method private add2Last(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replaceInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    iget v2, v0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    iget v0, v0, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyUpdateSet(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "replaceInfoList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_20

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "BaseFragmentDelegate"

    const/4 v4, 0x0

    if-eqz v2, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v5

    iget v6, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    iget v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingSubFragmentInfo:I

    const/16 v8, 0xf0

    if-ne v6, v8, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "applyUpdateSet, lastFragmentInfo: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pendingFragmentInfo: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", pendingSubFragmentInfo: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v2, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget v9, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/16 v10, 0x14

    if-eq v9, v10, :cond_1d

    const/16 v10, 0x15

    if-eq v9, v10, :cond_1c

    const/4 v10, 0x1

    packed-switch v9, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v6}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-direct {p0, v0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_3
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v5, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v3, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget v7, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentIndex:I

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-gt v7, v8, :cond_1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v7

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v10

    :goto_1
    if-ltz v9, :cond_6

    add-int/lit8 v11, v7, -0x1

    if-ne v9, v11, :cond_4

    goto :goto_2

    :cond_4
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    iget-object v12, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v12, v11}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-direct {p0, v0, v11}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_5

    invoke-virtual {v1, v11}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_5
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    :cond_6
    :goto_2
    iget-object v9, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v9, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    invoke-direct {p0, v1, v6, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    iget v9, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v9

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v5, v11}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v7, v3, :cond_7

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_7
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v3, v9, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragment;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v8

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v5, v9}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v8, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v9

    invoke-virtual {v8, v9, v5}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    goto :goto_3

    :cond_8
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v5, v10, [I

    aput v7, v5, v4

    invoke-virtual {p0, v3, v6, v2, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v5}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_9
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v6, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v5, v6, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto/16 :goto_0

    :pswitch_3
    invoke-direct {p0, v0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_a
    if-eq v7, v8, :cond_b

    goto :goto_4

    :cond_b
    move v7, v6

    :goto_4
    iget-object v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v3, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    invoke-direct {p0, v1, v6, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v3, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v7

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v7, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    iget v8, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v8}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v9, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz v7, :cond_f

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_f

    move v8, v4

    :goto_5
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v9, v6, :cond_c

    goto :goto_7

    :cond_c
    iget-object v11, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v11, v9}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-direct {p0, v0, v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v11

    if-eqz v11, :cond_e

    if-eq v9, v5, :cond_d

    invoke-virtual {v11, v10}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    goto :goto_6

    :cond_d
    invoke-virtual {v11, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    :goto_6
    invoke-virtual {v1, v11}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_e
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_f
    invoke-direct {p0, v0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v7

    if-nez v7, :cond_10

    new-array v7, v4, [Ljava/lang/Object;

    const-string/jumbo v8, "popup null, create new"

    invoke-static {v3, v8, v7}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v3, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    invoke-direct {p0, v1, v6, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v3, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_8

    :cond_10
    invoke-virtual {v7, v5}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v7}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v1, v7}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_8
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v9, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_11
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {p0, v0, v9}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v9

    if-eqz v9, :cond_11

    invoke-virtual {v9, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v9}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_9

    :cond_12
    invoke-direct {p0, v0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_13

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_13
    if-eq v7, v8, :cond_14

    goto :goto_a

    :cond_14
    move v7, v6

    :goto_a
    iget-object v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-direct {p0, v4, v7, v3, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    invoke-direct {p0, v1, v6, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v3, v7}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v7

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_15
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    if-eqz v5, :cond_15

    invoke-virtual {v5, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_b

    :cond_16
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v8, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_17

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_17
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v5, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->pendingShow()V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_18
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v8, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3, v5}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    if-eqz v3, :cond_19

    invoke-virtual {v3, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :cond_19
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v5, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_a
    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v7, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    :goto_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    iget-object v7, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v5

    if-eqz v5, :cond_1a

    invoke-virtual {v5, v4}, Lcom/android/camera/fragment/BaseFragment;->pendingGone(Z)V

    invoke-virtual {v1, v5}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_c

    :cond_1b
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :pswitch_b
    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v5, v3}, Lcom/android/camera/animation/AnimationComposite;->remove(I)V

    iget-object v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentAlias:Ljava/lang/String;

    invoke-direct {p0, v4, v6, v5, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v3

    invoke-direct {p0, v1, v6, v3}, Lcom/android/camera/fragment/BaseFragmentDelegate;->cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V

    iget v5, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v5

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v3, v7}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object v5, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v7

    invoke-virtual {v5, v7, v3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    iget v3, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    new-array v4, v4, [I

    invoke-virtual {p0, v3, v6, v2, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateCurrentFragments(III[I)V

    goto/16 :goto_0

    :cond_1c
    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1d
    iget v2, v2, Lcom/android/camera/fragment/BaseFragmentOperation;->containerType:I

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_1e
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "currentFragments "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->dumpCur()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v4, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    :goto_d
    return-void

    :cond_20
    new-instance p0, Ljava/lang/RuntimeException;

    const-string/jumbo p1, "need operation info"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cacheFragment(Landroidx/fragment/app/FragmentTransaction;ILandroidx/fragment/app/Fragment;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "fragmentTransaction",
            "fragmentInfo",
            "fragment"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0O000o0;

    invoke-direct {p3, p0, p2}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0O000o0;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;I)V

    invoke-virtual {p1, p3}, Landroidx/fragment/app/FragmentTransaction;->runOnCommit(Ljava/lang/Runnable;)Landroidx/fragment/app/FragmentTransaction;

    return-void
.end method

.method private checkOperation(ILjava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "operations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOperation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getContainerTypeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", operations "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", currentFragments "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->dumpCur()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseFragmentDelegate"

    invoke-static {v3, p0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 p0, 0xf0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget p0, p0, Lcom/android/camera/fragment/BaseFragmentOperation;->operateType:I

    const/16 v2, 0x15

    if-ne p0, v2, :cond_2

    return v1

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ne p0, v2, :cond_5

    const/4 p0, 0x1

    move v3, p0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v5, v5, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    return p0

    :cond_5
    move p0, v1

    move v2, p0

    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge p0, v3, :cond_7

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/camera/fragment/BaseFragmentOperation;

    iget v4, v4, Lcom/android/camera/fragment/BaseFragmentOperation;->pendingFragmentInfo:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    add-int/lit8 v2, p0, 0x1

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_7
    move p0, v1

    :goto_2
    if-ge p0, v2, :cond_8

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    :goto_3
    if-le p0, v2, :cond_9

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_9
    :goto_4
    return v1
.end method

.method private constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentId"
        }
    .end annotation

    const-class v0, Lcom/android/camera/protocol/protocols/expandable/MiBeautyProtocol;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationTab()Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;

    move-result-object v1

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-interface {v1, p0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationTabIf;->getMenuItemCreator(Landroid/content/Context;)Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;

    move-result-object p0

    const/16 v1, 0xef

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningCvLens()Lcom/android/camera/data/data/runing/ComponentRunningCvLens;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningCvLens;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    :pswitch_1
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    new-instance p0, Lcom/android/camera/fragment/bottom/MimojiMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/MimojiMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    new-instance p0, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/PortraitLightingMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    new-instance p0, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;

    invoke-direct {p0}, Lcom/android/camera/fragment/bottom/LiveSpeedMenu;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu3;->init(Lcom/android/camera/fragment/bottom/AbBottomMenu;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningVideoSky()Lcom/android/camera/data/data/config/ComponentRunningVideoSky;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningVideoSky;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    :pswitch_5
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    const p0, 0x7f1203d0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    :pswitch_6
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotionPro()Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotionPro;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto/16 :goto_0

    :pswitch_7
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningFastMotion()Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningFastMotion;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/camera/protocol/protocols/expandable/FastMotionProtocol;

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Z)V

    goto/16 :goto_0

    :pswitch_8
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningPictureStyle()Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningPictureStyle;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    :pswitch_9
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningMasterFilter()Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/config/ComponentRunningMasterFilter;->getDisplayTitleString()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu2;->init(I)V

    goto :goto_0

    :pswitch_a
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningAIWatermark()Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getItems()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningAIWatermark;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/camera/protocol/protocols/expandable/WatermarkProtocol;

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Z)V

    goto :goto_0

    :pswitch_b
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getActualItems()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0, v0, v1}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;

    invoke-direct {p1, p0}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;-><init>(Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenuBase$ItemCreator;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningShine()Lcom/android/camera/data/data/runing/ComponentRunningShine;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getActualItems()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->getCurrentType()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p0, v0, v2}, Lcom/android/camera/fragment/modeselector/menu/FragmentBottomMenu1;->init(Ljava/util/List;Ljava/lang/String;Ljava/lang/Class;Z)V

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0xe0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "isInit",
            "fragmentId",
            "fragmentClassName",
            "lastFragmentInfo"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructBottomMenuFragment(I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    packed-switch p2, :pswitch_data_0

    sparse-switch p2, :sswitch_data_0

    packed-switch p2, :pswitch_data_1

    packed-switch p2, :pswitch_data_2

    packed-switch p2, :pswitch_data_3

    packed-switch p2, :pswitch_data_4

    packed-switch p2, :pswitch_data_5

    packed-switch p2, :pswitch_data_6

    packed-switch p2, :pswitch_data_7

    packed-switch p2, :pswitch_data_8

    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0, p3}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_1

    :pswitch_0
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmGallery;-><init>()V

    goto/16 :goto_1

    :pswitch_1
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionProExtra;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastMotion;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v0, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;

    invoke-direct {v0}, Lcom/android/camera/fragment/ambilight/FragmentAmbilight;-><init>()V

    goto/16 :goto_1

    :pswitch_4
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneUseGuide;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getCloneGalleryItemFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_1

    :pswitch_6
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentCloneProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentCloneProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_7
    new-instance v0, Lcom/android/camera/fragment/FragmentModuleContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentModuleContent;-><init>()V

    goto/16 :goto_1

    :pswitch_8
    new-instance v0, Lcom/android/camera/fragment/dialog/FragmentLiveReview;

    invoke-direct {v0}, Lcom/android/camera/fragment/dialog/FragmentLiveReview;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_9
    new-instance v0, Lcom/android/camera/fragment/idcard/FragmentIDCard;

    invoke-direct {v0}, Lcom/android/camera/fragment/idcard/FragmentIDCard;-><init>()V

    goto/16 :goto_1

    :pswitch_a
    new-instance v0, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;

    invoke-direct {v0}, Lcom/android/camera/fragment/subtitle/FragmentSubtitle;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_b
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVProcess;-><init>()V

    goto/16 :goto_1

    :pswitch_c
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getCvLensFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_1

    :pswitch_d
    new-instance v0, Lcom/android/camera/fragment/FragmentWideSelfie;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentWideSelfie;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_e
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getLiveSpeedFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_f
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00o0()Z

    move-result p3

    if-eqz p3, :cond_0

    new-instance p3, Lcom/android/camera/fragment/FragmentFSlideAdjust;

    invoke-direct {p3}, Lcom/android/camera/fragment/FragmentFSlideAdjust;-><init>()V

    goto :goto_0

    :cond_0
    new-instance p3, Lcom/android/camera/fragment/FragmentFNumberAdjust;

    invoke-direct {p3}, Lcom/android/camera/fragment/FragmentFNumberAdjust;-><init>()V

    :goto_0
    move-object v0, p3

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_10
    new-instance v0, Lcom/android/camera/fragment/live/FragmentBlankLive;

    invoke-direct {v0}, Lcom/android/camera/fragment/live/FragmentBlankLive;-><init>()V

    goto/16 :goto_1

    :pswitch_11
    new-instance v0, Lcom/android/camera/fragment/FragmentDocView;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentDocView;-><init>()V

    goto/16 :goto_1

    :pswitch_12
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLightView;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLightView;-><init>()V

    goto/16 :goto_1

    :pswitch_13
    new-instance v0, Lcom/android/camera/fragment/lighting/FragmentLighting;

    invoke-direct {v0}, Lcom/android/camera/fragment/lighting/FragmentLighting;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_14
    new-instance v0, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;

    invoke-direct {v0}, Lcom/android/camera/fragment/fullscreen/FragmentFullScreen;-><init>()V

    goto/16 :goto_1

    :pswitch_15
    new-instance v0, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;

    invoke-direct {v0}, Lcom/android/camera/fragment/dual/FragmentDualCameraAdjust;-><init>()V

    goto/16 :goto_1

    :pswitch_16
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomIntentDone;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentBottomIntentDone;-><init>()V

    goto/16 :goto_1

    :pswitch_17
    new-instance v0, Lcom/android/camera/fragment/FragmentAIWatermark;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentAIWatermark;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_18
    new-instance v0, Lcom/android/camera/fragment/FragmentAutoZoom;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentAutoZoom;-><init>()V

    goto/16 :goto_1

    :pswitch_19
    new-instance v0, Lcom/android/camera/fragment/FragmentPanorama;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentPanorama;-><init>()V

    goto/16 :goto_1

    :pswitch_1a
    new-instance v0, Lcom/android/camera/fragment/FragmentHalo;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentHalo;-><init>()V

    goto/16 :goto_1

    :pswitch_1b
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManually;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManually;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_1c
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getZoomViewFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/modeselector/FragmentZoomView;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :pswitch_1d
    new-instance v0, Lcom/android/camera/fragment/top/FragmentTopConfig;

    invoke-direct {v0}, Lcom/android/camera/fragment/top/FragmentTopConfig;-><init>()V

    goto/16 :goto_1

    :pswitch_1e
    new-instance v0, Lcom/android/camera/fragment/FragmentMainContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentMainContent;-><init>()V

    goto/16 :goto_1

    :pswitch_1f
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getModeSelectFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_1

    :pswitch_20
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getBottomActionFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/bottom/action/FragmentBottomAction;

    goto/16 :goto_1

    :pswitch_21
    const/4 p0, 0x0

    return-object p0

    :sswitch_0
    new-instance v0, Lcom/android/camera/fragment/doc4/FragmentOCRContent;

    invoke-direct {v0}, Lcom/android/camera/fragment/doc4/FragmentOCRContent;-><init>()V

    goto/16 :goto_1

    :sswitch_1
    new-instance v0, Lcom/android/camera/fragment/doc4/FragmentOCR;

    invoke-direct {v0}, Lcom/android/camera/fragment/doc4/FragmentOCR;-><init>()V

    goto/16 :goto_1

    :sswitch_2
    new-instance v0, Lcom/android/camera/features/mode/cosmeticmirror/ui/FragmentBottomReviewDone;

    invoke-direct {v0}, Lcom/android/camera/features/mode/cosmeticmirror/ui/FragmentBottomReviewDone;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_3
    new-instance v0, Lcom/android/camera/features/mode/cosmeticmirror/ui/FragmentCosmeticMirror;

    invoke-direct {v0}, Lcom/android/camera/features/mode/cosmeticmirror/ui/FragmentCosmeticMirror;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_4
    new-instance v0, Lcom/android/camera/fragment/film/FragmentTimeBackflowProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentTimeBackflowProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_5
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentSlowMotionView;-><init>()V

    goto/16 :goto_1

    :sswitch_6
    new-instance v0, Lcom/android/camera/fragment/FragmentReferenceLine;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentReferenceLine;-><init>()V

    goto/16 :goto_1

    :sswitch_7
    new-instance v0, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/videosky/FragmentVideoSkyProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_8
    new-instance v0, Lcom/android/camera/fragment/FragmentVideoSky;

    invoke-direct {v0}, Lcom/android/camera/fragment/FragmentVideoSky;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_9
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getManualPictureStyleFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_a
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentSlowShutterUseGuide;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_b
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomUseGuide;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_c
    new-instance v0, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/dollyZoom/FragmentDollyZoomProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_d
    new-instance v0, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;

    invoke-direct {v0}, Lcom/android/camera/fragment/clone/FragmentTimeFreezeUseGuide;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_e
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getTimeFreezeFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_f
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getVVFeatureFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    goto/16 :goto_1

    :sswitch_10
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMasterFilterFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_11
    new-instance v0, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;

    invoke-direct {v0}, Lcom/android/camera/fragment/fastmotion/FragmentFastmotionPro;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_12
    new-instance v0, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/film/FragmentFilmDreamProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_13
    new-instance v0, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;

    invoke-direct {v0}, Lcom/android/camera/fragment/aiwatermark/FragmentWatermark;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_14
    new-instance v0, Lcom/android/camera/fragment/vv/FragmentVVGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/FragmentVVGallery;-><init>()V

    goto/16 :goto_1

    :sswitch_15
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getPanelEntranceFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_16
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModeEditFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/mode/FragmentMoreModeEdit;

    goto/16 :goto_1

    :sswitch_17
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModePopupFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_18
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getMoreModeNormalFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_19
    new-instance v0, Lcom/xiaomi/mimoji/gif/FragmentGifEdit;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/gif/FragmentGifEdit;-><init>()V

    goto/16 :goto_1

    :sswitch_1a
    new-instance v0, Lcom/xiaomi/mimoji/common/fragment/other/FragmentMimojiFullScreen;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/common/fragment/other/FragmentMimojiFullScreen;-><init>()V

    goto/16 :goto_1

    :sswitch_1b
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0o()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu2/ui/fragment/FragmentFu2Emoticon;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojifu2/ui/fragment/FragmentFu2Emoticon;-><init>()V

    goto/16 :goto_1

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0O()Z

    move-result p3

    if-eqz p3, :cond_2

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu/fragment/edit/FragmentFuEmoticon;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojifu/fragment/edit/FragmentFuEmoticon;-><init>()V

    goto/16 :goto_1

    :cond_2
    new-instance v0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEmoticon;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEmoticon;-><init>()V

    goto/16 :goto_1

    :sswitch_1c
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0o()Z

    move-result p3

    if-eqz p3, :cond_3

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu2/ui/fragment/FragmentFu2Edit;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojifu2/ui/fragment/FragmentFu2Edit;-><init>()V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p3

    invoke-virtual {p3}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00ooo0O()Z

    move-result p3

    if-eqz p3, :cond_4

    new-instance v0, Lcom/xiaomi/mimoji/mimojifu/fragment/edit/FragmentMimojiFuEdit;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojifu/fragment/edit/FragmentMimojiFuEdit;-><init>()V

    goto/16 :goto_1

    :cond_4
    new-instance v0, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/mimojias/fragment/edit/FragmentMimojiAsEdit;-><init>()V

    goto/16 :goto_1

    :sswitch_1d
    new-instance v0, Lcom/xiaomi/mimoji/common/fragment/bottomlist/FragmentMimojiBottomList;

    invoke-direct {v0}, Lcom/xiaomi/mimoji/common/fragment/bottomlist/FragmentMimojiBottomList;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_1e
    new-instance v0, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;

    invoke-direct {v0}, Lcom/android/camera/fragment/manually/FragmentManuallyExtra;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto/16 :goto_1

    :sswitch_1f
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getBeautyFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_1

    :sswitch_20
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getVideoPrompterAdjustFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_1

    :sswitch_21
    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getOperationFragment()Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera2/compat/theme/common/MiThemeOperationFragmentIf;->getVideoPrompterFragment()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    move-object v0, p3

    check-cast v0, Lcom/android/camera/fragment/BaseFragment;

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_1

    :sswitch_22
    new-instance v0, Lcom/android/camera/fragment/DispatchFragment;

    invoke-direct {v0}, Lcom/android/camera/fragment/DispatchFragment;-><init>()V

    goto :goto_1

    :pswitch_22
    new-instance v0, Lcom/android/camera/fragment/vlogpro/FragmentVlogProProcess;

    invoke-direct {v0}, Lcom/android/camera/fragment/vlogpro/FragmentVlogProProcess;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_1

    :pswitch_23
    new-instance v0, Lcom/android/camera/fragment/vlogpro/FragmentVlogProPreview;

    invoke-direct {v0}, Lcom/android/camera/fragment/vlogpro/FragmentVlogProPreview;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    goto :goto_1

    :pswitch_24
    new-instance v0, Lcom/android/camera/fragment/vlogpro/FragmentVlogProGallery;

    invoke-direct {v0}, Lcom/android/camera/fragment/vlogpro/FragmentVlogProGallery;-><init>()V

    iget-object p3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/animation/AnimationComposite;->getTargetDegree()I

    move-result p3

    invoke-virtual {v0, p3}, Lcom/android/camera/fragment/BaseFragment;->setDegree(I)V

    :cond_5
    :goto_1
    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragment;->setAppController(Lcom/android/camera/AppController;)V

    invoke-virtual {v0, p4}, Lcom/android/camera/fragment/BaseFragment;->setLastFragmentInfo(I)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->registerProtocol()V

    xor-int/lit8 p0, p1, 0x1

    invoke-virtual {v0, p0}, Lcom/android/camera/fragment/BaseFragment;->setEnableClickInitValue(Z)V

    return-object v0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid fragment id : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_24
        :pswitch_23
        :pswitch_22
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0xd -> :sswitch_22
        0xec -> :sswitch_21
        0xee -> :sswitch_20
        0xfb -> :sswitch_1f
        0xfe -> :sswitch_1e
        0xfff0 -> :sswitch_1d
        0xfff1 -> :sswitch_1c
        0xfff2 -> :sswitch_1b
        0xfff3 -> :sswitch_1a
        0xfff4 -> :sswitch_19
        0xfff5 -> :sswitch_18
        0xfff6 -> :sswitch_17
        0xfff7 -> :sswitch_16
        0xfff9 -> :sswitch_15
        0xfffb -> :sswitch_14
        0xffffe -> :sswitch_13
        0xfffff5 -> :sswitch_12
        0xfffff6 -> :sswitch_11
        0xfffff7 -> :sswitch_10
        0xfffff8 -> :sswitch_f
        0xfffff9 -> :sswitch_e
        0xfffffa -> :sswitch_d
        0xfffffb -> :sswitch_c
        0xfffffc -> :sswitch_b
        0xfffffd -> :sswitch_a
        0xfffffe -> :sswitch_9
        0xffffff -> :sswitch_8
        0xffffff0 -> :sswitch_7
        0xffffff2 -> :sswitch_6
        0xffffff3 -> :sswitch_5
        0xffffff4 -> :sswitch_4
        0xffffff5 -> :sswitch_3
        0xffffff6 -> :sswitch_2
        0xffffff7 -> :sswitch_1
        0xffffff8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0xf0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf6
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xff0
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xff6
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xffd
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0xfffd
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xffff0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0xfffff0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private dumpCur()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    const-string/jumbo p0, "{}"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "[]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3

    const/16 v2, 0x5d

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContainerTypeName(I)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "containerType"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string/jumbo p0, "unknown"

    return-object p0

    :pswitch_0
    const-string p0, "MODULE_CONTENT_HIGHER_LAYER"

    return-object p0

    :pswitch_1
    const-string p0, "MODULE_CONTENT_MID_LAYER"

    return-object p0

    :pswitch_2
    const-string p0, "MODULE_CONTENT_LOWER_LAYER"

    return-object p0

    :pswitch_3
    const-string p0, "DUAL_CAMERA"

    return-object p0

    :pswitch_4
    const-string p0, "POPUP_TIPS"

    return-object p0

    :pswitch_5
    const-string p0, "POST_VIEW"

    return-object p0

    :pswitch_6
    const-string p0, "BEAUTY_PANEL"

    return-object p0

    :pswitch_7
    const-string p0, "BOTTOM_BAR"

    return-object p0

    :pswitch_8
    const-string p0, "MODE_SELECTOR"

    return-object p0

    :pswitch_9
    const-string p0, "MAIN_CONTENT"

    return-object p0

    :pswitch_a
    const-string p0, "TOP_BAR"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getFragment(Landroidx/fragment/app/FragmentManager;I)Lcom/android/camera/fragment/BaseFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "manager",
            "fragmentInfo"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroidx/fragment/app/Fragment;

    :cond_0
    if-eqz p1, :cond_1

    check-cast p1, Lcom/android/camera/fragment/BaseFragment;

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getViewContainer(I)I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid view container type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const p0, 0x7f0a0390

    goto :goto_0

    :pswitch_1
    const p0, 0x7f0a0392

    goto :goto_0

    :pswitch_2
    const p0, 0x7f0a0391

    goto :goto_0

    :pswitch_3
    const p0, 0x7f0a00c4

    goto :goto_0

    :pswitch_4
    const p0, 0x7f0a00c5

    goto :goto_0

    :pswitch_5
    const p0, 0x7f0a0246

    goto :goto_0

    :pswitch_6
    const p0, 0x7f0a00bc

    goto :goto_0

    :pswitch_7
    const p0, 0x7f0a00bb

    goto :goto_0

    :pswitch_8
    const p0, 0x7f0a038a

    goto :goto_0

    :pswitch_9
    const p0, 0x7f0a031e

    goto :goto_0

    :pswitch_a
    const p0, 0x7f0a0320

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getViewContainerName(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "invalid view container type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "MODULE_CONTENT_HIGHER_LAYER"

    goto :goto_0

    :pswitch_1
    const-string p0, "MODULE_CONTENT_MID_LAYER"

    goto :goto_0

    :pswitch_2
    const-string p0, "MODULE_CONTENT_LOWER_LAYER"

    goto :goto_0

    :pswitch_3
    const-string p0, "DUAL_CAMERA"

    goto :goto_0

    :pswitch_4
    const-string p0, "POPUP_TIPS"

    goto :goto_0

    :pswitch_5
    const-string p0, "POST_VIEW"

    goto :goto_0

    :pswitch_6
    const-string p0, "BEAUTY_PANEL"

    goto :goto_0

    :pswitch_7
    const-string p0, "BOTTOM_BAR"

    goto :goto_0

    :pswitch_8
    const-string p0, "MODE_SELECTOR"

    goto :goto_0

    :pswitch_9
    const-string p0, "MAIN_CONTENT"

    goto :goto_0

    :pswitch_a
    const-string p0, "TOP_BAR"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initCurrentFragments(Landroid/util/SparseIntArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "originalFragments"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v1, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p1, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private synthetic lambda$cacheFragment$2(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "fragmentInfo"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mFragmentCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic lambda$delegateMode$1(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "lifecycleListener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p0}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    return-void
.end method

.method private synthetic lambda$loadBasicFragment$0(Landroidx/fragment/app/FragmentTransaction;ILcom/android/camera/fragment/BaseFragment;ILjava/lang/Runnable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "transaction",
            "containerType",
            "basicFragment",
            "lastFragment",
            "callback"
        }
    .end annotation

    invoke-static {p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result p2

    invoke-virtual {p3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, p3, v0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v0

    invoke-virtual {p2, v0, p3}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {p3}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result p2

    if-ne p4, p2, :cond_0

    iget-object p2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->initCurrentFragments(Landroid/util/SparseIntArray;)V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private updateInfoListInVideoPrompter(Ljava/util/List;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "replaceInfoList",
            "visible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;I)V"
        }
    .end annotation

    const/4 v0, 0x5

    const/4 v1, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0xee

    const/16 v6, 0x16

    if-nez p2, :cond_1

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p0

    if-eq p0, v5, :cond_0

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    const/4 p2, 0x0

    new-array p2, p2, [I

    invoke-virtual {p0, v5, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->hideContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p0

    if-ne p0, v5, :cond_2

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->showContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->showContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->showContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->showContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentOperation;->showContainer()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->lambda$cacheFragment$2(I)V

    return-void
.end method

.method public synthetic OooO0O0(Landroidx/fragment/app/FragmentTransaction;ILcom/android/camera/fragment/BaseFragment;ILjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->lambda$loadBasicFragment$0(Landroidx/fragment/app/FragmentTransaction;ILcom/android/camera/fragment/BaseFragment;ILjava/lang/Runnable;)V

    return-void
.end method

.method public varargs delegateEvent(I[I)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "subEvent"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xf2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq p1, v2, :cond_25

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-eq p1, v5, :cond_23

    if-eq p1, v4, :cond_21

    const/4 v5, 0x4

    if-eq p1, v5, :cond_1f

    if-eq p1, v6, :cond_1d

    const/4 v2, 0x7

    const/4 v7, 0x6

    if-eq p1, v2, :cond_1c

    const/16 v1, 0xa

    if-eq p1, v1, :cond_1a

    const/16 v1, 0x13

    const/16 v2, 0x16

    if-eq p1, v1, :cond_18

    const/16 v1, 0x15

    if-eq p1, v1, :cond_16

    const/16 v1, 0x17

    if-eq p1, v1, :cond_14

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_12

    const/16 v1, 0x31

    if-eq p1, v1, :cond_11

    const/16 v1, 0x8

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffff8

    if-eq p1, p2, :cond_0

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffffff8

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, -0xf

    if-eq p1, p2, :cond_1

    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hide()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, -0xc

    new-array v1, v3, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->push(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0oOOo()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_2
    aget p1, p2, v3

    invoke-direct {p0, v0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->updateInfoListInVideoPrompter(Ljava/util/List;I)V

    goto/16 :goto_1

    :pswitch_3
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xfe

    if-eq p1, p2, :cond_4

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 p2, 0xfe

    new-array v1, v3, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff2

    if-eq p1, p2, :cond_5

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff2

    new-array v1, v3, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_5
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_5
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffff

    if-eq p1, p2, :cond_6

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffffff

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_6
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_6
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffe

    if-eq p1, p2, :cond_7

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffe

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_7
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffc

    if-eq p1, p2, :cond_8

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffc

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_8
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffb

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_8
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffa

    if-eq p1, p2, :cond_9

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffffa

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff9

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_9
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff7

    if-eq p1, p2, :cond_a

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffff7

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_a
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_a
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff6

    if-eq p1, p2, :cond_b

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_b
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_b
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffffd

    if-eq p1, p2, :cond_c

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_c
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfffff1

    if-eq p1, p2, :cond_d

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_d
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_d
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xff7

    if-eq p1, p2, :cond_e

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_e
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_e
    invoke-static {v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hide()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xfffd

    new-array v1, v3, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_f
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfff0

    if-eq p1, p2, :cond_f

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_f
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :pswitch_10
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffd

    if-eq p1, p2, :cond_10

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_10
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_11
    array-length p1, p2

    if-lez p1, :cond_26

    array-length p1, p2

    move v1, v3

    :goto_0
    if-ge v1, p1, :cond_26

    aget v4, p2, v1

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeTarget(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_12
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xfff5

    if-eq p1, p2, :cond_13

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_13
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_14
    invoke-virtual {p0, v7}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffff5

    if-eq p1, p2, :cond_15

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_15
    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const p2, 0xffff3

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_16
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const p2, 0xffffe

    if-eq p1, p2, :cond_17

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_17
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_18
    array-length p1, p2

    if-lez p1, :cond_19

    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    aget p2, p2, v3

    new-array v1, v3, [I

    invoke-virtual {p1, p2, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_19
    invoke-static {v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1a
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xffa

    if-eq p1, p2, :cond_1b

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1b
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1c
    invoke-virtual {p0, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xf1

    if-eq p1, p2, :cond_26

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v7}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1d
    aget p1, p2, v3

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->isViewContainerHidden(I)Z

    move-result p2

    if-eqz p2, :cond_1e

    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->show()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1e
    invoke-static {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->hide()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_1f
    const/16 p1, 0xf6

    invoke-virtual {p0, v4, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getFragmentIndex(II)I

    move-result p2

    if-gez p2, :cond_20

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p2

    invoke-virtual {p2, p1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->insert(II)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_20
    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeTarget(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_21
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    array-length v1, p2

    if-lez v1, :cond_22

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    const/16 v1, 0xf5

    new-array v2, v2, [I

    aget p2, p2, v3

    aput p2, v2, v3

    invoke-virtual {p1, v1, v2}, Lcom/android/camera/fragment/BaseFragmentOperation;->pushAndHideOthers(I[I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_22
    const/16 p2, 0xf5

    if-ne p1, p2, :cond_26

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->pop()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_23
    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    const/16 p2, 0xfb

    if-eq p1, p2, :cond_24

    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/BaseFragmentOperation;->replaceWith(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_24
    invoke-static {v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/camera/fragment/BaseFragmentOperation;->removeCurrent()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_25
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getActiveFragment(I)I

    move-result p1

    if-eq p1, v1, :cond_26

    invoke-static {v4}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_27

    return-void

    :cond_27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "applyUpdateSet s.3"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    const-string v1, "BaseFragmentDelegate"

    invoke-static {v1, p1, p2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_10
        :pswitch_f
        :pswitch_e
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public delegateMode(Lio/reactivex/Completable;Lcom/android/camera/module/loader/base/StartControl;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)Lio/reactivex/disposables/CompositeDisposable;
    .locals 3
    .param p1    # Lio/reactivex/Completable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x10
        }
        names = {
            "presSetupSequence",
            "startControl",
            "lifecycleListener"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "BaseFragmentDelegate"

    const-string p2, "delegateMode fail because mActivity is null"

    invoke-static {p1, p2, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_0
    if-eqz p3, :cond_1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OoOoOo;

    invoke-direct {v0, p3}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0OoOoOo;-><init>(Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    new-instance v2, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v2}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    if-eqz p3, :cond_2

    invoke-virtual {p1, v0}, Lio/reactivex/Completable;->subscribe(Lio/reactivex/functions/Action;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lio/reactivex/Completable;->subscribe()Lio/reactivex/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v2, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :goto_1
    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {p0, v1, v1, p2}, Lcom/android/camera/animation/AnimationComposite;->dispose(Lio/reactivex/Completable;Lio/reactivex/functions/Action;Lcom/android/camera/module/loader/base/StartControl;)Lio/reactivex/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    return-object v2
.end method

.method public getActiveFragment(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/16 p0, 0xf0

    return p0
.end method

.method public getAnimationComposite()Lcom/android/camera/animation/AnimationComposite;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    return-object p0
.end method

.method public getFragmentIndex(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "containerType",
            "fragmentInfo"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public getOriginalFragment(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;)V
    .locals 4
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isSupportAsyncInflate"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "supportFragmentManager",
            "baseLifecycleListener"
        }
    .end annotation

    invoke-interface {p2}, Lcom/android/camera/fragment/lifeCircle/BaseLifecycleListener;->onLifeAlive()V

    invoke-virtual {p0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->registerProtocol()V

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x1

    const/16 v0, 0xd

    const/4 v1, 0x0

    const/16 v2, 0xf0

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentInto()I

    move-result v3

    invoke-virtual {v1, v3, v0}, Lcom/android/camera/animation/AnimationComposite;->put(ILcom/android/camera/animation/AnimationDelegate$AnimationResource;)V

    invoke-virtual {v0}, Lcom/android/camera/fragment/BaseFragment;->getFragmentTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xf4

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x4

    const/16 v0, 0xf1

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x3

    const/16 v0, 0xf2

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x2

    const/16 v0, 0xf3

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->oo0oOOo()Z

    move-result p1

    const/16 p2, 0x8

    if-nez p1, :cond_1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0oO()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 v0, 0xff4

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_1
    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x7

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x5

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 p2, 0x14

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 p2, 0x15

    invoke-virtual {p1, p2, v2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public isViewContainerHidden(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p1, 0x1

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v1

    and-int/2addr p1, v1

    goto :goto_0

    :cond_1
    return p1
.end method

.method public loadBasicFragment(Landroidx/fragment/app/FragmentManager;Ljava/lang/Runnable;)V
    .locals 16
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "supportFragmentManager",
            "callback"
        }
    .end annotation

    move-object/from16 v7, p0

    invoke-virtual/range {p1 .. p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v8

    const/4 v9, 0x0

    const/16 v10, 0xf0

    move v0, v9

    move v11, v10

    :goto_0
    iget-object v1, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    if-eq v1, v10, :cond_0

    move v11, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v12, v9

    :goto_1
    iget-object v0, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge v12, v0, :cond_4

    iget-object v0, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v12}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    iget-object v1, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mOriginalFragments:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v12}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v7, v2, v0, v1, v10}, Lcom/android/camera/fragment/BaseFragmentDelegate;->constructFragment(ZILjava/lang/String;I)Lcom/android/camera/fragment/BaseFragment;

    move-result-object v14

    if-nez v14, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadBasicFragment fail, fragment id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    const-string v2, "BaseFragmentDelegate"

    invoke-static {v2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    new-instance v15, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0O000Oo;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v13

    move-object v4, v14

    move v5, v11

    move-object/from16 v6, p2

    invoke-direct/range {v0 .. v6}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/o0O000Oo;-><init>(Lcom/android/camera/fragment/BaseFragmentDelegate;Landroidx/fragment/app/FragmentTransaction;ILcom/android/camera/fragment/BaseFragment;ILjava/lang/Runnable;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00Ooooo()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v13}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getViewContainer(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v14, v0, v1, v15}, Lcom/android/camera/fragment/BaseFragment;->asyncInflater(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    invoke-interface {v15}, Ljava/lang/Runnable;->run()V

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public loadModuleFragment(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newFragmentAlias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "BaseFragmentDelegate"

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyUpdateSet s.1"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;)V

    :cond_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-eqz v6, :cond_2

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4, v5}, Lcom/android/camera/fragment/BaseFragmentDelegate;->checkOperation(ILjava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_4
    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyUpdateSet s.2"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;)V

    :cond_6
    iput-object p1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    return-void
.end method

.method public registerProtocol()V
    .locals 2

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    return-void
.end method

.method public resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newFragmentAlias"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/BaseFragmentOperation;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetFeatureFragment mLastFragmentAlias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", newFragments "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "BaseFragmentDelegate"

    invoke-static {v3, v0, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz p1, :cond_3

    iget-object v6, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    move v8, v1

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-ge v8, v9, :cond_2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/fragment/BaseFragmentOperation;

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/camera/fragment/BaseFragmentOperation;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/camera/fragment/BaseFragmentDelegate;->getOriginalFragment(I)I

    move-result v6

    const/16 v7, 0xf0

    if-ne v6, v7, :cond_4

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->clear()Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/camera/fragment/BaseFragmentOperation;->create(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/camera/fragment/BaseFragmentOperation;->popAndClearOthers(I)Lcom/android/camera/fragment/BaseFragmentOperation;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceInfoList "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, p1, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mLastFragmentAlias:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_6

    move-object v2, v0

    :cond_6
    return-object v2
.end method

.method public unRegisterProtocol()V
    .locals 5

    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const-class v1, Lcom/android/camera/protocol/protocols/BaseDelegate;

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(Ljava/lang/Class;Lcom/android/camera/protocol/BaseProtocol;)V

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/BaseFragmentDelegate;->resetFeatureFragment(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyUpdateSet s.0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "BaseFragmentDelegate"

    invoke-static {v4, v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/camera/fragment/BaseFragmentDelegate;->applyUpdateSet(Ljava/util/List;)V

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mAnimationComposite:Lcom/android/camera/animation/AnimationComposite;

    invoke-virtual {v0}, Lcom/android/camera/animation/AnimationComposite;->destroy()V

    iput-object v1, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mActivity:Lcom/android/camera/Camera;

    return-void
.end method

.method public varargs updateCurrentFragments(III[I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "containerType",
            "fragmentInfo",
            "type",
            "object"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-eq p3, v1, :cond_0

    return-void

    :cond_0
    if-eq p3, v1, :cond_6

    const/4 p0, 0x2

    if-eq p3, p0, :cond_5

    const/4 p0, 0x3

    const/4 p1, 0x0

    if-eq p3, p0, :cond_3

    packed-switch p3, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    aget p0, p4, p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_3

    :goto_0
    :pswitch_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_1

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :pswitch_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :pswitch_4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-void

    :cond_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-ge p1, p0, :cond_8

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, p2, :cond_4

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_3

    :cond_6
    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/camera/fragment/BaseFragmentDelegate;->mCurrentFragments:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
