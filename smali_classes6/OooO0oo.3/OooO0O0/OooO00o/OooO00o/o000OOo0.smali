.class public interface abstract annotation LOooO0oo/OooO0O0/OooO00o/OooO00o/o000OOo0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation build LOooO0oo/OooO0O0/OooO00o/OooO00o/o000O0Oo;
    value = "RegExp"
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation LOooO0oo/OooO0O0/OooO00o/OooO00o/o000OOo0;
        prefix = ""
        suffix = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->LOCAL_VARIABLE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->ANNOTATION_TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract prefix()Ljava/lang/String;
.end method

.method public abstract suffix()Ljava/lang/String;
.end method
