.class public Lc8/tWc;
.super Lc8/EWc;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/uWc;->request(Lcom/baseproject/network/HttpIntent;Lc8/vWc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/EWc",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/uWc;

.field final synthetic val$callBack:Lc8/vWc;


# direct methods
.method constructor <init>(Lc8/uWc;Lc8/vWc;)V
    .locals 0
    .param p1, "this$0"    # Lc8/uWc;

    .prologue
    .line 270
    iput-object p1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iput-object p2, p0, Lc8/tWc;->val$callBack:Lc8/vWc;

    invoke-direct {p0}, Lc8/EWc;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 274
    iget-object v0, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iget-object v1, v1, Lc8/uWc;->uri:Ljava/lang/String;

    iget-object v2, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-static {v2}, Lc8/uWc;->access$000(Lc8/uWc;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-static {v3}, Lc8/uWc;->access$100(Lc8/uWc;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lc8/uWc;->access$200(Lc8/uWc;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 283
    invoke-super {p0, p1}, Lc8/EWc;->onPostExecute(Ljava/lang/Object;)V

    .line 284
    const/4 v0, 0x1

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-static {v1}, Lc8/uWc;->access$300(Lc8/uWc;)I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    .line 285
    iget-object v0, p0, Lc8/tWc;->val$callBack:Lc8/vWc;

    if-eqz v0, :cond_0

    .line 286
    iget-object v0, p0, Lc8/tWc;->val$callBack:Lc8/vWc;

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-interface {v0, v1}, Lc8/vWc;->onSuccess(Lc8/uWc;)V

    .line 287
    :cond_0
    sget-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    .line 304
    :cond_1
    :goto_0
    return-void

    .line 288
    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-static {v1}, Lc8/uWc;->access$300(Lc8/uWc;)I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_1

    .line 289
    iget-object v0, p0, Lc8/tWc;->this$0:Lc8/uWc;

    invoke-static {v0}, Lc8/uWc;->access$300(Lc8/uWc;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 291
    sget-object v0, Lc8/oSh;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "yk_been_loginout_receiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 294
    :cond_3
    iget-object v0, p0, Lc8/tWc;->val$callBack:Lc8/vWc;

    if-eqz v0, :cond_4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HttpRequestManager.request(...).new YoukuAsyncTask() {...}#onPostExecute()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iget-object v1, v1, Lc8/uWc;->fail_reason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lc8/tWc;->val$callBack:Lc8/vWc;

    iget-object v1, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iget-object v1, v1, Lc8/uWc;->fail_reason:Ljava/lang/String;

    invoke-interface {v0, v1}, Lc8/vWc;->onFailed(Ljava/lang/String;)V

    .line 300
    :cond_4
    iget-object v0, p0, Lc8/tWc;->this$0:Lc8/uWc;

    iget-object v0, v0, Lc8/uWc;->fail_reason:Ljava/lang/String;

    const-string/jumbo v1, "\u65e0\u7f51\u7edc\u8fde\u63a5\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u8bd5\uff0c\u5148\u53bb\u672c\u5730\u89c6\u9891\u770b\u770b\u5427\u3002"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    sget-object v0, Lcom/baseproject/network/HttpRequestManager$NetEvent;->netResponse:Lcom/baseproject/network/HttpRequestManager$NetEvent;

    goto :goto_0
.end method
