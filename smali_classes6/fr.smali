.class public final Lfr;
.super Ljava/lang/Object;


# static fields
.field public static final a:Z

.field public static final b:Z

.field public static final c:J

.field public static final d:Z

.field private static final e:Ljava/util/logging/Logger;

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:Ljava/lang/Class;

.field private static final h:Z

.field private static final i:Z

.field private static final j:Lfq;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    const-class v1, [Ljava/lang/Object;

    const-class v2, [D

    const-class v3, [F

    const-class v4, [J

    const-class v5, [I

    const-class v6, [Z

    const-class v7, Ljava/lang/Object;

    const-class v0, Lfr;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lfr;->e:Ljava/util/logging/Logger;

    invoke-static {}, Lfr;->OooO0o0()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lfr;->f:Lsun/misc/Unsafe;

    sget-object v8, Lbx;->a:Ljava/lang/Class;

    sput-object v8, Lfr;->g:Ljava/lang/Class;

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v8}, Lfr;->OooOo00(Ljava/lang/Class;)Z

    move-result v9

    sput-boolean v9, Lfr;->h:Z

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10}, Lfr;->OooOo00(Ljava/lang/Class;)Z

    move-result v11

    sput-boolean v11, Lfr;->i:Z

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v13

    if-nez v13, :cond_0

    new-instance v12, Lfp;

    invoke-direct {v12, v0}, Lfp;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_0
    if-eqz v9, :cond_1

    new-instance v12, Lfo;

    invoke-direct {v12, v0}, Lfo;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    new-instance v12, Lfn;

    invoke-direct {v12, v0}, Lfn;-><init>(Lsun/misc/Unsafe;)V

    :cond_2
    :goto_0
    sput-object v12, Lfr;->j:Lfq;

    const-string v9, "putLong"

    const-string v11, "putInt"

    const-string v12, "putByte"

    const-string v13, "getInt"

    const-string v14, "getByte"

    const-string v15, "objectFieldOffset"

    move-object/from16 v16, v1

    const-string v1, "com.google.protobuf.UnsafeUtil"

    move-object/from16 v17, v2

    const-string v2, "platform method missing - proto runtime falling back to safer methods: "

    move-object/from16 v18, v3

    const-string v3, "getLong"

    move-object/from16 v19, v4

    const/4 v4, 0x1

    const/16 v20, 0x0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v21, v5

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const-class v22, Ljava/lang/reflect/Field;

    aput-object v22, v5, v20

    invoke-virtual {v0, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x2

    new-array v4, v5, [Ljava/lang/Class;

    aput-object v7, v4, v20

    const/4 v5, 0x1

    aput-object v8, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lfr;->OooOOOo()Ljava/lang/reflect/Field;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    invoke-virtual {v0, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v23, v6

    const/4 v6, 0x1

    :try_start_2
    aput-object v4, v5, v6

    invoke-virtual {v0, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v4, v6, [Ljava/lang/Class;

    aput-object v8, v4, v20

    invoke-virtual {v0, v13, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    const/4 v4, 0x1

    aput-object v10, v5, v4

    invoke-virtual {v0, v11, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    const/4 v4, 0x1

    aput-object v8, v5, v4

    invoke-virtual {v0, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v8, v5, v20

    const/4 v4, 0x1

    aput-object v8, v5, v4

    const/4 v4, 0x2

    aput-object v8, v5, v4

    const-string v4, "copyMemory"

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    aput-object v7, v4, v20

    const/4 v5, 0x1

    aput-object v8, v4, v5

    const/4 v5, 0x2

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v8, v4, v5

    const/4 v5, 0x4

    aput-object v8, v4, v5

    const-string v5, "copyMemory"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object/from16 v23, v6

    :goto_1
    const/4 v0, 0x1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v21, v5

    :goto_2
    move-object/from16 v23, v6

    :goto_3
    sget-object v4, Lfr;->e:Ljava/util/logging/Logger;

    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x47

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v6, "supportsUnsafeByteBufferOperations"

    invoke-virtual {v4, v5, v1, v6, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v21, v5

    :cond_5
    move-object/from16 v23, v6

    :goto_4
    move/from16 v0, v20

    :goto_5
    sput-boolean v0, Lfr;->a:Z

    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    if-eqz v0, :cond_7

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_7

    const/4 v4, 0x1

    :try_start_4
    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/reflect/Field;

    aput-object v6, v5, v20

    invoke-virtual {v0, v15, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v20

    const-string v6, "arrayBaseOffset"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Class;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    :try_start_5
    const-class v4, Ljava/lang/Class;

    aput-object v4, v5, v20

    const-string v4, "arrayIndexScale"

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    aput-object v7, v5, v20

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    const/4 v6, 0x1

    :try_start_6
    aput-object v4, v5, v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    invoke-virtual {v0, v13, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Class;

    aput-object v7, v6, v20
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    const/4 v5, 0x1

    :try_start_8
    aput-object v4, v6, v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :try_start_9
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x2

    aput-object v5, v6, v8

    invoke-virtual {v0, v11, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v8, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    const/4 v6, 0x1

    :try_start_a
    aput-object v4, v5, v6
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    const/4 v3, 0x1

    :try_start_c
    aput-object v4, v5, v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const/4 v3, 0x2

    :try_start_d
    aput-object v4, v5, v3

    invoke-virtual {v0, v9, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    const/4 v3, 0x1

    :try_start_e
    aput-object v4, v5, v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    const-string v3, "getObject"

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_7

    const/4 v3, 0x1

    :try_start_10
    aput-object v4, v5, v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const/4 v3, 0x2

    :try_start_11
    aput-object v7, v5, v3

    const-string v6, "putObject"

    invoke-virtual {v0, v6, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v5

    if-nez v5, :cond_6

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    const/4 v3, 0x1

    :try_start_12
    aput-object v4, v5, v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    :try_start_13
    invoke-virtual {v0, v14, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    const/4 v3, 0x1

    :try_start_14
    aput-object v4, v5, v3
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :try_start_15
    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    invoke-virtual {v0, v12, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v7, v3, v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    const/4 v5, 0x1

    :try_start_16
    aput-object v4, v3, v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_4

    :try_start_17
    const-string v5, "getBoolean"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_7

    const/4 v3, 0x1

    :try_start_18
    aput-object v4, v5, v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :try_start_19
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const-string v3, "putBoolean"

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v7, v3, v20
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    const/4 v5, 0x1

    :try_start_1a
    aput-object v4, v3, v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    :try_start_1b
    const-string v5, "getFloat"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/Class;

    aput-object v7, v5, v20
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    const/4 v3, 0x1

    :try_start_1c
    aput-object v4, v5, v3
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :try_start_1d
    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v3, v5, v6

    const-string v3, "putFloat"

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v3, v6, [Ljava/lang/Class;

    aput-object v7, v3, v20
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    const/4 v5, 0x1

    :try_start_1e
    aput-object v4, v3, v5
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_4

    :try_start_1f
    const-string v5, "getDouble"

    invoke-virtual {v0, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    aput-object v7, v3, v20
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_7

    const/4 v5, 0x1

    :try_start_20
    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "putDouble"

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    goto :goto_6

    :cond_6
    const/4 v5, 0x1

    :goto_6
    move v0, v5

    goto :goto_9

    :catchall_3
    move-exception v0

    move v5, v3

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move v5, v6

    goto :goto_7

    :catchall_6
    move-exception v0

    move v5, v4

    goto :goto_7

    :catchall_7
    move-exception v0

    const/4 v5, 0x1

    :goto_7
    sget-object v3, Lfr;->e:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x47

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "supportsUnsafeArrayOperations"

    invoke-virtual {v3, v4, v1, v2, v0}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    const/4 v5, 0x1

    :goto_8
    move/from16 v0, v20

    :goto_9
    sput-boolean v0, Lfr;->b:Z

    const-class v0, [B

    invoke-static {v0}, Lfr;->OooOOO(Ljava/lang/Class;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lfr;->c:J

    invoke-static/range {v23 .. v23}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v23 .. v23}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static/range {v21 .. v21}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v21 .. v21}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static/range {v19 .. v19}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v19 .. v19}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static/range {v18 .. v18}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v18 .. v18}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static/range {v17 .. v17}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v17 .. v17}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static/range {v16 .. v16}, Lfr;->OooOOO(Ljava/lang/Class;)I

    invoke-static/range {v16 .. v16}, Lfr;->OooOo0o(Ljava/lang/Class;)V

    invoke-static {}, Lfr;->OooOOOo()Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_a

    :cond_8
    sget-object v1, Lfr;->j:Lfq;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lfq;->OooOO0(Ljava/lang/reflect/Field;)V

    :cond_9
    :goto_a
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_a

    move v4, v5

    goto :goto_b

    :cond_a
    move/from16 v4, v20

    :goto_b
    sput-boolean v4, Lfr;->d:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static OooO(Ljava/lang/Object;JI)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->OooO0o(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static OooO00o([BJ)B
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lfq;->OooO00o(Ljava/lang/Object;J)B

    move-result p0

    return p0
.end method

.method public static OooO0O0(Ljava/lang/Object;J)I
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOOOO(Ljava/lang/Object;J)I

    move-result p0

    return p0
.end method

.method public static OooO0OO(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    sget-object v0, Lfr;->f:Lsun/misc/Unsafe;

    invoke-virtual {v0, p0}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static OooO0Oo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static OooO0o(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    not-int v0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lfr;->OooO(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static OooO0o0()Lsun/misc/Unsafe;
    .locals 1

    :try_start_0
    new-instance v0, Lfm;

    invoke-direct {v0}, Lfm;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static OooO0oO(Ljava/lang/Object;JD)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lfq;->OooO0Oo(Ljava/lang/Object;JD)V

    return-void
.end method

.method public static OooO0oo(Ljava/lang/Object;JF)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->OooO0o0(Ljava/lang/Object;JF)V

    return-void
.end method

.method public static OooOO0(Ljava/lang/Object;JJ)V
    .locals 6

    sget-object v0, Lfr;->j:Lfq;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lfq;->OooO0oO(Ljava/lang/Object;JJ)V

    return-void
.end method

.method public static OooOO0O(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->OooO0oo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method public static OooOO0o(Ljava/lang/Object;JZ)V
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2, p3}, Lfq;->OooO(Ljava/lang/Object;JZ)V

    return-void
.end method

.method private static OooOOO(Ljava/lang/Class;)I
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0}, Lfq;->OooO0O0(Ljava/lang/Class;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static OooOOO0([BJB)V
    .locals 3

    sget-object v0, Lfr;->j:Lfq;

    sget-wide v1, Lfr;->c:J

    add-long/2addr v1, p1

    invoke-virtual {v0, p0, v1, v2, p3}, Lfq;->OooO0OO(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static OooOOOO(Ljava/lang/Object;J)J
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOOOo(Ljava/lang/Object;J)J

    move-result-wide p0

    return-wide p0
.end method

.method private static OooOOOo()Ljava/lang/reflect/Field;
    .locals 3

    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Ljava/nio/Buffer;

    const-string v1, "effectiveDirectAddress"

    invoke-static {v0, v1}, Lfr;->OooO0Oo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    const-class v0, Ljava/nio/Buffer;

    const-string v1, "address"

    invoke-static {v0, v1}, Lfr;->OooO0Oo(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static OooOOo(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfr;->OooO0o(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static OooOOo0(Ljava/lang/Object;JB)V
    .locals 4

    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x3

    const-wide/16 v1, -0x4

    and-long/2addr p1, v1

    invoke-static {p0, p1, p2}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result v1

    const/16 v2, 0xff

    shl-int v3, v2, v0

    not-int v3, v3

    and-int/2addr v1, v3

    and-int/2addr p3, v2

    shl-int/2addr p3, v0

    or-int/2addr p3, v1

    invoke-static {p0, p1, p2, p3}, Lfr;->OooO(Ljava/lang/Object;JI)V

    return-void
.end method

.method public static OooOOoo(Ljava/lang/Object;JZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lfr;->OooOOo0(Ljava/lang/Object;JB)V

    return-void
.end method

.method public static OooOo(Ljava/lang/Object;J)D
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOOO(Ljava/lang/Object;J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static OooOo0(Ljava/lang/Object;J)Z
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOO0o(Ljava/lang/Object;J)Z

    move-result p0

    return p0
.end method

.method private static OooOo00(Ljava/lang/Class;)Z
    .locals 10

    const-class v0, [B

    invoke-static {}, Lbx;->OooO0O0()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    sget-object v1, Lfr;->g:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    aput-object p0, v4, v2

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v7, "peekLong"

    invoke-virtual {v1, v7, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v8, "pokeLong"

    invoke-virtual {v1, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v4, [Ljava/lang/Class;

    aput-object p0, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v6

    aput-object v5, v7, v3

    const-string v9, "pokeInt"

    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v7, v3, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v5, v7, v6

    const-string v5, "peekInt"

    invoke-virtual {v1, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v3, [Ljava/lang/Class;

    aput-object p0, v5, v2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const-string v7, "pokeByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v6, [Ljava/lang/Class;

    aput-object p0, v5, v2

    const-string v7, "peekByte"

    invoke-virtual {v1, v7, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    const/4 v5, 0x4

    new-array v7, v5, [Ljava/lang/Class;

    aput-object p0, v7, v2

    aput-object v0, v7, v6

    aput-object v8, v7, v3

    aput-object v8, v7, v4

    const-string v9, "pokeByteArray"

    invoke-virtual {v1, v9, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Class;

    aput-object p0, v5, v2

    aput-object v0, v5, v6

    aput-object v8, v5, v3

    aput-object v8, v5, v4

    const-string p0, "peekByteArray"

    invoke-virtual {v1, p0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v6

    :catchall_0
    :cond_0
    return v2
.end method

.method public static OooOo0O(Ljava/lang/Object;J)F
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOOO0(Ljava/lang/Object;J)F

    move-result p0

    return p0
.end method

.method private static OooOo0o(Ljava/lang/Class;)V
    .locals 1

    sget-boolean v0, Lfr;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0}, Lfq;->OooOO0O(Ljava/lang/Class;)I

    :cond_0
    return-void
.end method

.method public static OooOoO(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    not-long p1, p1

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static OooOoO0(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lfr;->j:Lfq;

    invoke-virtual {v0, p0, p1, p2}, Lfq;->OooOOo0(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static OooOoOO(Ljava/lang/Object;J)B
    .locals 2

    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lfr;->OooO0O0(Ljava/lang/Object;J)I

    move-result p0

    const-wide/16 v0, 0x3

    and-long/2addr p1, v0

    const/4 v0, 0x3

    shl-long/2addr p1, v0

    long-to-int p1, p1

    ushr-int/2addr p0, p1

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    return p0
.end method

.method public static OooOoo(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoOO(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static OooOoo0(Ljava/lang/Object;J)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lfr;->OooOoO(Ljava/lang/Object;J)B

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
