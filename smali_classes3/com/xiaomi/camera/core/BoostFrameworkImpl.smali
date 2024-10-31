.class public Lcom/xiaomi/camera/core/BoostFrameworkImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xiaomi/camera/core/BaseBoostFramework;


# static fields
.field private static final BOOST_CLASS_NAME_MTK:Ljava/lang/String; = "android.util.MtkBoostFramework"

.field private static final BOOST_CLASS_NAME_QUALCOM:Ljava/lang/String; = "android.util.BoostFramework"

.field private static final BOOST_METHOD_NAME:Ljava/lang/String; = "perfLockAcquire"

.field private static final BOOST_STOP_NAME:Ljava/lang/String; = "perfLockRelease"

.field private static final TAG:Ljava/lang/String; = "BoostFrameworkImpl"

.field private static mMainTid:I

.field private static mRenderThreadTid:I

.field private static mSpeedUIClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mSpeedUIMethod:Ljava/lang/reflect/Method;

.field private static sBoostClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sDefaultParams:[I

.field private static volatile sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

.field private static sStartBoost:Ljava/lang/reflect/Method;

.field private static sStopBoost:Ljava/lang/reflect/Method;


# instance fields
.field private final mBoostQcomPerfList:[I

.field private final mDefaultMtkPerfList:[I

.field private final mDefaultQComPerfList:[I

.field private mLastDuration:J

.field private mPerf:Ljava/lang/Object;

.field private mSpeedPerf:Ljava/lang/Object;

.field private mStartSpeedUITime:J

.field private final mVideoPerfList:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->OoooO00()[I

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    const-class v0, [I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedPerf:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartSpeedUITime:J

    iput-wide v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mLastDuration:J

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultQComPerfList:[I

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    const/16 v1, 0x12

    new-array v1, v1, [I

    fill-array-data v1, :array_3

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostQcomPerfList:[I

    :try_start_0
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.util.MtkBoostFramework"

    goto :goto_0

    :cond_0
    const-string v1, "android.util.BoostFramework"

    :goto_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const-string v5, "perfLockAcquire"

    new-array v6, v2, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v4

    aput-object v0, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    const-string v5, "perfLockRelease"

    new-array v6, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sBoostClass:Ljava/lang/Class;

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    :cond_1
    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o000o0Oo()LOooO0OO/OooO0oO/OooO00o/OooO0OO;

    move-result-object v1

    invoke-virtual {v1}, LOooO0OO/OooO0oO/OooO00o/OooO0OO;->o00OOO()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "miui.process.ProcessManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    const-string v5, "beginSchedThreads"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v4

    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIClass:Ljava/lang/Class;

    new-array v1, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedPerf:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BoostFrameworkImpl#init: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BoostFrameworkImpl"

    invoke-static {v1, v0, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    nop

    :array_0
    .array-data 4
        0x400000
        0x1e8480
        0x400100
        0x1e8480
        0x1000000
        0x0
        0xc00000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40804000    # 4.0078125f
        0xfff
        0x40804100
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
    .end array-data

    :array_2
    .array-data 4
        0x40800000    # 4.0f
        0xfff
        0x40804000    # 4.0078125f
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40804100
        0xfff
        0x40ce0000    # 6.4375f
        0x32000a
    .end array-data

    :array_3
    .array-data 4
        0x40c00000    # 6.0f
        0x1
        0x40804000    # 4.0078125f
        0xfff
        0x40800000    # 4.0f
        0xfff
        0x40804100
        0xfff
        0x40800100    # 4.000122f
        0xfff
        0x40800200    # 4.000244f
        0xfff
        0x40804200
        0xfff
        0x40c44000    # 6.1328125f
        0x7
        0x40c3c000    # 6.1171875f
        0xf8
    .end array-data
.end method

.method public static getInstance()Lcom/xiaomi/camera/core/BoostFrameworkImpl;
    .locals 2

    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v0, :cond_1

    const-class v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    if-nez v1, :cond_0

    new-instance v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    invoke-direct {v1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;-><init>()V

    sput-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sInstance:Lcom/xiaomi/camera/core/BoostFrameworkImpl;

    return-object v0
.end method

.method private getMainPid()I
    .locals 0
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNeedSpeedUI"
        type = 0x0
    .end annotation

    sget p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mMainTid:I

    if-nez p0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    sput p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mMainTid:I

    :cond_0
    sget p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mMainTid:I

    return p0
.end method

.method private getRenderThreadId(Landroid/view/View;)I
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNeedSpeedUI"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const-string p0, "BoostFrameworkImpl"

    sget v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mRenderThreadTid:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.view.View"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getThreadedRenderer"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "nGetRenderThreadTid"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v0

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const-string v4, "mNativeProxy"

    invoke-virtual {v1, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v4

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {v3, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRenderThreadId  tid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move v6, v0

    move-object v0, p1

    move p1, v6

    :goto_0
    const-string v1, "getRenderThreadId exception"

    invoke-static {p0, v1, v0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    sput p1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mRenderThreadTid:I

    :cond_0
    sget p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mRenderThreadTid:I

    return p0
.end method

.method private startBoostInternal(I[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "params"
        }
    .end annotation

    const-string v0, "BoostFrameworkImpl"

    iget-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "ready to boost"

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStartBoost:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    aput-object p2, v4, v2

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "start boost exception"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method private stopBoostInternal()V
    .locals 4

    const-string v0, "BoostFrameworkImpl"

    iget-object v1, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "ready to stop boost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sStopBoost:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mPerf:Ljava/lang/Object;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "stop boost exception"

    invoke-static {v0, v1, p0}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public beginSchedThreads(I[I)V
    .locals 7
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNeedSpeedUI"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "threads"
        }
    .end annotation

    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "BoostFrameworkImpl"

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartSpeedUITime:J

    sub-long/2addr v3, v5

    iget-wide v5, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mLastDuration:J

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartSpeedUITime:J

    int-to-long v3, p1

    iput-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mLastDuration:J

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ready to schedule threads in huge cores. duration="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedPerf:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p2, v3, v1

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "beginSchedThreads exception"

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "There is an schedule threads operation which is processing."

    invoke-static {v2, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Do not support schedule threads in "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooO00o:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized startBoost(II)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "boostScene"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "BoostFrameworkImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBoost: duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", scene = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, LOooO0OO/OooO0oO/OooO00o/OooO0o;->OooOOoo()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    if-eqz p2, :cond_0

    array-length p2, p2

    if-nez p2, :cond_1

    :cond_0
    const-string p2, "BoostFrameworkImpl"

    const-string v0, "There is no custom cpu perf list for this project. use default."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2, v0, v1}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultMtkPerfList:[I

    sput-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    :cond_1
    sget-object p2, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->sDefaultParams:[I

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x5

    if-eq p2, v0, :cond_4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_3

    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mDefaultQComPerfList:[I

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mBoostQcomPerfList:[I

    goto :goto_0

    :cond_4
    iget-object p2, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mVideoPerfList:[I

    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoost(I[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startBoost(I[I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "duration",
            "params"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->startBoostInternal(I[I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public startSpeedUI(Landroid/view/View;I)V
    .locals 6
    .annotation build Lcom/android/camera/jacoco/JacocoIgnore;
        ignore = false
        key = "isNeedSpeedUI"
        type = 0x0
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "duration"
        }
    .end annotation

    const-string v0, "BoostFrameworkImpl"

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartSpeedUITime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mLastDuration:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    sget-object v1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mStartSpeedUITime:J

    int-to-long v3, p2

    iput-wide v3, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mLastDuration:J

    const/4 v1, 0x2

    :try_start_0
    new-array v3, v1, [I

    invoke-direct {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getMainPid()I

    move-result v4

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-direct {p0, p1}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->getRenderThreadId(Landroid/view/View;)I

    move-result p1

    aput p1, v3, v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ready to speedUI , renderTid = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, v3, v2

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, p1, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object p1, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedUIMethod:Ljava/lang/reflect/Method;

    iget-object p0, p0, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->mSpeedPerf:Ljava/lang/Object;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "start speedUI exception"

    invoke-static {v0, p1, p0}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized stopBoost()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "BoostFrameworkImpl"

    const-string v1, "stopBoost"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/xiaomi/camera/core/BoostFrameworkImpl;->stopBoostInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
