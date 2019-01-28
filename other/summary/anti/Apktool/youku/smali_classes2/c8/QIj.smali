.class public Lc8/QIj;
.super Lc8/pJj;
.source "HttpRequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/RIj;->request(Lcom/youku/network/HttpIntent;Lc8/SIj;)V
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
.field final synthetic this$0:Lc8/RIj;

.field final synthetic val$callBack:Lc8/SIj;


# direct methods
.method constructor <init>(Lc8/RIj;Lc8/SIj;)V
    .locals 0
    .param p1, "this$0"    # Lc8/RIj;

    .prologue
    .line 668
    iput-object p1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    iput-object p2, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    invoke-direct {p0}, Lc8/pJj;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 672
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 673
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    const-string/jumbo v2, "URL\u4e0d\u5b58\u5728"

    invoke-static {v1, v2}, Lc8/RIj;->access$102(Lc8/RIj;Ljava/lang/String;)Ljava/lang/String;

    .line 674
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$100(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    .line 683
    :cond_0
    :goto_0
    return-object v0

    .line 676
    :cond_1
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    iget-object v2, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v2}, Lc8/RIj;->access$000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v3}, Lc8/RIj;->access$200(Lc8/RIj;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v4}, Lc8/RIj;->access$300(Lc8/RIj;)Z

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lc8/RIj;->access$400(Lc8/RIj;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 677
    .local v0, "o":Ljava/lang/String;
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$500(Lc8/RIj;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    if-eqz v1, :cond_0

    .line 679
    iget-object v1, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v2, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-virtual {v1, v2}, Lc8/SIj;->onSuccessDoParse(Lc8/TIj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$600(Lc8/RIj;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$700(Lc8/RIj;)I

    move-result v1

    const/16 v2, 0xc8

    if-ge v1, v2, :cond_2

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$700(Lc8/RIj;)I

    move-result v1

    const/16 v2, 0x12c

    if-ge v1, v2, :cond_0

    .line 680
    :cond_2
    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$800(Lc8/RIj;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v2}, Lc8/RIj;->access$900(Lc8/RIj;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v3}, Lc8/RIj;->access$1000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lc8/tSh;->saveUrlCacheToLocal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 699
    invoke-super {p0, p1}, Lc8/pJj;->onPostExecute(Ljava/lang/Object;)V

    .line 700
    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$500(Lc8/RIj;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 701
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$600(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1100(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1200(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1200(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$1000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 705
    :cond_0
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-virtual {v0, v1}, Lc8/SIj;->onSuccess(Lc8/TIj;)V

    .line 724
    :cond_1
    :goto_0
    return-void

    .line 708
    :cond_2
    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$500(Lc8/RIj;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 709
    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$500(Lc8/RIj;)I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 711
    sget-object v0, Lc8/oSh;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "yk_been_loginout_receiver"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 713
    :cond_3
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_1

    .line 714
    const-string/jumbo v0, "\u5f53\u524d\u65e0\u7f51\u7edc\u8fde\u63a5"

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$100(Lc8/RIj;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$600(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1100(Lc8/RIj;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 715
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-virtual {v0, v1}, Lc8/SIj;->onLocalLoad(Lc8/TIj;)V

    goto :goto_0

    .line 717
    :cond_4
    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1100(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1100(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 718
    :cond_5
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v1}, Lc8/RIj;->access$500(Lc8/RIj;)I

    move-result v1

    iget-object v2, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v2}, Lc8/RIj;->access$100(Lc8/RIj;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lc8/SIj;->onFailed(ILjava/lang/String;)V

    .line 719
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-virtual {v0, v1}, Lc8/SIj;->onFailed(Lc8/TIj;)V

    goto/16 :goto_0
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 689
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$600(Lc8/RIj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-static {v0}, Lc8/RIj;->access$1000(Lc8/RIj;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    iget-object v0, p0, Lc8/QIj;->val$callBack:Lc8/SIj;

    iget-object v1, p0, Lc8/QIj;->this$0:Lc8/RIj;

    invoke-virtual {v0, v1}, Lc8/SIj;->onLocalLoad(Lc8/TIj;)V

    .line 692
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 668
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lc8/QIj;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
