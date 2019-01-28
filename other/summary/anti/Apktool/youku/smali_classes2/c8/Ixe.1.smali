.class public Lc8/Ixe;
.super Landroid/os/Handler;
.source "WbShareTransActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/share/WbShareTransActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;


# direct methods
.method public constructor <init>(Lcom/sina/weibo/sdk/share/WbShareTransActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sina/weibo/sdk/share/WbShareTransActivity;
    .annotation runtime Lcom/ali/mobisecenhance/Pkg;
    .end annotation

    .prologue
    .line 23
    iput-object p1, p0, Lc8/Ixe;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 26
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 27
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 28
    .local v1, "resultIntent":Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 29
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v2, "_weibo_resp_errcode"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 30
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 31
    const/high16 v2, 0x20000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 32
    iget-object v2, p0, Lc8/Ixe;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    iget-object v3, p0, Lc8/Ixe;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-static {v3}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->access$000(Lcom/sina/weibo/sdk/share/WbShareTransActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 33
    iget-object v2, p0, Lc8/Ixe;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-virtual {v2, v1}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->startActivity(Landroid/content/Intent;)V

    .line 34
    iget-object v2, p0, Lc8/Ixe;->this$0:Lcom/sina/weibo/sdk/share/WbShareTransActivity;

    invoke-virtual {v2}, Lcom/sina/weibo/sdk/share/WbShareTransActivity;->finish()V

    .line 35
    return-void
.end method
