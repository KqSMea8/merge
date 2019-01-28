.class public Lc8/jy;
.super Ljava/lang/Object;
.source "BundleInstaller.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/ky;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/ky;


# direct methods
.method constructor <init>(Lc8/ky;)V
    .locals 0
    .param p1, "this$1"    # Lc8/ky;

    .prologue
    .line 527
    iput-object p1, p0, Lc8/jy;->this$1:Lc8/ky;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 530
    const-string/jumbo v0, "BundleInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notify finish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lc8/jy;->this$1:Lc8/ky;

    iget-object v2, v2, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v2}, Lc8/my;->access$300(Lc8/my;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lc8/jy;->this$1:Lc8/ky;

    iget-object v0, v0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v0}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 532
    iget-object v0, p0, Lc8/jy;->this$1:Lc8/ky;

    iget-object v0, v0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v0}, Lc8/my;->access$400(Lc8/my;)Lc8/ly;

    move-result-object v0

    invoke-interface {v0}, Lc8/ly;->onFinished()V

    .line 534
    :cond_0
    iget-object v0, p0, Lc8/jy;->this$1:Lc8/ky;

    iget-object v0, v0, Lc8/ky;->this$0:Lc8/my;

    invoke-static {v0}, Lc8/ny;->recycle(Lc8/my;)V

    .line 535
    return-void
.end method
