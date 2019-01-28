.class public Lc8/Ek;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hk;->registerCallbacks(Lc8/Ik;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hk;

.field final synthetic val$callbacks:Lc8/Ik;

.field final synthetic val$rootHints:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lc8/Hk;Lc8/Ik;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Hk;

    .prologue
    .line 719
    iput-object p1, p0, Lc8/Ek;->this$1:Lc8/Hk;

    iput-object p2, p0, Lc8/Ek;->val$callbacks:Lc8/Ik;

    iput-object p3, p0, Lc8/Ek;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 722
    iget-object v2, p0, Lc8/Ek;->val$callbacks:Lc8/Ik;

    invoke-interface {v2}, Lc8/Ik;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 724
    .local v0, "b":Landroid/os/IBinder;
    iget-object v2, p0, Lc8/Ek;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    new-instance v1, Lc8/mk;

    iget-object v2, p0, Lc8/Ek;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    invoke-direct {v1, v2}, Lc8/mk;-><init>(Lc8/Lk;)V

    .line 727
    .local v1, "connection":Lc8/mk;
    iget-object v2, p0, Lc8/Ek;->val$callbacks:Lc8/Ik;

    iput-object v2, v1, Lc8/mk;->callbacks:Lc8/Ik;

    .line 728
    iget-object v2, p0, Lc8/Ek;->val$rootHints:Landroid/os/Bundle;

    iput-object v2, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    .line 729
    iget-object v2, p0, Lc8/Ek;->this$1:Lc8/Hk;

    iget-object v2, v2, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v2, v2, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    return-void
.end method
