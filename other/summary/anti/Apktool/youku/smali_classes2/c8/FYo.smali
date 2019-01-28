.class public Lc8/FYo;
.super Lc8/SIj;
.source "CardRegistUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->checkPhoneNumberBeUsed(Ljava/lang/String;Lc8/SYo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/UYo;

.field final synthetic val$mICheckPhoneNumberCallBack:Lc8/SYo;


# direct methods
.method constructor <init>(Lc8/UYo;Lc8/SYo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/UYo;

    .prologue
    .line 1101
    iput-object p1, p0, Lc8/FYo;->this$0:Lc8/UYo;

    iput-object p2, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1136
    iget-object v0, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    invoke-interface {v0, p1}, Lc8/SYo;->failCallBack(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 5
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 1105
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1106
    .local v2, "result":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "===checkPhonNumberBeUsed==result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1109
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1110
    .local v1, "mJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "success"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1111
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1112
    iget-object v3, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    const-string/jumbo v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/SYo;->successCallBack(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1131
    .end local v1    # "mJsonObject":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "======request====\u6210\u529f====request=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1132
    return-void

    .line 1114
    .restart local v1    # "mJsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "failed"

    const-string/jumbo v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1115
    const-string/jumbo v3, "code"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x2

    const-string/jumbo v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    if-ne v3, v4, :cond_2

    .line 1116
    iget-object v3, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    const-string/jumbo v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/SYo;->hasBeenUsed(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1125
    .end local v1    # "mJsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 1118
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "mJsonObject":Lorg/json/JSONObject;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    const-string/jumbo v4, "desc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lc8/SYo;->failCallBack(Ljava/lang/String;)V

    goto :goto_0

    .line 1121
    :cond_3
    iget-object v3, p0, Lc8/FYo;->val$mICheckPhoneNumberCallBack:Lc8/SYo;

    const-string/jumbo v4, "\u670d\u52a1\u5668\u5f02\u5e38\uff0c\u8bf7\u91cd\u8bd5"

    invoke-interface {v3, v4}, Lc8/SYo;->failCallBack(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
