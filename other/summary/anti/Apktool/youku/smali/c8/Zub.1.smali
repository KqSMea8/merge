.class public Lc8/Zub;
.super Ljava/lang/Object;
.source "PrefetchManager.java"

# interfaces
.implements Lc8/Vub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/bvb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafetyPrefetchResultListener"
.end annotation


# instance fields
.field private handler:Landroid/os/Handler;

.field private listener:Lc8/Vub;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput-object p1, p0, Lc8/Zub;->handler:Landroid/os/Handler;

    .line 602
    return-void
.end method

.method static synthetic access$600(Lc8/Zub;)Lc8/Vub;
    .locals 1
    .param p0, "x0"    # Lc8/Zub;

    .prologue
    .line 596
    iget-object v0, p0, Lc8/Zub;->listener:Lc8/Vub;

    return-object v0
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "errorMsg"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 623
    const-string/jumbo v0, "WXPrefetchModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailed fired. listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Zub;->listener:Lc8/Vub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lc8/Zub;->listener:Lc8/Vub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Zub;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 625
    iget-object v0, p0, Lc8/Zub;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/Yub;

    invoke-direct {v1, p0, p1, p2}, Lc8/Yub;-><init>(Lc8/Zub;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 632
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 610
    const-string/jumbo v0, "WXPrefetchModule"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSuccess fired. listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/Zub;->listener:Lc8/Vub;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lc8/Zub;->listener:Lc8/Vub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/Zub;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lc8/Zub;->handler:Landroid/os/Handler;

    new-instance v1, Lc8/Xub;

    invoke-direct {v1, p0, p1}, Lc8/Xub;-><init>(Lc8/Zub;Ljava/lang/String;)V

    invoke-static {v1}, Lc8/VXf;->secure(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 619
    :cond_0
    return-void
.end method

.method setListener(Lc8/Vub;)V
    .locals 0
    .param p1, "listener"    # Lc8/Vub;

    .prologue
    .line 605
    iput-object p1, p0, Lc8/Zub;->listener:Lc8/Vub;

    .line 606
    return-void
.end method
