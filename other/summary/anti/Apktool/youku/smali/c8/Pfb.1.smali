.class public Lc8/Pfb;
.super Landroid/os/AsyncTask;
.source "AccountLinkComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Qfb;->showBind(Landroid/app/Activity;ILjava/lang/String;)V
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
.field final synthetic this$0:Lc8/Qfb;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$apkSign:Ljava/lang/String;

.field final synthetic val$code:I

.field final synthetic val$ibb:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/Qfb;Ljava/lang/String;ILandroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Qfb;

    .prologue
    .line 188
    iput-object p1, p0, Lc8/Pfb;->this$0:Lc8/Qfb;

    iput-object p2, p0, Lc8/Pfb;->val$apkSign:Ljava/lang/String;

    iput p3, p0, Lc8/Pfb;->val$code:I

    iput-object p4, p0, Lc8/Pfb;->val$activity:Landroid/app/Activity;

    iput-object p5, p0, Lc8/Pfb;->val$ibb:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 188
    invoke-virtual {p0, p1}, Lc8/Pfb;->doInBackground([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 191
    const-string/jumbo v0, "login"

    const-string/jumbo v1, "showBind doInBackground"

    invoke-static {v0, v1}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lc8/eib;->INSTANCE:Lc8/eib;

    iget-object v1, p0, Lc8/Pfb;->val$apkSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lc8/eib;->generateTopAppLinkToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 188
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lc8/Pfb;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "signResult"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 197
    const-string/jumbo v3, "login"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "showBind onPostExecute signResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/Jhb;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 199
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "com.taobao.open.intent.action.GETWAY"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "tbopen://m.taobao.com/getway/oauth?"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "&appkey="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 202
    invoke-static {}, Lc8/Bgb;->getAppKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&pluginName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "taobao.oauth.code.create"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&apkSign="

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lc8/Pfb;->val$apkSign:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&BaiChuanIBB4Bind="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lc8/Pfb;->val$code:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "&sign="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 206
    .local v2, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 207
    iget-object v3, p0, Lc8/Pfb;->val$activity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 208
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 209
    sget v3, Lc8/nib;->OPEN_TAOBAO:I

    .line 210
    sput-boolean v7, Lc8/Zfb;->isBind:Z

    .line 211
    iget v3, p0, Lc8/Pfb;->val$code:I

    const/16 v4, 0x2728

    if-ne v3, v4, :cond_1

    .line 212
    const/4 v3, 0x1

    sput-boolean v3, Lc8/Zfb;->isBind:Z

    .line 213
    const-class v3, Lc8/vhb;

    invoke-static {v3}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vhb;

    const-string/jumbo v4, "COOPERATION_TB_BIND"

    invoke-interface {v3, v4, v6}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    .line 221
    :cond_0
    :goto_0
    iget-object v3, p0, Lc8/Pfb;->val$activity:Landroid/app/Activity;

    sget v4, Lc8/nib;->OPEN_TAOBAO:I

    invoke-virtual {v3, v0, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 228
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "uri":Landroid/net/Uri;
    :goto_1
    return-void

    .line 214
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget v3, p0, Lc8/Pfb;->val$code:I

    const/16 v4, 0x2727

    if-ne v3, v4, :cond_2

    .line 215
    const-class v3, Lc8/vhb;

    invoke-static {v3}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vhb;

    const-string/jumbo v4, "COOPERATION_TB_LOGIN"

    invoke-interface {v3, v4, v6}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 216
    :cond_2
    iget v3, p0, Lc8/Pfb;->val$code:I

    const/16 v4, 0x2729

    if-ne v3, v4, :cond_3

    .line 217
    const-class v3, Lc8/vhb;

    invoke-static {v3}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vhb;

    const-string/jumbo v4, "COOPERATION_TRUST_LOGIN"

    invoke-interface {v3, v4, v6}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 218
    :cond_3
    iget v3, p0, Lc8/Pfb;->val$code:I

    const/16 v4, 0x272a

    if-ne v3, v4, :cond_0

    .line 219
    const-class v3, Lc8/vhb;

    invoke-static {v3}, Lc8/Bgb;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc8/vhb;

    const-string/jumbo v4, "COOPERATION_SYSTEM_ERROR"

    invoke-interface {v3, v4, v6}, Lc8/vhb;->send(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 223
    :cond_4
    iget-object v3, p0, Lc8/Pfb;->this$0:Lc8/Qfb;

    iget-object v4, p0, Lc8/Pfb;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lc8/Pfb;->val$code:I

    iget-object v6, p0, Lc8/Pfb;->val$ibb:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lc8/Qfb;->showH5Bind(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_1

    .line 226
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_5
    iget-object v3, p0, Lc8/Pfb;->this$0:Lc8/Qfb;

    iget-object v4, p0, Lc8/Pfb;->val$activity:Landroid/app/Activity;

    iget v5, p0, Lc8/Pfb;->val$code:I

    iget-object v6, p0, Lc8/Pfb;->val$ibb:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Lc8/Qfb;->showH5Bind(Landroid/app/Activity;ILjava/lang/String;)V

    goto :goto_1
.end method
