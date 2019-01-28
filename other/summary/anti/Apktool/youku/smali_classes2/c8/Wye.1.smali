.class public Lc8/Wye;
.super Ljava/lang/Object;
.source "ShareWebViewRequestParam.java"

# interfaces
.implements Lc8/Exe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Xye;->doExtraTask(Lc8/Tye;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Xye;

.field final synthetic val$callback:Lc8/Tye;


# direct methods
.method constructor <init>(Lc8/Xye;Lc8/Tye;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Xye;

    .prologue
    .line 68
    iput-object p1, p0, Lc8/Wye;->this$0:Lc8/Xye;

    iput-object p2, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p1}, Lc8/Fye;->parse(Ljava/lang/String;)Lc8/Fye;

    move-result-object v0

    .line 80
    .local v0, "result":Lc8/Fye;
    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {v0}, Lc8/Fye;->getCode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 82
    invoke-virtual {v0}, Lc8/Fye;->getPicId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    iget-object v1, p0, Lc8/Wye;->this$0:Lc8/Xye;

    invoke-virtual {v0}, Lc8/Fye;->getPicId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Xye;->access$002(Lc8/Xye;Ljava/lang/String;)Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    iget-object v2, p0, Lc8/Wye;->this$0:Lc8/Xye;

    invoke-static {v2}, Lc8/Xye;->access$000(Lc8/Xye;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lc8/Tye;->onComplete(Ljava/lang/String;)V

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    iget-object v1, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    const-string/jumbo v2, "upload pic fail"

    invoke-interface {v1, v2}, Lc8/Tye;->onException(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
    .locals 2
    .param p1, "e"    # Lcom/sina/weibo/sdk/exception/WeiboException;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lc8/Wye;->val$callback:Lc8/Tye;

    const-string/jumbo v1, "upload pic fail"

    invoke-interface {v0, v1}, Lc8/Tye;->onException(Ljava/lang/String;)V

    .line 76
    :cond_0
    return-void
.end method
