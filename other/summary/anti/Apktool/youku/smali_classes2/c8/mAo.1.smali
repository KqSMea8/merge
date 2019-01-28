.class public Lc8/mAo;
.super Ljava/lang/Object;
.source "VipPayAPI.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/nAo;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/nAo;


# direct methods
.method constructor <init>(Lc8/nAo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/nAo;

    .prologue
    .line 165
    iput-object p1, p0, Lc8/mAo;->this$0:Lc8/nAo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lc8/mAo;->this$0:Lc8/nAo;

    iget-object v0, v0, Lc8/nAo;->val$vipListener:Lc8/kAo;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lc8/mAo;->this$0:Lc8/nAo;

    iget-object v0, v0, Lc8/nAo;->val$vipListener:Lc8/kAo;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lc8/kAo;->setVip(Z)V

    .line 171
    :cond_0
    invoke-static {v2}, Lc8/uAo;->access$002(Landroid/content/ServiceConnection;)Landroid/content/ServiceConnection;

    .line 172
    invoke-static {v2}, Lc8/uAo;->access$102(Lc8/dAo;)Lc8/dAo;

    .line 173
    return-void
.end method
