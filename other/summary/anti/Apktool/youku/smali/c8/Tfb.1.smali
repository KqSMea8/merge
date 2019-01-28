.class public Lc8/Tfb;
.super Landroid/os/AsyncTask;
.source "AccountLinkServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ufb;->dispatchBindEvent(Lc8/xgb;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Lc8/Yfb;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ufb;

.field final synthetic val$loginCallback:Lc8/xgb;


# direct methods
.method constructor <init>(Lc8/Ufb;Lc8/xgb;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ufb;

    .prologue
    .line 149
    iput-object p1, p0, Lc8/Tfb;->this$0:Lc8/Ufb;

    iput-object p2, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Lc8/Yfb;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 153
    const-string/jumbo v0, "bind"

    const-string/jumbo v1, "dispatchBindEvent getBindIbb"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lc8/Tfb;->this$0:Lc8/Ufb;

    invoke-static {v0}, Lc8/Ufb;->access$000(Lc8/Ufb;)Lc8/Wfb;

    move-result-object v0

    invoke-interface {v0}, Lc8/Wfb;->getBindIbb()Lc8/Yfb;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 149
    invoke-virtual {p0, p1}, Lc8/Tfb;->doInBackground([Ljava/lang/Object;)Lc8/Yfb;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lc8/Yfb;)V
    .locals 6
    .param p1, "ibbParams"    # Lc8/Yfb;

    .prologue
    const/16 v5, 0x2728

    const/16 v4, 0x2727

    .line 159
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 160
    if-eqz p1, :cond_5

    .line 161
    const-string/jumbo v1, "bind"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dispatchBindEvent ibbParams.code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lc8/Yfb;->code:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ibbParams.trustLoginToken="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/Yfb;->trustLoginToken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ibbParams.ibb="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lc8/Yfb;->ibb:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget v1, p1, Lc8/Yfb;->code:I

    if-ne v1, v5, :cond_1

    .line 163
    const/4 v1, 0x1

    sput-boolean v1, Lc8/Zfb;->isBind:Z

    .line 164
    sget-object v2, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    if-nez p1, :cond_0

    const-string/jumbo v1, ""

    :goto_0
    iget-object v3, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v2, v5, v1, v3}, Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V

    .line 187
    :goto_1
    return-void

    .line 164
    :cond_0
    iget-object v1, p1, Lc8/Yfb;->ibb:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_1
    iget v1, p1, Lc8/Yfb;->code:I

    if-ne v1, v4, :cond_3

    .line 167
    sget-object v2, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    if-nez p1, :cond_2

    const-string/jumbo v1, ""

    :goto_2
    iget-object v3, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v2, v4, v1, v3}, Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V

    goto :goto_1

    :cond_2
    iget-object v1, p1, Lc8/Yfb;->ibb:Ljava/lang/String;

    goto :goto_2

    .line 169
    :cond_3
    iget v1, p1, Lc8/Yfb;->code:I

    const/16 v2, 0x2729

    if-ne v1, v2, :cond_4

    .line 170
    const-string/jumbo v1, "bind"

    const-string/jumbo v2, "handleTrustLoginEvent"

    invoke-static {v1, v2}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    sput-object v1, Lc8/mjb;->loginCallback:Ljava/lang/Object;

    .line 172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    const-class v2, Lcom/ali/auth/third/accountlink/ui/BindResultActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "token"

    iget-object v2, p1, Lc8/Yfb;->trustLoginToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    const-string/jumbo v1, "ibb"

    iget-object v2, p1, Lc8/Yfb;->ibb:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    const-string/jumbo v1, "login_type"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 177
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 179
    sget-object v1, Lc8/Bgb;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 182
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    iget v2, p1, Lc8/Yfb;->code:I

    const-string/jumbo v3, ""

    iget-object v4, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v1, v2, v3, v4}, Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V

    goto :goto_1

    .line 186
    :cond_5
    sget-object v1, Lc8/Qfb;->INSTANCE:Lc8/Qfb;

    const-string/jumbo v2, ""

    iget-object v3, p0, Lc8/Tfb;->val$loginCallback:Lc8/xgb;

    invoke-virtual {v1, v4, v2, v3}, Lc8/Qfb;->handleBindEvent(ILjava/lang/String;Lc8/xgb;)V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 149
    check-cast p1, Lc8/Yfb;

    invoke-virtual {p0, p1}, Lc8/Tfb;->onPostExecute(Lc8/Yfb;)V

    return-void
.end method
