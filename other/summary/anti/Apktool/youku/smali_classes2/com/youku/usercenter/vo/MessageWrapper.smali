.class public Lcom/youku/usercenter/vo/MessageWrapper;
.super Ljava/lang/Object;
.source "MessageWrapper.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DISPLAY_TYPE_NORMAL:I = 0x2

.field public static final DISPLAY_TYPE_TOP:I = 0x1

.field public static final TYPE_DEVICE:I = 0x1

.field public static final TYPE_USER:I = 0x2


# instance fields
.field public badge_num:I

.field public desc:Ljava/lang/String;

.field public display_type:I

.field public icon:Ljava/lang/String;

.field public isExpried:Z

.field public isRead:Z

.field public jsonStr:Ljava/lang/String;

.field public msgObj:Ljava/lang/Object;

.field public msg_type:I

.field public msgid:Ljava/lang/String;

.field public push_time:J

.field public red_point:I

.field public thumbs:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 8
    .param p1, "msgObj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/youku/usercenter/vo/MessageWrapper;->msgObj:Ljava/lang/Object;

    .line 65
    instance-of v0, p1, Lc8/Xro;

    if-eqz v0, :cond_2

    .line 66
    iput v1, p0, Lcom/youku/usercenter/vo/MessageWrapper;->msg_type:I

    move-object v0, p1

    .line 67
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->mid:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->msgid:Ljava/lang/String;

    move-object v0, p1

    .line 68
    check-cast v0, Lc8/Xro;

    iget-wide v4, v0, Lc8/Xro;->push_time:J

    iput-wide v4, p0, Lcom/youku/usercenter/vo/MessageWrapper;->push_time:J

    move-object v0, p1

    .line 69
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->icon:Ljava/lang/String;

    move-object v0, p1

    .line 70
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->thumbs:Ljava/lang/String;

    move-object v0, p1

    .line 71
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->title:Ljava/lang/String;

    move-object v0, p1

    .line 72
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->desc:Ljava/lang/String;

    move-object v0, p1

    .line 73
    check-cast v0, Lc8/Xro;

    iget-object v0, v0, Lc8/Xro;->jsonStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->jsonStr:Ljava/lang/String;

    .line 75
    check-cast p1, Lc8/Xro;

    .end local p1    # "msgObj":Ljava/lang/Object;
    iget v0, p1, Lc8/Xro;->status:I

    if-le v0, v1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->isRead:Z

    .line 76
    iput v3, p0, Lcom/youku/usercenter/vo/MessageWrapper;->display_type:I

    .line 93
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 75
    goto :goto_0

    .line 77
    .restart local p1    # "msgObj":Ljava/lang/Object;
    :cond_2
    instance-of v0, p1, Lcom/youku/usercenter/vo/UserMessage;

    if-eqz v0, :cond_0

    .line 78
    iput v3, p0, Lcom/youku/usercenter/vo/MessageWrapper;->msg_type:I

    .line 79
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-wide v6, v0, Lcom/youku/usercenter/vo/UserMessage;->msgid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->msgid:Ljava/lang/String;

    move-object v0, p1

    .line 80
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget v0, v0, Lcom/youku/usercenter/vo/UserMessage;->red_point:I

    iput v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->red_point:I

    move-object v0, p1

    .line 81
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget v0, v0, Lcom/youku/usercenter/vo/UserMessage;->badge_num:I

    iput v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->badge_num:I

    move-object v0, p1

    .line 82
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-wide v4, v0, Lcom/youku/usercenter/vo/UserMessage;->u_insert_time:J

    iput-wide v4, p0, Lcom/youku/usercenter/vo/MessageWrapper;->push_time:J

    move-object v0, p1

    .line 83
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-object v0, v0, Lcom/youku/usercenter/vo/UserMessage;->icon:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->icon:Ljava/lang/String;

    move-object v0, p1

    .line 84
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-object v0, v0, Lcom/youku/usercenter/vo/UserMessage;->img:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->thumbs:Ljava/lang/String;

    move-object v0, p1

    .line 85
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-object v0, v0, Lcom/youku/usercenter/vo/UserMessage;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->title:Ljava/lang/String;

    move-object v0, p1

    .line 86
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-object v0, v0, Lcom/youku/usercenter/vo/UserMessage;->desc:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->desc:Ljava/lang/String;

    move-object v0, p1

    .line 87
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget-object v0, v0, Lcom/youku/usercenter/vo/UserMessage;->jsonStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->jsonStr:Ljava/lang/String;

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget v0, v0, Lcom/youku/usercenter/vo/UserMessage;->status:I

    if-le v0, v1, :cond_3

    move v2, v1

    :cond_3
    iput-boolean v2, p0, Lcom/youku/usercenter/vo/MessageWrapper;->isRead:Z

    move-object v0, p1

    .line 90
    check-cast v0, Lcom/youku/usercenter/vo/UserMessage;

    iget v0, v0, Lcom/youku/usercenter/vo/UserMessage;->in_top:I

    if-ne v0, v1, :cond_4

    :goto_2
    iput v1, p0, Lcom/youku/usercenter/vo/MessageWrapper;->display_type:I

    .line 91
    check-cast p1, Lcom/youku/usercenter/vo/UserMessage;

    .end local p1    # "msgObj":Ljava/lang/Object;
    iget-boolean v0, p1, Lcom/youku/usercenter/vo/UserMessage;->isExpried:Z

    iput-boolean v0, p0, Lcom/youku/usercenter/vo/MessageWrapper;->isExpried:Z

    goto :goto_1

    .restart local p1    # "msgObj":Ljava/lang/Object;
    :cond_4
    move v1, v3

    .line 90
    goto :goto_2
.end method

.method public static genFromDeviceJson(Lorg/json/JSONObject;)Lc8/Xro;
    .locals 6
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 184
    if-nez p0, :cond_1

    .line 185
    const/4 v1, 0x0

    .line 231
    :cond_0
    :goto_0
    return-object v1

    .line 187
    :cond_1
    new-instance v1, Lc8/Xro;

    invoke-direct {v1}, Lc8/Xro;-><init>()V

    .line 188
    .local v1, "msg":Lc8/Xro;
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->jsonStr:Ljava/lang/String;

    .line 189
    const-string/jumbo v4, "push_time"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lc8/Xro;->push_time:J

    .line 190
    const-string/jumbo v4, "status"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lc8/Xro;->status:I

    .line 191
    const-string/jumbo v4, "icon"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->icon:Ljava/lang/String;

    .line 192
    const-string/jumbo v4, "contents"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 193
    .local v0, "contentObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 194
    const-string/jumbo v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 195
    .local v3, "type":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 196
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v1, Lc8/Xro;->type:I

    .line 198
    :cond_2
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->title:Ljava/lang/String;

    .line 199
    const-string/jumbo v4, "content"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->content:Ljava/lang/String;

    .line 200
    const-string/jumbo v4, "videoid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->videoid:Ljava/lang/String;

    .line 201
    const-string/jumbo v4, "showId"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->showId:Ljava/lang/String;

    .line 202
    const-string/jumbo v4, "img"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->img:Ljava/lang/String;

    .line 203
    const-string/jumbo v4, "mid"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->mid:Ljava/lang/String;

    .line 204
    const-string/jumbo v4, "desc"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->desc:Ljava/lang/String;

    .line 205
    const-string/jumbo v4, "url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->url:Ljava/lang/String;

    .line 207
    const-string/jumbo v4, "game_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->game_id:Ljava/lang/String;

    .line 208
    const-string/jumbo v4, "pkg_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, "packagename":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "packagename"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "packagename":Ljava/lang/String;
    :cond_3
    iput-object v2, v1, Lc8/Xro;->pkg_name:Ljava/lang/String;

    .line 210
    const-string/jumbo v4, "md5"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->md5:Ljava/lang/String;

    .line 211
    const-string/jumbo v4, "cls_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->cls_name:Ljava/lang/String;

    .line 212
    const-string/jumbo v4, "ver_code"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string/jumbo v5, "versioncode"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v1, Lc8/Xro;->ver_code:I

    .line 213
    const-string/jumbo v4, "ver_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->ver_name:Ljava/lang/String;

    .line 214
    const-string/jumbo v4, "game_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->game_type:Ljava/lang/String;

    .line 215
    const-string/jumbo v4, "com_app_name"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->com_app_name:Ljava/lang/String;

    .line 216
    const-string/jumbo v4, "toast_img"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->toast_img:Ljava/lang/String;

    .line 217
    const-string/jumbo v4, "toast_msg"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->toast_msg:Ljava/lang/String;

    .line 218
    const-string/jumbo v4, "updateurl"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->updateurl:Ljava/lang/String;

    .line 219
    const-string/jumbo v4, "updateversion"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->updateversion:Ljava/lang/String;

    .line 220
    const-string/jumbo v4, "updatecontent"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->updatecontent:Ljava/lang/String;

    .line 221
    const-string/jumbo v4, "viem_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->view_type:Ljava/lang/String;

    .line 222
    iget-object v4, v1, Lc8/Xro;->view_type:Ljava/lang/String;

    invoke-static {v4}, Lc8/wro;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    const-string/jumbo v4, "view_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->view_type:Ljava/lang/String;

    .line 225
    :cond_4
    const-string/jumbo v4, "live_id"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->live_id:Ljava/lang/String;

    .line 226
    const-string/jumbo v4, "live_title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->live_title:Ljava/lang/String;

    .line 227
    const-string/jumbo v4, "live_img"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->live_img:Ljava/lang/String;

    .line 228
    const-string/jumbo v4, "live_url"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->live_url:Ljava/lang/String;

    .line 229
    const-string/jumbo v4, "recommend_type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lc8/Xro;->recommend_type:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public static genFromUserJson(Lorg/json/JSONObject;)Lcom/youku/usercenter/vo/UserMessage;
    .locals 8
    .param p0, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    const/4 v4, 0x1

    .line 118
    if-nez p0, :cond_1

    .line 119
    const/4 v3, 0x0

    .line 174
    :cond_0
    :goto_0
    return-object v3

    .line 121
    :cond_1
    new-instance v3, Lcom/youku/usercenter/vo/UserMessage;

    invoke-direct {v3}, Lcom/youku/usercenter/vo/UserMessage;-><init>()V

    .line 122
    .local v3, "userMessage":Lcom/youku/usercenter/vo/UserMessage;
    move-object v2, p0

    .line 123
    .local v2, "msgJsonObject":Lorg/json/JSONObject;
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/usercenter/vo/UserMessage;->jsonStr:Ljava/lang/String;

    .line 124
    const-string/jumbo v5, "msgid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->msgid:J

    .line 125
    const-string/jumbo v5, "type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->type:I

    .line 126
    const-string/jumbo v5, "notify_type"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->notify_type:I

    .line 127
    const-string/jumbo v5, "red_point"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->red_point:I

    .line 128
    const-string/jumbo v5, "badge_num"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->badge_num:I

    .line 129
    const-string/jumbo v5, "toid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->toid:J

    .line 130
    const-string/jumbo v5, "display"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->display:I

    .line 131
    const-string/jumbo v5, "term"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->term:I

    .line 132
    const-string/jumbo v5, "tplid"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->tplid:I

    .line 133
    const-string/jumbo v5, "status"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->status:I

    .line 134
    const-string/jumbo v5, "expire_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->expire_time:J

    .line 135
    const-string/jumbo v5, "access_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->access_time:J

    .line 136
    const-string/jumbo v5, "u_insert_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->u_insert_time:J

    .line 137
    const-string/jumbo v5, "u_update_time"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/youku/usercenter/vo/UserMessage;->u_update_time:J

    .line 139
    const-string/jumbo v5, "fade"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->fade:I

    .line 140
    const-string/jumbo v5, "icon"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/usercenter/vo/UserMessage;->icon:Ljava/lang/String;

    .line 141
    const-string/jumbo v5, "in_top"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/youku/usercenter/vo/UserMessage;->in_top:I

    .line 142
    const-string/jumbo v5, "page_name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/youku/usercenter/vo/UserMessage;->page_name:Ljava/lang/String;

    .line 143
    const-string/jumbo v5, "expired_link"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_4

    :goto_1
    iput-boolean v4, v3, Lcom/youku/usercenter/vo/UserMessage;->isExpried:Z

    .line 144
    const-string/jumbo v4, "content"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 145
    .local v0, "contentObject":Lorg/json/JSONObject;
    if-eqz v0, :cond_2

    .line 146
    const-string/jumbo v4, "title"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->title:Ljava/lang/String;

    .line 147
    const-string/jumbo v4, "ifo"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->desc:Ljava/lang/String;

    .line 148
    const-string/jumbo v4, "btnname"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->btnname:Ljava/lang/String;

    .line 149
    const-string/jumbo v4, "link"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->link:Ljava/lang/String;

    .line 150
    const-string/jumbo v4, "img"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->img:Ljava/lang/String;

    .line 153
    :cond_2
    const-string/jumbo v4, "jump"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 154
    .local v1, "jumpObject":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    .line 155
    const-string/jumbo v4, "jump_type"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/youku/usercenter/vo/UserMessage;->jump_type:I

    .line 156
    const-string/jumbo v4, "showId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->showId:Ljava/lang/String;

    .line 158
    const-string/jumbo v4, "showId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->showId:Ljava/lang/String;

    .line 159
    const-string/jumbo v4, "videoid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->videoid:Ljava/lang/String;

    .line 160
    iget-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->videoid:Ljava/lang/String;

    invoke-static {v4}, Lc8/wro;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    const-string/jumbo v4, "vid"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->videoid:Ljava/lang/String;

    .line 163
    :cond_3
    const-string/jumbo v4, "jump_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->jump_url:Ljava/lang/String;

    .line 164
    const-string/jumbo v4, "live_id"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->live_id:Ljava/lang/String;

    .line 165
    const-string/jumbo v4, "live_title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->live_title:Ljava/lang/String;

    .line 166
    const-string/jumbo v4, "live_img"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->live_img:Ljava/lang/String;

    .line 167
    const-string/jumbo v4, "live_url"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->live_url:Ljava/lang/String;

    .line 168
    const-string/jumbo v4, "jump_title"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->jump_title:Ljava/lang/String;

    .line 169
    const-string/jumbo v4, "jump_ifo"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->jump_ifo:Ljava/lang/String;

    .line 170
    const-string/jumbo v4, "jump_btn"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->jump_btn:Ljava/lang/String;

    .line 171
    const-string/jumbo v4, "topicId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->topicId:Ljava/lang/String;

    .line 172
    const-string/jumbo v4, "topicTitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/youku/usercenter/vo/UserMessage;->topicTitle:Ljava/lang/String;

    goto/16 :goto_0

    .line 143
    .end local v0    # "contentObject":Lorg/json/JSONObject;
    .end local v1    # "jumpObject":Lorg/json/JSONObject;
    :cond_4
    const/4 v4, 0x0

    goto/16 :goto_1
.end method

.method public static final getFromJson(Lorg/json/JSONObject;I)Lcom/youku/usercenter/vo/MessageWrapper;
    .locals 3
    .param p0, "jsonObject"    # Lorg/json/JSONObject;
    .param p1, "type"    # I

    .prologue
    .line 102
    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    .line 103
    invoke-static {p0}, Lcom/youku/usercenter/vo/MessageWrapper;->genFromDeviceJson(Lorg/json/JSONObject;)Lc8/Xro;

    move-result-object v0

    .line 104
    .local v0, "deviceMessage":Lc8/Xro;
    new-instance v2, Lcom/youku/usercenter/vo/MessageWrapper;

    invoke-direct {v2, v0}, Lcom/youku/usercenter/vo/MessageWrapper;-><init>(Ljava/lang/Object;)V

    .line 107
    .end local v0    # "deviceMessage":Lc8/Xro;
    :goto_0
    return-object v2

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/youku/usercenter/vo/MessageWrapper;->genFromUserJson(Lorg/json/JSONObject;)Lcom/youku/usercenter/vo/UserMessage;

    move-result-object v1

    .line 107
    .local v1, "userMessage":Lcom/youku/usercenter/vo/UserMessage;
    new-instance v2, Lcom/youku/usercenter/vo/MessageWrapper;

    invoke-direct {v2, v1}, Lcom/youku/usercenter/vo/MessageWrapper;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method
