.class public Lc8/lbk;
.super Lc8/pJj;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/mbk;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/pJj",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/mbk;

.field final synthetic val$callBack:Lc8/SIj;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/mbk;Ljava/lang/String;Lc8/SIj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/mbk;

    .prologue
    .line 461
    iput-object p1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    iput-object p2, p0, Lc8/lbk;->val$content:Ljava/lang/String;

    iput-object p3, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    invoke-direct {p0}, Lc8/pJj;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 468
    iget-object v0, p0, Lc8/lbk;->this$0:Lc8/mbk;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v1}, Lc8/mbk;->access$000(Lc8/mbk;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v2}, Lc8/mbk;->access$100(Lc8/mbk;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v3}, Lc8/mbk;->access$200(Lc8/mbk;)Z

    move-result v3

    iget-object v4, p0, Lc8/lbk;->val$content:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lc8/mbk;->access$800(Lc8/mbk;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 476
    invoke-super {p0, p1}, Lc8/pJj;->onPostExecute(Ljava/lang/Object;)V

    .line 477
    iget-object v0, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v0}, Lc8/mbk;->access$400(Lc8/mbk;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 490
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "HttpRequestManager.request(...).new YoukuAsyncTask() {...}#onPostExecute()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v1}, Lc8/mbk;->access$500(Lc8/mbk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ">>>>>>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v1}, Lc8/mbk;->access$000(Lc8/mbk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lc8/mbk;->STATE_ERROR_WITHOUT_NETWORK:Ljava/lang/String;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v1}, Lc8/mbk;->access$500(Lc8/mbk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v0}, Lc8/mbk;->access$600(Lc8/mbk;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v0}, Lc8/mbk;->access$700(Lc8/mbk;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-virtual {v0, v1}, Lc8/SIj;->onLocalLoad(Lc8/TIj;)V

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 479
    :pswitch_1
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-virtual {v0, v1}, Lc8/SIj;->onSuccess(Lc8/TIj;)V

    goto :goto_0

    .line 485
    :pswitch_2
    sget-object v0, Lc8/oSh;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "yk_been_loginout_receiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 486
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-virtual {v0, v1}, Lc8/SIj;->onNoAuthorized(Lc8/TIj;)V

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lc8/lbk;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/lbk;->this$0:Lc8/mbk;

    invoke-static {v1}, Lc8/mbk;->access$500(Lc8/mbk;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lc8/SIj;->onFailed(Ljava/lang/String;)V

    goto :goto_0

    .line 477
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
