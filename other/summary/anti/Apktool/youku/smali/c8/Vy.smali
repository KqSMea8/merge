.class public Lc8/Vy;
.super Ljava/lang/Object;
.source "BundleUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Uy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkBundleArrayStateAsync([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 2
    .param p0, "bundlesName"    # [Ljava/lang/String;
    .param p1, "bundleActivated"    # Ljava/lang/Runnable;
    .param p2, "bundleDisabled"    # Ljava/lang/Runnable;

    .prologue
    .line 262
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    .line 263
    .local v0, "installer":Lc8/my;
    new-instance v1, Lc8/Ty;

    invoke-direct {v1, p0, p1, p2}, Lc8/Ty;-><init>([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p0, v1}, Lc8/my;->installTransitivelyAsync([Ljava/lang/String;Lc8/ly;)V

    .line 286
    const/4 v1, 0x1

    return v1
.end method

.method public static checkBundleStateAsync(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 3
    .param p0, "bundleName"    # Ljava/lang/String;
    .param p1, "bundleActivated"    # Ljava/lang/Runnable;
    .param p2, "bundleDisabled"    # Ljava/lang/Runnable;

    .prologue
    const/4 v2, 0x1

    .line 257
    new-array v0, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1, p2}, Lc8/Vy;->checkBundleArrayStateAsync([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 258
    return v2
.end method

.method public static checkBundleStateSync([Ljava/lang/String;)V
    .locals 1
    .param p0, "bundleName"    # [Ljava/lang/String;

    .prologue
    .line 247
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v0

    .line 248
    .local v0, "installer":Lc8/my;
    invoke-virtual {v0, p0}, Lc8/my;->installSync([Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public static checkBundleStateSyncOnChildThread(Ljava/lang/String;)Z
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 222
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    :goto_0
    return v3

    .line 225
    :cond_0
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    check-cast v1, Lc8/hy;

    .line 226
    .local v1, "impl":Lc8/hy;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/hy;->checkValidate()Z

    move-result v5

    if-nez v5, :cond_2

    .line 227
    :cond_1
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v2

    .line 228
    .local v2, "installer":Lc8/my;
    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v5}, Lc8/my;->installTransitivelySync([Ljava/lang/String;)V

    .end local v2    # "installer":Lc8/my;
    :cond_2
    move v3, v4

    .line 230
    goto :goto_0
.end method

.method public static checkBundleStateSyncOnUIThread(Ljava/lang/String;)Z
    .locals 6
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 235
    invoke-static {}, Lc8/Xx;->instance()Lc8/Xx;

    move-result-object v5

    invoke-virtual {v5, p0}, Lc8/Xx;->getBundleForComponet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 243
    :goto_0
    return v3

    .line 238
    :cond_0
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    check-cast v1, Lc8/hy;

    .line 239
    .local v1, "impl":Lc8/hy;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lc8/hy;->checkValidate()Z

    move-result v5

    if-nez v5, :cond_2

    .line 240
    :cond_1
    invoke-static {}, Lc8/ny;->obtainInstaller()Lc8/my;

    move-result-object v2

    .line 241
    .local v2, "installer":Lc8/my;
    new-array v5, v4, [Ljava/lang/String;

    aput-object v0, v5, v3

    invoke-virtual {v2, v5}, Lc8/my;->installTransitivelySync([Ljava/lang/String;)V

    .end local v2    # "installer":Lc8/my;
    :cond_2
    move v3, v4

    .line 243
    goto :goto_0
.end method
