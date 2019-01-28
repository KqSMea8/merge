.class public Lc8/HYo;
.super Lc8/SIj;
.source "CardRegistUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->doFillByPhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;


# direct methods
.method constructor <init>(Lc8/UYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 1180
    iput-object p1, p0, Lc8/HYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "doFillByPhoneNumber().onFailed.failReason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1215
    invoke-static {p1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1216
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1217
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 1183
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doFillByPhoneNumber().onSuccess.isCancel():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1184
    invoke-interface {p1}, Lc8/TIj;->isCancel()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1185
    const/4 v4, 0x0

    .line 1186
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 1187
    .local v1, "desc":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1189
    .local v0, "code":I
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v3, "mJSONObject":Lorg/json/JSONObject;
    const-string/jumbo v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1191
    const-string/jumbo v5, "code"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 1192
    const-string/jumbo v5, "desc"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1196
    .end local v3    # "mJSONObject":Lorg/json/JSONObject;
    :goto_0
    const-string/jumbo v5, "CardRegistUIView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "doFillByPhoneNumber().status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ",code:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lc8/Syo;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    const-string/jumbo v5, "success"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-nez v0, :cond_1

    .line 1198
    const-string/jumbo v5, "\u5b8c\u5584\u624b\u673a\u53f7\u6210\u529f"

    invoke-static {v5}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1199
    sget-object v5, Lc8/VLj;->context:Landroid/content/Context;

    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v7, "com.youku.phone.account.fragment.action.fill"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1200
    iget-object v5, p0, Lc8/HYo;->this$0:Lc8/UYo;

    invoke-virtual {v5}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    .line 1209
    .end local v0    # "code":I
    .end local v1    # "desc":Ljava/lang/String;
    .end local v4    # "status":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1210
    return-void

    .line 1193
    .restart local v0    # "code":I
    .restart local v1    # "desc":Ljava/lang/String;
    .restart local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 1194
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "doFillByPhoneNumber().Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 1201
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v5, -0x68

    if-ne v5, v0, :cond_2

    .line 1202
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v5, "\u5bc6\u7801\u8fc7\u4e8e\u7b80\u5355\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165"

    invoke-static {v5}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1203
    iget-object v5, p0, Lc8/HYo;->this$0:Lc8/UYo;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lc8/UYo;->access$1300(Lc8/UYo;Z)V

    goto :goto_1

    .line 1205
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1206
    invoke-static {v1}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    goto :goto_1
.end method
