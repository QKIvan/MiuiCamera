.class public interface abstract annotation L삗삛삙샚삙삝샚삐삑삂삝삗삑샚삷삛삚삒삝삓삷삛삚삇삀삕삚삀$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = L삗삛삙샚삙삝샚삐삑삂삝삗삑샚삷삛삚삒삝삓삷삛삚삇삀삕삚삀;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "a"
.end annotation


# static fields
.field public static final d2:Ljava/lang/String;

.field public static final e2:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\u2f58\u2f01\u2f12\u2f19\u2f13\u2f18\u2f05\u2f58\u2f12\u2f03\u2f14\u2f58\u2f14\u2f16\u2f1a\u2f12\u2f05\u2f16"

    invoke-static {v0}, Ld/l/f/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L삗삛삙샚삙삝샚삐삑삂삝삗삑샚삷삛삚삒삝삓삷삛삚삇삀삕삚삀$a;->d2:Ljava/lang/String;

    const-string v0, "\u2f58\u2f18\u2f13\u2f1a\u2f58\u2f12\u2f03\u2f14\u2f58\u2f14\u2f16\u2f1a\u2f12\u2f05\u2f16"

    invoke-static {v0}, Ld/l/f/a/c/e;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, L삗삛삙샚삙삝샚삐삑삂삝삗삑샚삷삛삚삒삝삓삷삛삚삇삀삕삚삀$a;->e2:Ljava/lang/String;

    return-void
.end method
