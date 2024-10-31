.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic o0000o:Landroid/widget/ImageView;

.field public final synthetic o0000o0o:Lcom/android/camera/fragment/FragmentBottomPopupTips;


# direct methods
.method public synthetic constructor <init>(Lcom/android/camera/fragment/FragmentBottomPopupTips;Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;->o0000o0o:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iput-object p2, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;->o0000o:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;->o0000o0o:Lcom/android/camera/fragment/FragmentBottomPopupTips;

    iget-object p0, p0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oO00000;->o0000o:Landroid/widget/ImageView;

    check-cast p1, Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;

    invoke-virtual {v0, p0, p1}, Lcom/android/camera/fragment/FragmentBottomPopupTips;->OooOO0(Landroid/widget/ImageView;Lcom/android/camera/protocol/protocols/ocr/OCRProtocol;)V

    return-void
.end method
