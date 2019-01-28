.class public Lcom/youku/service/push/PushMsg;
.super Ljava/lang/Object;
.source "PushMsg.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/youku/service/push/PushMsg$SchemeActionItem;
    }
.end annotation


# static fields
.field public static final CTYPE_ALIPAY:Ljava/lang/String; = "zfbs"

.field public static final CTYPE_YK:Ljava/lang/String; = "yks"

.field public static final TYPE_CUSTOM:I = 0x3

.field public static final TYPE_DOWNLOAD_APP:I = 0x9

.field public static final TYPE_DOWNLOAD_GAME:I = 0xb

.field public static final TYPE_FORCE_NOTIFICATION:I = 0x16

.field public static final TYPE_GAME1:I = 0x5

.field public static final TYPE_GAME2:I = 0x6

.field public static final TYPE_GAME3:I = 0x7

.field public static final TYPE_INSTALL_APP:I = 0xa

.field public static final TYPE_INSTALL_GAME:I = 0xc

.field public static final TYPE_LIVE_TELECAST:I = 0x8

.field public static final TYPE_NEWVIDEO:I = 0x4

.field public static final TYPE_PRE_CACHE:I = 0x12

.field public static final TYPE_SCHEDULE_NOTIFY:I = 0x13

.field public static final TYPE_SCHEME:I = 0xd

.field public static final TYPE_SCHEME_PLANET:I = 0x15

.field public static final TYPE_TAB:I = 0x10

.field public static final TYPE_TOUTIAO:I = 0xf

.field public static final TYPE_UPDATE:I = 0x1

.field private static final serialVersionUID:J = -0x16ad6952686372fdL


# instance fields
.field public actionItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/youku/service/push/PushMsg$SchemeActionItem;",
            ">;"
        }
    .end annotation
.end field

.field public agooID:Ljava/lang/String;

.field public channelType:Ljava/lang/String;

.field public cls_name:Ljava/lang/String;

.field public com_app_name:Ljava/lang/String;

.field public content:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public game_id:Ljava/lang/String;

.field public game_type:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public imageurl:Ljava/lang/String;

.field public img:Ljava/lang/String;

.field public jsonStr:Ljava/lang/String;

.field public live_id:Ljava/lang/String;

.field public live_img:Ljava/lang/String;

.field public live_title:Ljava/lang/String;

.field public live_url:Ljava/lang/String;

.field public md5:Ljava/lang/String;

.field public mid:Ljava/lang/String;

.field public pkg_name:Ljava/lang/String;

.field public priority:I

.field public showId:Ljava/lang/String;

.field public showname:Ljava/lang/String;

.field public source:Ljava/lang/String;

.field public source_type:I

.field public tab:I

.field public title:Ljava/lang/String;

.field public toast_img:Ljava/lang/String;

.field public toast_msg:Ljava/lang/String;

.field public top_vids:Ljava/lang/String;

.field public type:I

.field public updatecontent:Ljava/lang/String;

.field public updateurl:Ljava/lang/String;

.field public updateversion:Ljava/lang/String;

.field public url:Ljava/lang/String;

.field public ver_code:I

.field public ver_name:Ljava/lang/String;

.field public videoid:Ljava/lang/String;

.field public view_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    .line 336
    return-void
.end method

.method public static final parse(Ljava/lang/String;)Lcom/youku/service/push/PushMsg;
    .locals 10
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 261
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 333
    :cond_0
    :goto_0
    return-object v4

    .line 264
    :cond_1
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .local v5, "o":Lorg/json/JSONObject;
    new-instance v4, Lcom/youku/service/push/PushMsg;

    invoke-direct {v4}, Lcom/youku/service/push/PushMsg;-><init>()V

    .line 271
    .local v4, "msg":Lcom/youku/service/push/PushMsg;
    iput-object p0, v4, Lcom/youku/service/push/PushMsg;->jsonStr:Ljava/lang/String;

    .line 272
    const-string/jumbo v8, "type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/youku/service/push/PushMsg;->type:I

    .line 273
    const-string/jumbo v8, "title"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->title:Ljava/lang/String;

    .line 274
    const-string/jumbo v8, "content"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->content:Ljava/lang/String;

    .line 275
    const-string/jumbo v8, "videoid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->videoid:Ljava/lang/String;

    .line 276
    const-string/jumbo v8, "showId"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->showId:Ljava/lang/String;

    .line 277
    const-string/jumbo v8, "imageurl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->imageurl:Ljava/lang/String;

    .line 278
    const-string/jumbo v8, "img"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->img:Ljava/lang/String;

    .line 279
    const-string/jumbo v8, "mid"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->mid:Ljava/lang/String;

    .line 280
    const-string/jumbo v8, "showname"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->showname:Ljava/lang/String;

    .line 281
    const-string/jumbo v8, "desc"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->desc:Ljava/lang/String;

    .line 282
    const-string/jumbo v8, "url"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->url:Ljava/lang/String;

    .line 284
    const-string/jumbo v8, "game_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->game_id:Ljava/lang/String;

    .line 285
    const-string/jumbo v8, "pkg_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 286
    .local v7, "packagename":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string/jumbo v8, "packagename"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "packagename":Ljava/lang/String;
    :cond_2
    iput-object v7, v4, Lcom/youku/service/push/PushMsg;->pkg_name:Ljava/lang/String;

    .line 287
    const-string/jumbo v8, "md5"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->md5:Ljava/lang/String;

    .line 288
    const-string/jumbo v8, "cls_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->cls_name:Ljava/lang/String;

    .line 289
    const-string/jumbo v8, "ver_code"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    const-string/jumbo v9, "versioncode"

    invoke-virtual {v5, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    add-int/2addr v8, v9

    iput v8, v4, Lcom/youku/service/push/PushMsg;->ver_code:I

    .line 290
    const-string/jumbo v8, "ver_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->ver_name:Ljava/lang/String;

    .line 291
    const-string/jumbo v8, "icon"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->icon:Ljava/lang/String;

    .line 292
    const-string/jumbo v8, "game_type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->game_type:Ljava/lang/String;

    .line 293
    const-string/jumbo v8, "com_app_name"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->com_app_name:Ljava/lang/String;

    .line 294
    const-string/jumbo v8, "toast_img"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->toast_img:Ljava/lang/String;

    .line 295
    const-string/jumbo v8, "toast_msg"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->toast_msg:Ljava/lang/String;

    .line 296
    const-string/jumbo v8, "source_type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/youku/service/push/PushMsg;->source_type:I

    .line 297
    iget v8, v4, Lcom/youku/service/push/PushMsg;->type:I

    sparse-switch v8, :sswitch_data_0

    .line 329
    :cond_3
    :goto_1
    const-string/jumbo v8, "source"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->source:Ljava/lang/String;

    .line 330
    const-string/jumbo v8, "priority"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/youku/service/push/PushMsg;->priority:I

    .line 331
    const-string/jumbo v8, "top_vids"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->top_vids:Ljava/lang/String;

    .line 332
    const-string/jumbo v8, "tab"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v4, Lcom/youku/service/push/PushMsg;->tab:I

    goto/16 :goto_0

    .line 265
    .end local v4    # "msg":Lcom/youku/service/push/PushMsg;
    .end local v5    # "o":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v8, "PushMsg"

    const-string/jumbo v9, "PushMsg#parse()"

    invoke-static {v8, v9, v0}, Lc8/FWc;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 299
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v4    # "msg":Lcom/youku/service/push/PushMsg;
    .restart local v5    # "o":Lorg/json/JSONObject;
    :sswitch_0
    const-string/jumbo v8, "updateurl"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->updateurl:Ljava/lang/String;

    .line 300
    const-string/jumbo v8, "updateversion"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->updateversion:Ljava/lang/String;

    .line 301
    const-string/jumbo v8, "updatecontent"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->updatecontent:Ljava/lang/String;

    goto :goto_1

    .line 304
    :sswitch_1
    const-string/jumbo v8, "view_type"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->view_type:Ljava/lang/String;

    goto :goto_1

    .line 307
    :sswitch_2
    const-string/jumbo v8, "live_id"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->live_id:Ljava/lang/String;

    .line 308
    const-string/jumbo v8, "live_title"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->live_title:Ljava/lang/String;

    .line 309
    const-string/jumbo v8, "live_img"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->live_img:Ljava/lang/String;

    .line 310
    const-string/jumbo v8, "live_url"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/youku/service/push/PushMsg;->live_url:Ljava/lang/String;

    goto/16 :goto_1

    .line 314
    :sswitch_3
    const-string/jumbo v8, "extra_action"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 315
    .local v3, "list":Lorg/json/JSONArray;
    if-eqz v3, :cond_3

    .line 317
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_3

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .local v6, "object":Lorg/json/JSONObject;
    if-eqz v6, :cond_3

    .line 319
    const-string/jumbo v8, "action"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/youku/service/push/PushMsg$SchemeActionItem;->newInstance(Ljava/lang/String;)Lcom/youku/service/push/PushMsg$SchemeActionItem;

    move-result-object v2

    .line 320
    .local v2, "item":Lcom/youku/service/push/PushMsg$SchemeActionItem;
    const-string/jumbo v8, "desc"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/youku/service/push/PushMsg$SchemeActionItem;->desc:Ljava/lang/String;

    .line 321
    const-string/jumbo v8, "url"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/youku/service/push/PushMsg$SchemeActionItem;->url:Ljava/lang/String;

    .line 322
    iget-object v8, v4, Lcom/youku/service/push/PushMsg;->actionItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x3 -> :sswitch_1
        0x8 -> :sswitch_2
        0xd -> :sswitch_3
        0x15 -> :sswitch_3
    .end sparse-switch
.end method
