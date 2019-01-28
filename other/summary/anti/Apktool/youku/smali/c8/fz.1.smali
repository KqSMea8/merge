.class public Lc8/fz;
.super Ljava/lang/Object;
.source "FrameworkLifecycleHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/gz;->started()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/gz;

.field final synthetic val$autoStartBundle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/gz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/gz;

    .prologue
    .line 329
    iput-object p1, p0, Lc8/fz;->this$0:Lc8/gz;

    iput-object p2, p0, Lc8/fz;->val$autoStartBundle:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 332
    iget-object v5, p0, Lc8/fz;->val$autoStartBundle:Ljava/lang/String;

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "bundles":[Ljava/lang/String;
    array-length v5, v1

    if-lez v5, :cond_1

    .line 334
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 335
    aget-object v0, v1, v4

    .line 336
    .local v0, "bundleName":Ljava/lang/String;
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v5

    invoke-virtual {v5, v0}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v3

    check-cast v3, Lc8/hy;

    .line 337
    .local v3, "impl":Lc8/hy;
    if-nez v3, :cond_0

    .line 338
    new-instance v5, Lc8/ez;

    invoke-direct {v5, p0, v0}, Lc8/ez;-><init>(Lc8/fz;Ljava/lang/String;)V

    invoke-static {v0, v5}, Lc8/my;->startDelayInstall(Ljava/lang/String;Lc8/ly;)V

    .line 334
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 353
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Lc8/hy;->start()V
    :try_end_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v2

    .line 355
    .local v2, "e":Lorg/osgi/framework/BundleException;
    invoke-virtual {v2}, Lorg/osgi/framework/BundleException;->printStackTrace()V

    goto :goto_1

    .line 360
    .end local v0    # "bundleName":Ljava/lang/String;
    .end local v2    # "e":Lorg/osgi/framework/BundleException;
    .end local v3    # "impl":Lc8/hy;
    .end local v4    # "x":I
    :cond_1
    return-void
.end method
