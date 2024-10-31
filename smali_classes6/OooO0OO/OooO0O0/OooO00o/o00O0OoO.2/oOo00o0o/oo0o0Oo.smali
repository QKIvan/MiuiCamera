.class public final synthetic LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;

    invoke-direct {v0}, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;-><init>()V

    sput-object v0, LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;->o0000o0o:LOooO0OO/OooO0O0/OooO00o/o00O0OoO/oOo00o0o/oo0o0Oo;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-static {p1, p2}, Lcom/android/camera/fragment/vlogpro/VPWorkspaceItem;->lambda$restoreFromFolder$0(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method
