.class public Lc8/fAk;
.super Lc8/SIj;
.source "SubscribUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/jAk;->requestCreateRelate(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lc8/Tzk;ZLandroid/os/Handler;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/jAk;

.field final synthetic val$callback:Lc8/Tzk;

.field final synthetic val$finalUserUrl:Ljava/lang/String;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$isMedia:Z

.field final synthetic val$isShowTips:Z

.field final synthetic val$showid:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lc8/jAk;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lc8/Tzk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/jAk;

    .prologue
    .line 104
    iput-object p1, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iput-boolean p2, p0, Lc8/fAk;->val$isMedia:Z

    iput-boolean p3, p0, Lc8/fAk;->val$isShowTips:Z

    iput-object p4, p0, Lc8/fAk;->val$finalUserUrl:Ljava/lang/String;

    iput-object p5, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iput-object p6, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iput-object p7, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iput-object p8, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-direct {p0}, Lc8/SIj;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 6
    .param p1, "failReason"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===onLogin===fail result=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-eqz v0, :cond_0

    .line 163
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 167
    :goto_0
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/fAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 168
    return-void

    .line 165
    :cond_0
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_0
.end method

.method public onSuccess(Lc8/TIj;)V
    .locals 9
    .param p1, "request"    # Lc8/TIj;

    .prologue
    .line 107
    invoke-interface {p1}, Lc8/TIj;->getDataString()Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "requestStr":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "===onLogin===result==create==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 111
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lc8/fAk;->val$isShowTips:Z

    if-eqz v0, :cond_0

    .line 113
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_success:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    .line 116
    :cond_0
    iget-object v0, p0, Lc8/fAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$finalUserUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lc8/jAk;->access$000(Lc8/jAk;Ljava/lang/String;)V

    .line 119
    :cond_1
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/fAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$100(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    .line 120
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-boolean v1, p0, Lc8/fAk;->val$isMedia:Z

    invoke-static {v0, v1}, Lc8/jAk;->access$200(Lc8/jAk;Z)V

    .line 157
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 121
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v0, "error"

    const-string/jumbo v1, "status"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 122
    const/16 v0, -0x132

    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 123
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-eqz v0, :cond_3

    .line 124
    const-string/jumbo v0, "\u6dfb\u52a0\u8ffd\u5267\u6709\u70b9\u9891\u7e41\u54e6\uff0c\u4f11\u606f\u4e00\u4e0b\u5427"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    .line 147
    :goto_1
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/fAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 151
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    .line 152
    .local v6, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/fAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V

    goto :goto_0

    .line 126
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

    .line 154
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v6

    .line 155
    .local v6, "e":Ljava/lang/ClassCastException;
    const-string/jumbo v0, "SubscribUtil"

    invoke-static {v0, v6}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 128
    .end local v6    # "e":Ljava/lang/ClassCastException;
    .restart local v7    # "jsonObject":Lorg/json/JSONObject;
    :cond_4
    const/16 v0, -0x12c

    :try_start_2
    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 129
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-eqz v0, :cond_5

    .line 130
    const-string/jumbo v0, "\u60a8\u7684\u8ffd\u5267\u6570\u91cf\u8fbe\u5230\u4e0a\u9650\u5566\uff01"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 132
    :cond_5
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_to_top:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_1

    .line 134
    :cond_6
    const/16 v0, -0x131

    const-string/jumbo v1, "code"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_8

    .line 135
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-eqz v0, :cond_7

    .line 136
    const-string/jumbo v0, "\u8fd9\u4e2a\u7528\u6237\u5df2\u5c4f\u853d\u8ffd\u5267\uff01"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto :goto_1

    .line 138
    :cond_7
    sget v0, Lcom/youku/phone/R$string;->other_person_info_follow_cannot_done:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto :goto_1

    .line 141
    :cond_8
    iget-boolean v0, p0, Lc8/fAk;->val$isMedia:Z

    if-eqz v0, :cond_9

    .line 142
    const-string/jumbo v0, "\u8ffd\u5267\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5"

    invoke-static {v0}, Lc8/Iin;->showTips(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 144
    :cond_9
    sget v0, Lcom/youku/phone/R$string;->other_person_info_has_follow_fail:I

    invoke-static {v0}, Lc8/Iin;->showTips(I)V

    goto/16 :goto_1

    .line 149
    :cond_a
    iget-object v0, p0, Lc8/fAk;->this$0:Lc8/jAk;

    iget-object v1, p0, Lc8/fAk;->val$userId:Ljava/lang/String;

    iget-object v2, p0, Lc8/fAk;->val$showid:Ljava/lang/String;

    iget-boolean v3, p0, Lc8/fAk;->val$isMedia:Z

    iget-object v4, p0, Lc8/fAk;->val$handler:Landroid/os/Handler;

    iget-object v5, p0, Lc8/fAk;->val$callback:Lc8/Tzk;

    invoke-static/range {v0 .. v5}, Lc8/jAk;->access$300(Lc8/jAk;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Handler;Lc8/Tzk;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0
.end method
