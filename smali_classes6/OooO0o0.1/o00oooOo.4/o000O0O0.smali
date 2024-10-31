.class public final LOooO0o0/o00oooOo/o000O0O0;
.super Ljava/lang/Object;


# annotations
.annotation runtime LOooO0o0/o0000Ooo;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0001\n\u0000\n\u0002\u0010\u0008\n\u0000\u001a\u0011\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0087\u0008\u00a8\u0006\u0004"
    }
    d2 = {
        "exitProcess",
        "",
        "status",
        "",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build LOooO0o0/o00ooOoO/o00000O;
    name = "ProcessKt"
.end annotation


# direct methods
.method private static final OooO00o(I)Ljava/lang/Void;
    .locals 1
    .annotation build LOooO0o0/o00ooOO/OooOO0;
    .end annotation

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "System.exit returned normally, while it was supposed to halt JVM."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
