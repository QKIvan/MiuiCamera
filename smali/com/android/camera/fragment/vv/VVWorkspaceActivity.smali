.class public Lcom/android/camera/fragment/vv/VVWorkspaceActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;,
        Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;
    }
.end annotation


# static fields
.field private static final DELETE:I = 0x67

.field private static final EDIT:I = 0x66

.field public static final REQUEST_CODE:I = 0x65

.field public static final TAG:Ljava/lang/String; = "VVWorkspaceActivity"


# instance fields
.field private mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

.field private mAudioController:Lcom/android/camera/module/AudioController;

.field private mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mEmptyView:Landroid/view/View;

.field private mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

.field private mPlayerItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mVVList:Lcom/android/camera/fragment/vv/VVList;

.field private vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/ActionMode;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Landroid/view/MenuItem;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->onSelectAllClick()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->onDeleteClick()V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->showEmptyView()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$802(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lmiuix/appcompat/app/AlertDialog;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p1
.end method

.method private exit()V
    .locals 2

    const-string v0, "VVWorkspaceActivity"

    const-string v1, "exit"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private finishActionMode()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    :cond_0
    return-void
.end method

.method private inEditMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isEditMode()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private initActionBar()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    const v0, 0x7f1204d1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 11

    const v0, 0x7f0a0627

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const v0, 0x7f0a062c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEmptyView:Landroid/view/View;

    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-direct {v0}, Lcom/android/camera/fragment/vv/VVWorkspace;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspace;->restoreWorkspace()Z

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->showEmptyView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08096a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const v1, 0x7f1204d5

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00oO00/o0ooOOo;

    invoke-direct {v1, p0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00oO00/o0ooOOo;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a93

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    invoke-static {p0}, Lcom/android/camera/Util;->isFullScreenNavBarHidden(Landroid/content/Context;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VlogViewModel;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VlogViewModel;->getVVList()Lcom/android/camera/fragment/vv/VVList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v2, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v3, v1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v2

    check-cast v2, Lcom/android/camera/fragment/vv/VVItem;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    new-instance v4, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;

    invoke-direct {v4, v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspacePlayerItem;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceItem;Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/camera2/compat/theme/MiThemeCompat;->getVideoResource()Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;

    move-result-object v5

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->getList()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mPlayerItemList:Ljava/util/List;

    move-object v6, p0

    move-object v9, p0

    move-object v10, p0

    invoke-interface/range {v5 .. v10}, Lcom/android/camera2/compat/theme/common/MiThemeOperationVideoResourceInterface;->getVVWorkspaceAdapter(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/android/camera/fragment/vv/VVWorkspaceAdapter$OnVVWorkspacePlayListener;)Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    new-instance v0, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const-string/jumbo v1, "vv_workspace"

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mLayoutManager:Lcom/android/camera/fragment/beauty/LinearLayoutManagerWrapper;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070a9c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070a9e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v3, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$FragmentVVWorkspaceItemDecoration;-><init>(III)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method private intoActionMode()V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "VVWorkspaceActivity"

    const-string v2, "intoActionMode"

    invoke-static {v1, v2, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$ActionModeCallback;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "v"
        }
    .end annotation

    const/4 p1, 0x1

    invoke-direct {p0, p1, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return-void
.end method

.method public static synthetic lambda$onDeleteClick$1()V
    .locals 2

    const-string v0, "VVWorkspaceActivity"

    const-string v1, "mDeleteDialog onClick negative"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onDeleteClick()V
    .locals 13

    const-string v0, "VVWorkspaceActivity"

    const-string/jumbo v1, "onClick: vv_delete_layout"

    invoke-static {v0, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value_vv_click_workspace_delete"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v3}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f100018

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const v0, 0x7f1204bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;

    invoke-direct {v8, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$1;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    const v0, 0x7f12051f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v11

    sget-object v12, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00oO00/o0OOO0o;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00oO00/o0OOO0o;

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, p0

    invoke-static/range {v4 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    new-instance v1, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity$2;-><init>(Lcom/android/camera/fragment/vv/VVWorkspaceActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private onSelectAllClick()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick: vv_workspace_edit, inEditMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VVWorkspaceActivity"

    invoke-static {v1, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value_vv_click_workspace_select_all"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isSelectedAll()Z

    move-result v0

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->updateSelectedCount()V

    return-void
.end method

.method private restoreOuterAudio()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-direct {v0}, Lcom/android/camera/module/AudioController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AudioController;->restoreMusicSteam(Landroid/app/Activity;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    return-void
.end method

.method private setEditMode(ZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "animation",
            "editMode"
        }
    .end annotation

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setEditMode "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VVWorkspaceActivity"

    invoke-static {v0, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "mAdapter is null"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->setEditMode(Z)V

    if-nez p2, :cond_1

    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1, v1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->selected(Z)V

    :cond_1
    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    iget-object p1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->intoActionMode()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->finishActionMode()V

    :goto_0
    return-void
.end method

.method private showEmptyView()Z
    .locals 2

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->vvWorkspace:Lcom/android/camera/fragment/vv/VVWorkspace;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/ProcessingWorkspace;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mRecyclerView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/ActionBar;->setEndView(Landroid/view/View;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method private silenceOuterAudio()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/module/AudioController;

    invoke-direct {v0}, Lcom/android/camera/module/AudioController;-><init>()V

    iput-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAudioController:Lcom/android/camera/module/AudioController;

    invoke-virtual {v0, p0}, Lcom/android/camera/module/AudioController;->requestMusicSteam(Landroid/app/Activity;)V

    return-void
.end method

.method private updateSelectedCount()V
    .locals 3

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->getSelectedCount()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSelectedCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VVWorkspaceActivity"

    invoke-static {v2, v1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v1

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mEditActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_2

    return-void

    :cond_2
    check-cast v0, Lmiuix/view/EditActionMode;

    const v1, 0x102001a

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->isSelectedAll()Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f080970

    goto :goto_1

    :cond_3
    const p0, 0x7f080976

    :goto_1
    invoke-interface {v0, v1, v2, p0}, Lmiuix/view/EditActionMode;->setButton(ILjava/lang/CharSequence;I)V

    return-void
.end method


# virtual methods
.method public synthetic OooO00o(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "VVWorkspaceActivity"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo v0, "onClick: vv_workspace_shot"

    invoke-static {v2, v0}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "value_vv_click_workspace_continue"

    invoke-static {v0}, Lcom/android/camera/statistic/CameraStatUtils;->trackVVWorkspaceClick(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mVVList:Lcom/android/camera/fragment/vv/VVList;

    iget-object v3, p1, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->mTemplateId:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/camera/resource/BaseResourceList;->getItemById(Ljava/lang/String;)Lcom/android/camera/resource/BaseResourceItem;

    move-result-object v0

    check-cast v0, Lcom/android/camera/fragment/vv/VVItem;

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "createFromRawInfo"

    invoke-static {v2, v3, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/camera/fragment/vv/VVWorkspaceItem;->getRawInfoPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/fragment/vv/VVItem;->createFromRawInfo(Ljava/lang/String;)Lcom/android/camera/fragment/vv/VVItem;

    move-result-object v0

    if-nez v0, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "create failed"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/data/data/extra/DataItemLive;->setCurrentVVItem(Lcom/android/camera/fragment/vv/VVItem;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemObservable()Lcom/android/camera/data/observeable/DataItemObservable;

    move-result-object v0

    const-class v1, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0, v1}, Lcom/android/camera/data/observeable/DataItemObservable;->get(Ljava/lang/Class;)Lcom/android/camera/data/observeable/VMBase;

    move-result-object v0

    check-cast v0, Lcom/android/camera/data/observeable/VMProcessing;

    invoke-virtual {v0}, Lcom/android/camera/data/observeable/VMProcessing;->reset()V

    invoke-virtual {v0, p1}, Lcom/android/camera/data/observeable/VMProcessing;->setCurrentWorkspaceItem(Lcom/android/camera/fragment/vv/VVWorkspaceItem;)V

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p1

    const/16 v0, 0xb3

    invoke-virtual {p1, v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    :sswitch_1
    const-string/jumbo p1, "onClick: vv_workspace_delete"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->updateSelectedCount()V

    goto :goto_0

    :sswitch_2
    const-string/jumbo p1, "onClick: vv_workspace_back"

    invoke-static {v2, p1}, Lcom/android/camera/log/LogU;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->exit()V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0a0628 -> :sswitch_2
        0x7f0a062a -> :sswitch_1
        0x7f0a0631 -> :sswitch_0
        0x7f0a0633 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object p1

    invoke-virtual {p1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00oooo()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/camera/display/Display;->init(Landroid/content/Context;Z)V

    :cond_0
    const p1, 0x7f0d0109

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/camera/CameraIntentManager;->isStartActivityWhenLocked(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->initActionBar()V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->initView()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation build Lcom/android/camera/jacoco/JacocoForceIgnore;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->inEditMode()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2, v0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->setEditMode(ZZ)V

    return p2

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->exit()V

    return p2

    :cond_1
    const/16 v1, 0x19

    if-eq p1, v1, :cond_3

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->restoreOuterAudio()V

    iget-object v0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mDeleteDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object p0, p0, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->mAdapter:Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceAdapter;->stopAll()V

    :cond_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/camera/data/data/global/DataItemGlobal;->resetTimeOut()V

    return-void
.end method

.method public onPlay()V
    .locals 0

    invoke-direct {p0}, Lcom/android/camera/fragment/vv/VVWorkspaceActivity;->silenceOuterAudio()V

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method
