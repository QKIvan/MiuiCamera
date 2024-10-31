.class public abstract LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO00o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OooO00o"
.end annotation


# instance fields
.field public final OooO00o:[Landroid/view/View;

.field public final OooO0O0:Landroid/view/animation/Interpolator;

.field public final OooO0OO:J

.field public final OooO0Oo:LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;


# direct methods
.method public varargs constructor <init>(JLandroid/view/animation/Interpolator;LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;[Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "duration",
            "interpolator",
            "animEventInterceptor",
            "views"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO00o;->OooO00o:[Landroid/view/View;

    iput-object p3, p0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO00o;->OooO0O0:Landroid/view/animation/Interpolator;

    iput-wide p1, p0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO00o;->OooO0OO:J

    iput-object p4, p0, LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO00o;->OooO0Oo:LOooO0OO/OooO0O0/OooO0OO/OooOO0O/OooOO0$OooO0O0;

    return-void
.end method
