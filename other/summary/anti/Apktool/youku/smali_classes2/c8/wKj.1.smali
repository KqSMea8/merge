.class public Lc8/wKj;
.super Ljava/lang/Object;
.source "MobileSecurePayHelper.java"

# interfaces
.implements Lc8/rKj;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/xKj;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/xKj;


# direct methods
.method constructor <init>(Lc8/xKj;)V
    .locals 0
    .param p1, "this$1"    # Lc8/xKj;

    .prologue
    .line 86
    iput-object p1, p0, Lc8/wKj;->this$1:Lc8/xKj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFail()V
    .locals 4

    .prologue
    .line 100
    iget-object v1, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v1, v1, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v1}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v3, v3, Lc8/xKj;->val$cachePath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 101
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v1, v1, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v1}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public downloadProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    .line 96
    return-void
.end method

.method public downloadSucess()V
    .locals 4

    .prologue
    .line 89
    iget-object v1, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v1, v1, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v1}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    iget-object v3, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v3, v3, Lc8/xKj;->val$downloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 90
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lc8/wKj;->this$1:Lc8/xKj;

    iget-object v1, v1, Lc8/xKj;->this$0:Lc8/zKj;

    invoke-static {v1}, Lc8/zKj;->access$000(Lc8/zKj;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 91
    return-void
.end method
