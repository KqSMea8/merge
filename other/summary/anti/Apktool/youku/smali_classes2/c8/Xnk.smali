.class public Lc8/Xnk;
.super Lc8/SIj;
.source "SubscribUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/bok;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/vin;ZLandroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/bok;

.field final synthetic val$callback:Lc8/vin;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/bok;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/vin;)V
    .locals 0
    .param p1, "this$0"    # Lc8/bok;

    .prologue
    .line 103
    iput-object p1, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iput-boolean p2, p0, Lc8/Xnk;->val$isMedia:Z

    iput-boolean p3, p0, Lc8/Xnk;->val$isShowTips:Z

    iput-object p4, p0, Lc8/Xnk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p5, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iput-object p7, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iput-object p8, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===onLogin===fail result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 162
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Xnk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 167
    return-void

    .line 164
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 9
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 106
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 107
    .local v8, "requestStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===onLogin===result==create==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 110
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/Xnk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 112
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 114
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lc8/Wnk;->detailSubscribeNeedRefresh:Z

    .line 115
    iget-object v0, p0, Lc8/Xnk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/bok;->access$000(Lc8/bok;Ljava/lang/String;)V

    .line 118
    :cond_1
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Xnk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$100(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    .line 119
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-boolean v1, p0, Lc8/Xnk;->val$isMedia:Z

    invoke-static {v0, v1}, Lc8/bok;->access$200(Lc8/bok;Z)V

    .line 156
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 120
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v0, "error"

    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 121
    const/16 v0, -0x132

    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 122
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-eqz v0, :cond_3

    .line 123
    const-string/jumbo v0, "\u6dfb\u52a0\u8ffd\u5267\u6709\u70b9\u9891\u7e41\u54e6\uff0c\u4f11\u606f\u4e00\u4e0b\u5427"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 146
    :goto_1
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Xnk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 150
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 151
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 152
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Xnk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V

    goto :goto_0

    .line 125
    .end local v6    # "e":Lorg/json/JSONException;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_too_quickly:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 153
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 154
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 127
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/16 v0, -0x12c

    :try_start_2
    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 128
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-eqz v0, :cond_5

    .line 129
    const-string/jumbo v0, "\u60a8\u7684\u8ffd\u5267\u6570\u91cf\u8fbe\u5230\u4e0a\u9650\u5566\uff01"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 131
    :cond_5
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_to_top:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_1

    .line 133
    :cond_6
    const/16 v0, -0x131

    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 134
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-eqz v0, :cond_7

    .line 135
    const-string/jumbo v0, "\u8fd9\u4e2a\u7528\u6237\u5df2\u5c4f\u853d\u8ffd\u5267\uff01"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_7
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_cannot_done:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_1

    .line 140
    :cond_8
    iget-boolean v0, p0, Lc8/Xnk;->val$isMedia:Z

    if-eqz v0, :cond_9

    .line 141
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 143
    :cond_9
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_1

    .line 148
    :cond_a
    iget-object v0, p0, Lc8/Xnk;->this$0:Lc8/bok;

    iget-object v1, p0, Lc8/Xnk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/Xnk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/Xnk;->val$isMedia:Z

    iget-object v4, p0, Lc8/Xnk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/Xnk;->val$callback:Lc8/vin;

    invoke-static/range {v0 .. v5}, Lc8/bok;->access$300(Lc8/bok;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/vin;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
