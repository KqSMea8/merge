.class public Lc8/Hk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ServiceBinderImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 0

    .prologue
    .line 585
    iput-object p1, p0, Lc8/Hk;->this$0:Lc8/Lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    return-void
.end method


# virtual methods
.method public addSubscription(Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;Lc8/Ik;)V
    .locals 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "options"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Lc8/Ik;

    .prologue
    .line 656
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v6, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v0, Lc8/Bk;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Bk;-><init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;)V

    invoke-virtual {v6, v0}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 672
    return-void
.end method

.method public connect(Ljava/lang/String;ILandroid/os/Bundle;Lc8/Ik;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "rootHints"    # Landroid/os/Bundle;
    .param p4, "callbacks"    # Lc8/Ik;

    .prologue
    .line 591
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    invoke-virtual {v0, p1, p2}, Lc8/Lk;->isValidPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 592
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Package/uid mismatch: uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 596
    :cond_0
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v6, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v0, Lc8/zk;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lc8/zk;-><init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/Bundle;I)V

    invoke-virtual {v6, v0}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 637
    return-void
.end method

.method public disconnect(Lc8/Ik;)V
    .locals 2
    .param p1, "callbacks"    # Lc8/Ik;

    .prologue
    .line 640
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/Ak;

    invoke-direct {v1, p0, p1}, Lc8/Ak;-><init>(Lc8/Hk;Lc8/Ik;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 652
    return-void
.end method

.method public getMediaItem(Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;Lc8/Ik;)V
    .locals 2
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .param p3, "callbacks"    # Lc8/Ik;

    .prologue
    .line 698
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 715
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/Dk;

    invoke-direct {v1, p0, p3, p1, p2}, Lc8/Dk;-><init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public registerCallbacks(Lc8/Ik;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "callbacks"    # Lc8/Ik;
    .param p2, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 719
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/Ek;

    invoke-direct {v1, p0, p1, p2}, Lc8/Ek;-><init>(Lc8/Hk;Lc8/Ik;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 732
    return-void
.end method

.method public removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Lc8/Ik;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "callbacks"    # Lc8/Ik;

    .prologue
    .line 676
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/Ck;

    invoke-direct {v1, p0, p3, p1, p2}, Lc8/Ck;-><init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 694
    return-void
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;Lc8/Ik;)V
    .locals 7
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "receiver"    # Landroid/support/v4/os/ResultReceiver;
    .param p4, "callbacks"    # Lc8/Ik;

    .prologue
    .line 747
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 751
    :cond_1
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v6, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v0, Lc8/Gk;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lc8/Gk;-><init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/os/ResultReceiver;)V

    invoke-virtual {v6, v0}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public unregisterCallbacks(Lc8/Ik;)V
    .locals 2
    .param p1, "callbacks"    # Lc8/Ik;

    .prologue
    .line 736
    iget-object v0, p0, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/Fk;

    invoke-direct {v1, p0, p1}, Lc8/Fk;-><init>(Lc8/Hk;Lc8/Ik;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->postOrRun(Ljava/lang/Runnable;)V

    .line 743
    return-void
.end method
