.class public Lc8/Bj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Jj;->connect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Jj;

.field final synthetic val$thisConnection:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lc8/Jj;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Jj;

    .prologue
    .line 929
    iput-object p1, p0, Lc8/Bj;->this$0:Lc8/Jj;

    iput-object p2, p0, Lc8/Bj;->val$thisConnection:Landroid/content/ServiceConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 933
    iget-object v0, p0, Lc8/Bj;->val$thisConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Lc8/Bj;->this$0:Lc8/Jj;

    iget-object v1, v1, Lc8/Jj;->mServiceConnection:Lc8/Ij;

    if-ne v0, v1, :cond_0

    .line 934
    iget-object v0, p0, Lc8/Bj;->this$0:Lc8/Jj;

    invoke-virtual {v0}, Lc8/Jj;->forceCloseConnection()V

    .line 935
    iget-object v0, p0, Lc8/Bj;->this$0:Lc8/Jj;

    iget-object v0, v0, Lc8/Jj;->mCallback:Lc8/oj;

    invoke-virtual {v0}, Lc8/oj;->onConnectionFailed()V

    .line 937
    :cond_0
    return-void
.end method
