.class public Lc8/iC;
.super Ljava/lang/Object;
.source "WVApiWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatBody(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lc8/fC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fC;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/hC;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/connect/api/IApiAdapter;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/hC;

    invoke-interface {v1, p0}, Lc8/hC;->formatBody(Lc8/fC;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static formatUrl(Lc8/fC;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lc8/fC;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc8/fC;",
            "Ljava/lang/Class",
            "<+",
            "Lc8/hC;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 19
    .local p1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/taobao/windvane/connect/api/IApiAdapter;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 21
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/hC;

    invoke-interface {v1, p0}, Lc8/hC;->formatUrl(Lc8/fC;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 28
    :goto_0
    return-object v1

    .line 22
    :catch_0
    move-exception v0

    .line 23
    .local v0, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 28
    .end local v0    # "e":Ljava/lang/InstantiationException;
    :cond_0
    :goto_1
    const-string/jumbo v1, ""

    goto :goto_0

    .line 24
    :catch_1
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method
