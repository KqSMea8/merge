.class public Lc8/Mnk;
.super Lc8/SIj;
.source "FavoriteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Nnk;->favorite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Nnk;


# direct methods
.method constructor <init>(Lc8/Nnk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Nnk;

    .prologue
    .line 141
    iput-object p1, p0, Lc8/Mnk;->this$0:Lc8/Nnk;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method

.method private doResponse(I)V
    .locals 4
    .param p1, "errCode"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "errCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    packed-switch p1, :pswitch_data_0

    .line 212
    :pswitch_0
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new4:I

    invoke-direct {p0, v2, v2, v0}, Lc8/Mnk;->doResponse(ZZI)V

    .line 215
    :goto_0
    return-void

    .line 184
    :pswitch_1
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new1:I

    invoke-direct {p0, v3, v3, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 189
    :pswitch_2
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new1:I

    invoke-direct {p0, v2, v3, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 193
    :pswitch_3
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new2:I

    invoke-direct {p0, v2, v2, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 197
    :pswitch_4
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new2:I

    invoke-direct {p0, v3, v2, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 201
    :pswitch_5
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new3:I

    invoke-direct {p0, v2, v2, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 205
    :pswitch_6
    sget v0, Lcom/youku/phone/R$string;->info_toast_fav_new3:I

    invoke-direct {p0, v3, v2, v0}, Lc8/Mnk;->doResponse(ZZI)V

    goto :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_2
        :pswitch_0
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_1
        :pswitch_6
        :pswitch_1
    .end packed-switch
.end method

.method private doResponse(ZZI)V
    .locals 2
    .param p1, "isMyYoukuNeedRefresh"    # Z
    .param p2, "isSuccess"    # Z
    .param p3, "msgResId"    # I

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "handler":Landroid/os/Handler;
    iget-object v1, p0, Lc8/Mnk;->this$0:Lc8/Nnk;

    invoke-static {v1}, Lc8/Nnk;->access$000(Lc8/Nnk;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lc8/Mnk;->this$0:Lc8/Nnk;

    invoke-static {v1}, Lc8/Nnk;->access$000(Lc8/Nnk;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "handler":Landroid/os/Handler;
    check-cast v0, Landroid/os/Handler;

    .line 222
    .restart local v0    # "handler":Landroid/os/Handler;
    :cond_0
    if-nez v0, :cond_1

    .line 237
    :goto_0
    return-void

    .line 225
    :cond_1
    if-eqz v0, :cond_2

    .line 226
    if-eqz p2, :cond_3

    .line 227
    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 236
    :cond_2
    :goto_1
    invoke-static {p3}, Lc8/Iin;->showTips(I)V

    goto :goto_0

    .line 232
    :cond_3
    const/16 v1, 0x7df

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 162
    const/4 v0, -0x5

    .line 165
    .local v0, "code":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 170
    :goto_0
    invoke-direct {p0, v0}, Lc8/Mnk;->doResponse(I)V

    .line 171
    return-void

    .line 166
    :catch_0
    move-exception v1

    .line 167
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 5
    .param p1, "httpRequestManager"    # Lc8/TIj;

    .prologue
    .line 146
    const/4 v0, -0x5

    .line 148
    .local v0, "code":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSucess: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "code"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 157
    .end local v2    # "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-direct {p0, v0}, Lc8/Mnk;->doResponse(I)V

    .line 158
    return-void

    .line 153
    :catch_0
    move-exception v1

    .line 154
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
