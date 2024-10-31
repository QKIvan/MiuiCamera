.class public final LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;
.super Ljava/lang/Object;


# static fields
.field private static final OooO:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;

.field private static final OooO00o:[C

.field private static final OooO0O0:[B

.field private static final OooO0OO:I = 0xd800

.field private static final OooO0Oo:I = 0xdbff

.field private static final OooO0o:I = 0xdfff

.field private static final OooO0o0:I = 0xdc00

.field private static final OooO0oO:I = 0x78

.field private static final OooO0oo:I = 0xc8


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0o0()[C

    move-result-object v0

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO00o:[C

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0Oo()[B

    move-result-object v0

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0:[B

    new-instance v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;

    invoke-direct {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;-><init>()V

    sput-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private OooO00o(IILOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;I)I
    .locals 0

    invoke-virtual {p3, p4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOoo(I)V

    const/16 p0, 0x5c

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    if-gez p2, :cond_1

    const/16 p0, 0x75

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    const/16 p0, 0xff

    if-le p1, p0, :cond_0

    shr-int/lit8 p0, p1, 0x8

    sget-object p2, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0:[B

    shr-int/lit8 p4, p0, 0x4

    aget-byte p4, p2, p4

    invoke-virtual {p3, p4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    and-int/lit8 p0, p0, 0xf

    aget-byte p0, p2, p0

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    and-int/lit16 p1, p1, 0xff

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    :goto_0
    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0:[B

    shr-int/lit8 p2, p1, 0x4

    aget-byte p2, p0, p2

    invoke-virtual {p3, p2}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    and-int/lit8 p1, p1, 0xf

    aget-byte p0, p0, p1

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    goto :goto_1

    :cond_1
    int-to-byte p0, p2

    invoke-virtual {p3, p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooO0oO(I)V

    :goto_1
    invoke-virtual {p3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOoO0()I

    move-result p0

    return p0
.end method

.method private OooO0O0(I[C)I
    .locals 0

    int-to-char p0, p1

    const/4 p1, 0x1

    aput-char p0, p2, p1

    const/4 p0, 0x2

    return p0
.end method

.method private OooO0OO(I[C)I
    .locals 2

    const/4 p0, 0x1

    const/16 v0, 0x75

    aput-char v0, p2, p0

    sget-object p0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO00o:[C

    shr-int/lit8 v0, p1, 0x4

    aget-char v0, p0, v0

    const/4 v1, 0x4

    aput-char v0, p2, v1

    and-int/lit8 p1, p1, 0xf

    aget-char p0, p0, p1

    const/4 p1, 0x5

    aput-char p0, p2, p1

    const/4 p0, 0x6

    return p0
.end method

.method private static OooO0Oo(II)I
    .locals 3

    const v0, 0xdc00

    if-lt p1, v0, :cond_0

    const v1, 0xdfff

    if-gt p1, v1, :cond_0

    const/high16 v1, 0x10000

    const v2, 0xd800

    sub-int/2addr p0, v2

    shl-int/lit8 p0, p0, 0xa

    add-int/2addr p0, v1

    sub-int/2addr p1, v0

    add-int/2addr p0, p1

    return p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broken surrogate pair: first char 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", second 0x"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; illegal combination"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private OooO0o()[C
    .locals 2

    const/4 p0, 0x6

    new-array p0, p0, [C

    const/4 v0, 0x0

    const/16 v1, 0x5c

    aput-char v1, p0, v0

    const/4 v0, 0x2

    const/16 v1, 0x30

    aput-char v1, p0, v0

    const/4 v0, 0x3

    aput-char v1, p0, v0

    return-object p0
.end method

.method private static OooO0o0(I)V
    .locals 1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/o000oOoO;->OooO0oo(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static OooO0oo()LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;
    .locals 1

    sget-object v0, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO:LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;

    return-object v0
.end method


# virtual methods
.method public OooO(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0o()[I

    move-result-object v0

    array-length v1, v0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_4

    :cond_0
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, v1, :cond_3

    aget v7, v0, v6

    if-eqz v7, :cond_3

    if-nez v4, :cond_1

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o()[C

    move-result-object v4

    :cond_1
    add-int/lit8 v6, v5, 0x1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    aget v7, v0, v5

    if-gez v7, :cond_2

    invoke-direct {p0, v5, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0OO(I[C)I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-direct {p0, v7, v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0(I[C)I

    move-result v5

    :goto_1
    invoke-virtual {p2, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move v5, v6

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_0

    :cond_4
    return-void
.end method

.method public OooO0oO(Ljava/lang/String;)[B
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0xc8

    new-array v1, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, p0, :cond_10

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :goto_1
    const/16 v7, 0x7f

    if-gt v4, v7, :cond_3

    if-lt v5, v0, :cond_1

    if-nez v3, :cond_0

    invoke-static {v1, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0o([BI)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v0

    array-length v1, v0

    move v5, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :cond_1
    add-int/lit8 v7, v5, 0x1

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    if-lt v6, p0, :cond_2

    move v5, v7

    goto/16 :goto_5

    :cond_2
    add-int/lit8 v4, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v6, v4

    move v4, v5

    move v5, v7

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    invoke-static {v1, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0o([BI)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;

    move-result-object v3

    :cond_4
    if-lt v5, v0, :cond_5

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    array-length v0, v1

    move v5, v2

    :cond_5
    const/16 v7, 0x800

    if-ge v4, v7, :cond_6

    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    :goto_2
    move v5, v4

    move v4, v6

    goto/16 :goto_4

    :cond_6
    const v7, 0xd800

    if-lt v4, v7, :cond_d

    const v7, 0xdfff

    if-le v4, v7, :cond_7

    goto :goto_3

    :cond_7
    const v7, 0xdbff

    if-le v4, v7, :cond_8

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_8
    if-lt v6, p0, :cond_9

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_9
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v4, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0Oo(II)I

    move-result v4

    const v6, 0x10ffff

    if-le v4, v6, :cond_a

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_a
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    if-lt v6, v0, :cond_b

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    array-length v0, v1

    move v6, v2

    :cond_b
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    if-lt v5, v0, :cond_c

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v0

    array-length v1, v0

    move v5, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :cond_c
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    move v5, v4

    move v4, v7

    move v7, v6

    goto :goto_4

    :cond_d
    :goto_3
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    if-lt v7, v0, :cond_e

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v0

    array-length v1, v0

    move v7, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :cond_e
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    move v7, v5

    goto/16 :goto_2

    :goto_4
    if-lt v7, v0, :cond_f

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v0

    array-length v1, v0

    move v7, v2

    move v9, v1

    move-object v1, v0

    move v0, v9

    :cond_f
    add-int/lit8 v6, v7, 0x1

    and-int/lit8 v5, v5, 0x3f

    or-int/lit16 v5, v5, 0x80

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    move v5, v6

    goto/16 :goto_0

    :cond_10
    :goto_5
    if-nez v3, :cond_11

    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_11
    invoke-virtual {v3, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOOoo(I)[B

    move-result-object p0

    return-object p0
.end method

.method public OooOO0(Ljava/lang/CharSequence;)[C
    .locals 12

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooOO0O(Ljava/lang/String;)[C

    move-result-object p0

    return-object p0

    :cond_0
    const/16 v0, 0x78

    new-array v0, v0, [C

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0o()[I

    move-result-object v1

    array-length v2, v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_a

    :goto_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_6

    aget v10, v1, v9

    if-eqz v10, :cond_6

    if-nez v6, :cond_1

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o()[C

    move-result-object v6

    :cond_1
    add-int/lit8 v9, v7, 0x1

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    aget v10, v1, v7

    if-gez v10, :cond_2

    invoke-direct {p0, v7, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0OO(I[C)I

    move-result v7

    goto :goto_2

    :cond_2
    invoke-direct {p0, v10, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    array-length v11, v0

    if-le v10, v11, :cond_5

    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_3

    invoke-static {v6, v5, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    if-nez v4, :cond_4

    invoke-static {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOo00([C)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;

    move-result-object v4

    :cond_4
    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOOoo()[C

    move-result-object v0

    sub-int/2addr v7, v10

    invoke-static {v6, v10, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    :cond_5
    invoke-static {v6, v5, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    :cond_6
    array-length v10, v0

    if-lt v8, v10, :cond_8

    if-nez v4, :cond_7

    invoke-static {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOo00([C)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;

    move-result-object v4

    :cond_7
    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOOoo()[C

    move-result-object v0

    move v8, v5

    :cond_8
    add-int/lit8 v10, v8, 0x1

    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_9

    move v8, v10

    goto :goto_4

    :cond_9
    move v8, v10

    goto :goto_1

    :cond_a
    :goto_4
    if-nez v4, :cond_b

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {v4, v8}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->Oooo0O0(I)V

    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooO0oO()[C

    move-result-object p0

    return-object p0
.end method

.method public OooOO0O(Ljava/lang/String;)[C
    .locals 12

    const/16 v0, 0x78

    new-array v0, v0, [C

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0o()[I

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, v4

    move v7, v5

    move v8, v7

    :goto_0
    if-ge v7, v3, :cond_9

    :goto_1
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ge v9, v2, :cond_5

    aget v10, v1, v9

    if-eqz v10, :cond_5

    if-nez v6, :cond_0

    invoke-direct {p0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o()[C

    move-result-object v6

    :cond_0
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aget v10, v1, v7

    if-gez v10, :cond_1

    invoke-direct {p0, v7, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0OO(I[C)I

    move-result v7

    goto :goto_2

    :cond_1
    invoke-direct {p0, v10, v6}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0O0(I[C)I

    move-result v7

    :goto_2
    add-int v10, v8, v7

    array-length v11, v0

    if-le v10, v11, :cond_4

    array-length v10, v0

    sub-int/2addr v10, v8

    if-lez v10, :cond_2

    invoke-static {v6, v5, v0, v8, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    if-nez v4, :cond_3

    invoke-static {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOo00([C)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;

    move-result-object v4

    :cond_3
    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOOoo()[C

    move-result-object v0

    sub-int/2addr v7, v10

    invoke-static {v6, v10, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v7

    goto :goto_3

    :cond_4
    invoke-static {v6, v5, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v8, v10

    :goto_3
    move v7, v9

    goto :goto_0

    :cond_5
    array-length v10, v0

    if-lt v8, v10, :cond_7

    if-nez v4, :cond_6

    invoke-static {v0}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOo00([C)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;

    move-result-object v4

    :cond_6
    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooOOoo()[C

    move-result-object v0

    move v8, v5

    :cond_7
    add-int/lit8 v10, v8, 0x1

    aput-char v9, v0, v8

    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_8

    move v8, v10

    goto :goto_4

    :cond_8
    move v8, v10

    goto :goto_1

    :cond_9
    :goto_4
    if-nez v4, :cond_a

    invoke-static {v0, v5, v8}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object p0

    return-object p0

    :cond_a
    invoke-virtual {v4, v8}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->Oooo0O0(I)V

    invoke-virtual {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o0000O;->OooO0oO()[C

    move-result-object p0

    return-object p0
.end method

.method public OooOO0o(Ljava/lang/String;)[B
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc8

    new-array v1, v1, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_12

    invoke-static {}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooO00o;->OooO0o()[I

    move-result-object v6

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x7f

    if-gt v7, v8, :cond_4

    aget v9, v6, v7

    if-eqz v9, :cond_0

    goto :goto_2

    :cond_0
    array-length v8, v1

    if-lt v5, v8, :cond_2

    if-nez v3, :cond_1

    invoke-static {v1, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0o([BI)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;

    move-result-object v3

    :cond_1
    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v5, v2

    :cond_2
    add-int/lit8 v8, v5, 0x1

    int-to-byte v7, v7

    aput-byte v7, v1, v5

    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_3

    move v5, v8

    goto/16 :goto_6

    :cond_3
    move v5, v8

    goto :goto_1

    :cond_4
    :goto_2
    if-nez v3, :cond_5

    invoke-static {v1, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0o([BI)LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;

    move-result-object v3

    :cond_5
    array-length v7, v1

    if-lt v5, v7, :cond_6

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v5, v2

    :cond_6
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-gt v4, v8, :cond_7

    aget v1, v6, v4

    invoke-direct {p0, v4, v1, v3, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO00o(IILOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;I)I

    move-result v5

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo()[B

    move-result-object v1

    move v4, v7

    goto :goto_0

    :cond_7
    const/16 v6, 0x7ff

    if-gt v4, v6, :cond_8

    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    or-int/lit16 v8, v8, 0xc0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    :goto_3
    move v5, v4

    move v4, v7

    goto/16 :goto_5

    :cond_8
    const v6, 0xd800

    if-lt v4, v6, :cond_f

    const v6, 0xdfff

    if-le v4, v6, :cond_9

    goto :goto_4

    :cond_9
    const v6, 0xdbff

    if-le v4, v6, :cond_a

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_a
    if-lt v7, v0, :cond_b

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_b
    add-int/lit8 v6, v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v4, v7}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0Oo(II)I

    move-result v4

    const v7, 0x10ffff

    if-le v4, v7, :cond_c

    invoke-static {v4}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000OO/OooOO0O;->OooO0o0(I)V

    :cond_c
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x12

    or-int/lit16 v8, v8, 0xf0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    array-length v5, v1

    if-lt v7, v5, :cond_d

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v7, v2

    :cond_d
    add-int/lit8 v5, v7, 0x1

    shr-int/lit8 v8, v4, 0xc

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v7

    array-length v7, v1

    if-lt v5, v7, :cond_e

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v5, v2

    :cond_e
    add-int/lit8 v7, v5, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v5, v4

    move v4, v6

    move v6, v7

    goto :goto_5

    :cond_f
    :goto_4
    add-int/lit8 v6, v5, 0x1

    shr-int/lit8 v8, v4, 0xc

    or-int/lit16 v8, v8, 0xe0

    int-to-byte v8, v8

    aput-byte v8, v1, v5

    array-length v5, v1

    if-lt v6, v5, :cond_10

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v6, v2

    :cond_10
    add-int/lit8 v5, v6, 0x1

    shr-int/lit8 v8, v4, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/lit16 v8, v8, 0x80

    int-to-byte v8, v8

    aput-byte v8, v1, v6

    and-int/lit8 v4, v4, 0x3f

    or-int/lit16 v4, v4, 0x80

    move v6, v5

    goto/16 :goto_3

    :goto_5
    array-length v7, v1

    if-lt v6, v7, :cond_11

    invoke-virtual {v3}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOo0O()[B

    move-result-object v1

    move v6, v2

    :cond_11
    add-int/lit8 v7, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, v1, v6

    move v5, v7

    goto/16 :goto_0

    :cond_12
    :goto_6
    if-nez v3, :cond_13

    invoke-static {v1, v2, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_13
    invoke-virtual {v3, v5}, LOooO0OO/OooO0o0/OooO00o/OooO0O0/o00000oO/o00000;->OooOOoo(I)[B

    move-result-object p0

    return-object p0
.end method
