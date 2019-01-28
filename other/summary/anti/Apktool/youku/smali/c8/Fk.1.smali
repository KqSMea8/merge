.class public Lc8/Fk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Hk;->unregisterCallbacks(Lc8/Ik;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/Hk;

.field final synthetic val$callbacks:Lc8/Ik;


# direct methods
.method constructor <init>(Lc8/Hk;Lc8/Ik;)V
    .locals 0
    .param p1, "this$1"    # Lc8/Hk;

    .prologue
    .line 736
    iput-object p1, p0, Lc8/Fk;->this$1:Lc8/Hk;

    iput-object p2, p0, Lc8/Fk;->val$callbacks:Lc8/Ik;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 739
    iget-object v1, p0, Lc8/Fk;->val$callbacks:Lc8/Ik;

    invoke-interface {v1}, Lc8/Ik;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 740
    .local v0, "b":Landroid/os/IBinder;
    iget-object v1, p0, Lc8/Fk;->this$1:Lc8/Hk;

    iget-object v1, v1, Lc8/Hk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mConnections:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    return-void
.end method
