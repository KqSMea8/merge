.class public Lc8/dib;
.super Landroid/os/AsyncTask;
.source "LoginComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/eib;->showLogin(Landroid/app/Activity;)V
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lc8/eib;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apkSign:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/eib;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lc8/eib;

    .prologue
    .line 165
    iput-object p1, p0, Lc8/dib;->this$0:Lc8/eib;

    iput-object p2, p0, Lc8/dib;->val$apkSign:Ljava/lang/String;

    iput-object p3, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lc8/dib;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 169
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "showLogin doInBackground"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lc8/dib;->val$apkSign:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    const-string/jumbo v0, ""

    .line 178
    :goto_0
    return-object v0

    .line 174
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc8/dib;->this$0:Lc8/eib;

    iget-object v1, p0, Lc8/dib;->val$apkSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/eib;->generateTopAppLinkToken(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 178
    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 165
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/dib;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "signResult"    # Ljava/lang/String;

    .prologue
    .line 183
    const-string/jumbo v4, "login"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showLogin onPostExecute signResult = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 187
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.taobao.open.intent.action.GETWAY"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "tbopen://m.taobao.com/getway/oauth?"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "&appkey="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 189
    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&pluginName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "taobao.oauth.code.create"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&apkSign="

    .line 190
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/dib;->val$apkSign:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "&sign="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 191
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 193
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 194
    iget-object v4, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 195
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 197
    :try_start_0
    iget-object v4, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    sget v5, Lc8/nib;->OPEN_TAOBAO:I

    invoke-virtual {v4, v1, v5}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 198
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v3    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "login"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startActivityForResult fail == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lc8/dib;->this$0:Lc8/eib;

    iget-object v5, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 204
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v4, p0, Lc8/dib;->this$0:Lc8/eib;

    iget-object v5, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    goto :goto_0

    .line 207
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v4, p0, Lc8/dib;->this$0:Lc8/eib;

    iget-object v5, p0, Lc8/dib;->val$activity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Lc8/eib;->showH5Login(Landroid/app/Activity;)V

    goto :goto_0
.end method
