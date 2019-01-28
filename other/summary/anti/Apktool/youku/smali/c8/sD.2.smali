.class public final Lc8/sD;
.super Ljava/lang/Object;
.source "WVUCWebView.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/DD;->initUCLIb([Ljava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback",
        "<[",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 384
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lc8/sD;->onReceiveValue([Ljava/lang/Object;)V

    return-void
.end method

.method public onReceiveValue([Ljava/lang/Object;)V
    .locals 8
    .param p1, "value"    # [Ljava/lang/Object;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x3

    .line 387
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 388
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 389
    const/4 v2, 0x1

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 390
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 391
    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 392
    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const/4 v2, 0x5

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 394
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, "logs":Ljava/lang/String;
    aget-object v2, p1, v6

    if-eqz v2, :cond_5

    .line 396
    const-string/jumbo v2, "v"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 397
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Throwable;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 398
    :cond_1
    const-string/jumbo v2, "d"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 399
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Throwable;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 400
    :cond_2
    const-string/jumbo v2, "i"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 401
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Throwable;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 402
    :cond_3
    const-string/jumbo v2, "w"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 403
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Throwable;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 404
    :cond_4
    const-string/jumbo v2, "e"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 405
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    aget-object v3, p1, v6

    check-cast v3, Ljava/lang/Throwable;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v0, v3, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0

    .line 408
    :cond_5
    const-string/jumbo v2, "v"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 409
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/ZH;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_6
    const-string/jumbo v2, "d"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 411
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :cond_7
    const-string/jumbo v2, "i"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 413
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 414
    :cond_8
    const-string/jumbo v2, "w"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 415
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 416
    :cond_9
    const-string/jumbo v2, "e"

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 417
    aget-object v2, p1, v5

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v0}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
