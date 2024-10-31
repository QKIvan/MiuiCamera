.class public interface abstract LOooOO0o/Oooo000;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooOO0o/Oooo000$OooO00o;
    }
.end annotation


# static fields
.field public static final o0OOO0o:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-class v0, LOooOO0o/Oooo000;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "schemaorg_apache_xmlbeans.system.sE130CAA0A01A7CDE5A2B4FEB8B311707"

    invoke-static {v0, v1}, Lorg/apache/xmlbeans/XmlBeans;->typeSystemForClassLoader(Ljava/lang/ClassLoader;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaTypeSystem;

    move-result-object v0

    const-string v1, "ctformulas808btype"

    invoke-interface {v0, v1}, Lorg/apache/xmlbeans/SchemaTypeSystem;->resolveHandle(Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    move-result-object v0

    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    sput-object v0, LOooOO0o/Oooo000;->o0OOO0o:Lorg/apache/xmlbeans/SchemaType;

    return-void
.end method


# virtual methods
.method public abstract addNewF()LOooOO0o/OooOo00;
.end method

.method public abstract getFArray(I)LOooOO0o/OooOo00;
.end method

.method public abstract getFArray()[LOooOO0o/OooOo00;
.end method

.method public abstract getFList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooOO0o/OooOo00;",
            ">;"
        }
    .end annotation
.end method

.method public abstract insertNewF(I)LOooOO0o/OooOo00;
.end method

.method public abstract oO0OoO0(ILOooOO0o/OooOo00;)V
.end method

.method public abstract oo0Oo0o([LOooOO0o/OooOo00;)V
.end method

.method public abstract removeF(I)V
.end method

.method public abstract sizeOfFArray()I
.end method
