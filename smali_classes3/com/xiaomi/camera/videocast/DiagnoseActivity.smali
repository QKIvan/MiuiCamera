.class public Lcom/xiaomi/camera/videocast/DiagnoseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private synthetic lambda$showDialog$0()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$showDialog$1()V
    .locals 1

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic OooO00o()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->lambda$showDialog$0()V

    return-void
.end method

.method public synthetic OooO0O0()V
    .locals 0

    invoke-direct {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->lambda$showDialog$1()V

    return-void
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

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    invoke-virtual {p0}, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->showDialog()V

    return-void
.end method

.method public showDialog()V
    .locals 13

    iget-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    :cond_0
    const v0, 0x7f120a62

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooO0o()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f120611

    goto :goto_0

    :cond_1
    const v0, 0x7f120612

    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f120377

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, LOooO0OO/OooOO0/OooO00o/OooOOOO/OooO;

    invoke-direct {v5, p0}, LOooO0OO/OooOO0/OooO00o/OooOOOO/OooO;-><init>(Lcom/xiaomi/camera/videocast/DiagnoseActivity;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, LOooO0OO/OooOO0/OooO00o/OooOOOO/OooO0o;

    invoke-direct {v12, p0}, LOooO0OO/OooOO0/OooO00o/OooOOOO/OooO0o;-><init>(Lcom/xiaomi/camera/videocast/DiagnoseActivity;)V

    move-object v1, p0

    invoke-static/range {v1 .. v12}, Lcom/android/camera/RotateDialogController;->showSystemAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/CharSequence;ZLjava/lang/Runnable;)Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/videocast/DiagnoseActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
