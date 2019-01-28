.class public Lc8/ez;
.super Ljava/lang/Object;
.source "FrameworkLifecycleHandler.java"

# interfaces
.implements Lc8/ly;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/fz;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/fz;

.field final synthetic val$bundleName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/fz;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lc8/fz;

    .prologue
    .line 338
    iput-object p1, p0, Lc8/ez;->this$1:Lc8/fz;

    iput-object p2, p0, Lc8/ez;->val$bundleName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished()V
    .locals 4

    .prologue
    .line 341
    invoke-static {}, Lc8/dy;->getInstance()Lc8/dy;

    move-result-object v2

    iget-object v3, p0, Lc8/ez;->val$bundleName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lc8/dy;->getBundle(Ljava/lang/String;)Lc8/Seq;

    move-result-object v1

    check-cast v1, Lc8/hy;

    .line 342
    .local v1, "impl":Lc8/hy;
    if-eqz v1, :cond_0

    .line 344
    :try_start_0
    invoke-virtual {v1}, Lc8/hy;->start()V
    :try_end_0
    .catch Lorg/osgi/framework/BundleException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v0

    .line 346
    .local v0, "e":Lorg/osgi/framework/BundleException;
    invoke-virtual {v0}, Lorg/osgi/framework/BundleException;->printStackTrace()V

    goto :goto_0
.end method
