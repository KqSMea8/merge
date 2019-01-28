.class public Lc8/sxe;
.super Ljava/lang/Thread;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/wxe;->requestByThread(Ljava/lang/String;Lc8/Fxe;Ljava/lang/String;Lc8/Exe;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/wxe;

.field final synthetic val$httpMethod:Ljava/lang/String;

.field final synthetic val$listener:Lc8/Exe;

.field final synthetic val$params:Lc8/Fxe;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/wxe;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;Lc8/Exe;)V
    .locals 0
    .param p1, "this$0"    # Lc8/wxe;

    .prologue
    .line 56
    iput-object p1, p0, Lc8/sxe;->this$0:Lc8/wxe;

    iput-object p2, p0, Lc8/sxe;->val$url:Ljava/lang/String;

    iput-object p3, p0, Lc8/sxe;->val$httpMethod:Ljava/lang/String;

    iput-object p4, p0, Lc8/sxe;->val$params:Lc8/Fxe;

    iput-object p5, p0, Lc8/sxe;->val$listener:Lc8/Exe;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 61
    :try_start_0
    iget-object v2, p0, Lc8/sxe;->this$0:Lc8/wxe;

    invoke-static {v2}, Lc8/wxe;->access$000(Lc8/wxe;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lc8/sxe;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lc8/sxe;->val$httpMethod:Ljava/lang/String;

    iget-object v5, p0, Lc8/sxe;->val$params:Lc8/Fxe;

    invoke-static {v2, v3, v4, v5}, Lc8/yxe;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lc8/Fxe;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "resp":Ljava/lang/String;
    iget-object v2, p0, Lc8/sxe;->val$listener:Lc8/Exe;

    if-eqz v2, :cond_0

    .line 63
    iget-object v2, p0, Lc8/sxe;->val$listener:Lc8/Exe;

    invoke-interface {v2, v1}, Lc8/Exe;->onComplete(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    .end local v1    # "resp":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :try_start_1
    iget-object v2, p0, Lc8/sxe;->val$listener:Lc8/Exe;

    if-eqz v2, :cond_0

    .line 67
    iget-object v2, p0, Lc8/sxe;->val$listener:Lc8/Exe;

    invoke-interface {v2, v0}, Lc8/Exe;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 69
    .end local v0    # "e":Lcom/sina/weibo/sdk/exception/WeiboException;
    :catchall_0
    move-exception v2

    throw v2
.end method
