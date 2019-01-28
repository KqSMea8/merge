.class public Lc8/oIb;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/vFb;->showErrorInReleaseMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lc8/vFb;->showErrorInReleaseMode:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lc8/vFb;->isDebuggable()Z

    return-void
.end method
