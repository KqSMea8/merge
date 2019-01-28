.class public Lc8/EYo;
.super Lc8/SIj;
.source "CardRegistUIView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/UYo;->doGetPhoneNumberAuthCode(Ljava/lang/String;)V
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
    .line 1057
    iput-object p1, p0, Lc8/EYo;->this$0:Lc8/UYo;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 1084
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "=====failReason===="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1085
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lc8/Lyo;->showErrorMessage4PhoneRegist(Ljava/lang/String;)V

    .line 1086
    iget-object v0, p0, Lc8/EYo;->this$0:Lc8/UYo;

    invoke-virtual {v0}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/youku/phone/R$string;->tips_auth_code_fail_send:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1087
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1088
    return-void
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 8
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 1060
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v2

    .line 1061
    .local v2, "result":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "=====success===="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1064
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1065
    .local v1, "obj":Lorg/json/JSONObject;
    const-string/jumbo v5, "status"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1066
    .local v4, "status":Ljava/lang/String;
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 1067
    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1068
    const-string/jumbo v5, "error"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "failed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1069
    :cond_0
    const-string/jumbo v5, "code"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 1070
    .local v3, "state_code_value":I
    invoke-static {}, Lc8/Lyo;->getInstance()Lc8/Lyo;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lc8/Lyo;->showErrorMessage4PhoneRegist(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1080
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v3    # "state_code_value":I
    .end local v4    # "status":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1074
    :catch_0
    move-exception v0

    .line 1075
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 1077
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v5, p0, Lc8/EYo;->this$0:Lc8/UYo;

    invoke-virtual {v5}, Lc8/UYo;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/youku/phone/R$string;->tips_auth_code_has_been_send:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lc8/bzo;->showTips(Ljava/lang/String;)V

    .line 1078
    invoke-static {}, Lc8/Jbp;->dismiss()V

    .line 1079
    iget-object v5, p0, Lc8/EYo;->this$0:Lc8/UYo;

    invoke-static {v5}, Lc8/UYo;->access$3600(Lc8/UYo;)Lc8/RYo;

    move-result-object v5

    invoke-virtual {v5}, Lc8/RYo;->start()Landroid/os/CountDownTimer;

    goto :goto_0
.end method
