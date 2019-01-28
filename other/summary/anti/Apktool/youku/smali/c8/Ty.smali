.class public final Lc8/Ty;
.super Ljava/lang/Object;
.source "BundleUtil.java"

# interfaces
.implements Lc8/ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Vy;->checkBundleArrayStateAsync([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$bundleActivated:Ljava/lang/Runnable;

.field final synthetic val$bundleDisabled:Ljava/lang/Runnable;

.field final synthetic val$bundlesName:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lc8/Ty;->val$bundlesName:[Ljava/lang/String;

    iput-object p2, p0, Lc8/Ty;->val$bundleActivated:Ljava/lang/Runnable;

    iput-object p3, p0, Lc8/Ty;->val$bundleDisabled:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 7

    .prologue
    .line 266
    const/4 v1, 0x1

    .line 268
    .local v1, "success":Z
    iget-object v4, p0, Lc8/Ty;->val$bundlesName:[Ljava/lang/String;

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v0, v4, v3

    .line 269
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v6

    invoke-virtual {v6, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v2

    check-cast v2, Lc8/hy;

    .local v2, "tmp":Lc8/hy;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lc8/hy;->checkValidate()Z

    move-result v6

    if-nez v6, :cond_1

    .line 270
    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v2}, Lc8/hy;->startBundle()V

    goto :goto_1

    .line 275
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v2    # "tmp":Lc8/hy;
    :cond_2
    if-eqz v1, :cond_4

    .line 276
    iget-object v3, p0, Lc8/Ty;->val$bundleActivated:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 277
    iget-object v3, p0, Lc8/Ty;->val$bundleActivated:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 284
    :cond_3
    :goto_2
    return-void

    .line 280
    :cond_4
    iget-object v3, p0, Lc8/Ty;->val$bundleDisabled:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    .line 281
    iget-object v3, p0, Lc8/Ty;->val$bundleDisabled:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    goto :goto_2
.end method
