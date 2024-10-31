.class public interface abstract LOooOO0o/oo0o0Oo;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlbeans/XmlString;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooOO0o/oo0o0Oo$OooO0O0;,
        LOooOO0o/oo0o0Oo$OooO00o;
    }
.end annotation


# static fields
.field public static final o0000:I = 0x3

.field public static final o00000OO:Lorg/apache/xmlbeans/SchemaType;

.field public static final o00000Oo:LOooOO0o/oo0o0Oo$OooO00o;

.field public static final o00000o0:LOooOO0o/oo0o0Oo$OooO00o;

.field public static final o00000oO:I = 0x1

.field public static final o00000oo:I = 0x2

.field public static final o0000Ooo:LOooOO0o/oo0o0Oo$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, LOooOO0o/oo0o0Oo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sE130CAA0A01A7CDE5A2B4FEB8B311707"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "stext2fe5type"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, LOooOO0o/oo0o0Oo;->o00000OO:Lorg/apache/xmlbeans/SchemaType;

    const-string v0, "view"

    invoke-static {v0}, LOooOO0o/oo0o0Oo$OooO00o;->OooO0O0(Ljava/lang/String;)LOooOO0o/oo0o0Oo$OooO00o;

    move-result-object v0

    sput-object v0, LOooOO0o/oo0o0Oo;->o00000Oo:LOooOO0o/oo0o0Oo$OooO00o;

    const-string v0, "edit"

    invoke-static {v0}, LOooOO0o/oo0o0Oo$OooO00o;->OooO0O0(Ljava/lang/String;)LOooOO0o/oo0o0Oo$OooO00o;

    move-result-object v0

    sput-object v0, LOooOO0o/oo0o0Oo;->o00000o0:LOooOO0o/oo0o0Oo$OooO00o;

    const-string v0, "backwardCompatible"

    invoke-static {v0}, LOooOO0o/oo0o0Oo$OooO00o;->OooO0O0(Ljava/lang/String;)LOooOO0o/oo0o0Oo$OooO00o;

    move-result-object v0

    sput-object v0, LOooOO0o/oo0o0Oo;->o0000Ooo:LOooOO0o/oo0o0Oo$OooO00o;

    return-void
.end method


# virtual methods
.method public abstract enumValue()Lorg/apache/xmlbeans/StringEnumAbstractBase;
.end method

.method public abstract set(Lorg/apache/xmlbeans/StringEnumAbstractBase;)V
.end method
