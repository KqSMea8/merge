.class public Lc8/xLj;
.super Ljava/lang/Object;
.source "Youku.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KLj;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/KLj;


# direct methods
.method constructor <init>(Lc8/KLj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/KLj;

    .prologue
    .line 364
    iput-object p1, p0, Lc8/xLj;->this$0:Lc8/KLj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lc8/xLj;->this$0:Lc8/KLj;

    invoke-static {v0}, Lc8/KLj;->access$300(Lc8/KLj;)V

    .line 370
    iget-object v0, p0, Lc8/xLj;->this$0:Lc8/KLj;

    invoke-static {v0}, Lc8/bWo;->init(Landroid/app/Application;)V

    .line 374
    :try_start_0
    iget-object v0, p0, Lc8/xLj;->this$0:Lc8/KLj;

    invoke-static {v0}, Lc8/KLj;->access$400(Lc8/KLj;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    :goto_0
    invoke-static {}, Lc8/Dvk;->getInstance()Lc8/Dvk;

    move-result-object v0

    iget-object v1, p0, Lc8/xLj;->this$0:Lc8/KLj;

    invoke-virtual {v0, v1}, Lc8/Dvk;->setup(Landroid/app/Application;)V

    .line 383
    const-string/jumbo v0, ""

    invoke-static {v0}, Lc8/WIj;->canUseNetworkSDK(Ljava/lang/String;)Z

    .line 384
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
