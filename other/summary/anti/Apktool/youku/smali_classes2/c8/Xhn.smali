.class public Lc8/Xhn;
.super Ljava/lang/Object;
.source "OsUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkMeizuDevice()Z
    .locals 4

    .prologue
    .line 21
    :try_start_0
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 22
    .local v1, "phoneBrand":Ljava/lang/String;
    const-string/jumbo v2, "meizu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    const/4 v2, 0x1

    .line 29
    :goto_0
    return v2

    .line 25
    :catch_0
    move-exception v0

    .line 26
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "YKPush"

    const-string/jumbo v3, "check devices error"

    invoke-static {v2, v3, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 29
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
