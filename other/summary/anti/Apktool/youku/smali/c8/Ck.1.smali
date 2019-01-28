.class public Lc8/Ck;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hk;->removeSubscription(Ljava/lang/String;Landroid/os/IBinder;Lc8/Ik;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hk;

.field final synthetic val$callbacks:Lc8/Ik;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lc8/Hk;Lc8/Ik;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Hk;

    .prologue
    .line 676
    iput-object p1, p0, Lc8/Ck;->this$1:Lc8/Hk;

    iput-object p2, p0, Lc8/Ck;->val$callbacks:Lc8/Ik;

    iput-object p3, p0, Lc8/Ck;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lc8/Ck;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 679
    iget-object v2, p0, Lc8/Ck;->val$callbacks:Lc8/Ik;

    invoke-interface {v2}, Lc8/Ik;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 681
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lc8/Ck;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc8/mk;

    .line 682
    .local v1, "connection":Lc8/mk;
    if-nez v1, :cond_1

    .line 683
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSubscription for callback that isn\'t registered id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Ck;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 687
    :cond_1
    iget-object v2, p0, Lc8/Ck;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v3, p0, Lc8/Ck;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lc8/Ck;->val$token:Landroid/os/IBinder;

    invoke-virtual {v2, v3, v1, v4}, Lc8/Lk;->removeSubscription(Ljava/lang/String;Lc8/mk;Landroid/os/IBinder;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 689
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeSubscription called for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lc8/Ck;->val$id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " which is not subscribed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0
.end method
