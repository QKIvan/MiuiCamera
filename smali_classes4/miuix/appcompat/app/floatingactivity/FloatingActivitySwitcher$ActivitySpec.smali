.class public Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivitySpec"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private activityClassName:Ljava/lang/String;

.field private identity:Ljava/lang/String;

.field private index:I

.field private isOpenEnterAnimExecuted:Z

.field private isPreDestroy:Z

.field private taskId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec$1;

    invoke-direct {v0}, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec$1;-><init>()V

    sput-object v0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    iput v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    iput-boolean v0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    iput p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    iput-object p3, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    iput p4, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    iput-boolean p5, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return-void
.end method

.method public static synthetic access$000(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    return p0
.end method

.method public static synthetic access$100(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return p0
.end method

.method public static synthetic access$102(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    return p1
.end method

.method public static synthetic access$202(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$302(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$400(Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;)I
    .locals 0

    iget p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isPreDestroy()Z
    .locals 0

    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    return p0
.end method

.method public setIsDestroy(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isPreDestroy:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ activityClassName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; identity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; taskId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; isOpenEnterAnimExecuted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "; }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->activityClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->index:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->identity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->taskId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p0, p0, Lmiuix/appcompat/app/floatingactivity/FloatingActivitySwitcher$ActivitySpec;->isOpenEnterAnimExecuted:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
