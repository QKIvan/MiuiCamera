.class public Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;
.super Lcom/android/camera/fragment/CommonRecyclerViewHolder;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DurationSegmentItemHolder"
.end annotation


# instance fields
.field public mContentFrameLayout:Landroid/widget/FrameLayout;

.field public mDurationText:Landroid/widget/TextView;

.field public mIndexText:Landroid/widget/TextView;

.field public mRootView:Landroid/widget/FrameLayout;

.field public mSegmentItemView:Landroid/widget/FrameLayout;

.field public mSelectedIndicator:Landroid/widget/ImageView;

.field public mSelectedMore:Landroid/widget/ImageView;

.field public mSelectedMoreBg:Landroid/widget/ImageView;

.field public mVideoCover:Landroid/widget/ImageView;

.field public final synthetic this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;


# direct methods
.method public constructor <init>(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-direct {p0, p2}, Lcom/android/camera/fragment/CommonRecyclerViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a05cb

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mRootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p2}, Lcom/android/camera/animation/FolmeUtils;->handleListItemTouch(Landroid/view/View;)V

    const p1, 0x7f0a05cc

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mSegmentItemView:Landroid/widget/FrameLayout;

    const p1, 0x7f0a05c0

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mSelectedMoreBg:Landroid/widget/ImageView;

    const p1, 0x7f0a05c1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mSelectedMore:Landroid/widget/ImageView;

    const p1, 0x7f0a05bf

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mSelectedIndicator:Landroid/widget/ImageView;

    const p1, 0x7f0a01b5

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mVideoCover:Landroid/widget/ImageView;

    const p1, 0x7f0a05c8

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mDurationText:Landroid/widget/TextView;

    const p1, 0x7f0a05c9

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mIndexText:Landroid/widget/TextView;

    const p1, 0x7f0a05ca

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mContentFrameLayout:Landroid/widget/FrameLayout;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    iget-object v0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$000(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mSelectedMore:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    iget-object p0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v0, p0, p1, v1}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$100(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-static {p0}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$200(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;)Lcom/android/camera/fragment/vlogpro/IVlogPro$IVlogProSegmentItemListener;

    move-result-object p0

    invoke-interface {p0, p1, v1}, Lcom/android/camera/fragment/vlogpro/IVlogPro$IVlogProSegmentItemListener;->onSelectedItem(IZ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-static {v0}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$000(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;)I

    move-result v0

    iget-object v2, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-static {v2, p1}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$002(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;I)I

    iget-object v2, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-static {v2}, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;->access$200(Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;)Lcom/android/camera/fragment/vlogpro/IVlogPro$IVlogProSegmentItemListener;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/android/camera/fragment/vlogpro/IVlogPro$IVlogProSegmentItemListener;->onSelectedItem(IZ)V

    iget-object v1, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter$DurationSegmentItemHolder;->this$0:Lcom/android/camera/fragment/vlogpro/VlogProSegmentAdapter;

    invoke-virtual {p0, p1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void
.end method
