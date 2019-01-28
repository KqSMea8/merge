.class public Lc8/TE;
.super Lc8/RD;
.source "WVContacts.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/SE;
    }
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "name"

.field private static final KEY_PHONE:Ljava/lang/String; = "phone"

.field private static final PHONES_PROJECTION:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "WVContacts"


# instance fields
.field private mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lc8/TE;->PHONES_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lc8/RD;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 324
    return-void
.end method

.method static synthetic access$000(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p0, "x0"    # Lc8/TE;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lc8/TE;->choose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method

.method static synthetic access$100(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p0, "x0"    # Lc8/TE;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lc8/TE;->find(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method

.method static synthetic access$200(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 0
    .param p0, "x0"    # Lc8/TE;
    .param p1, "x1"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lc8/TE;->authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    return-void
.end method

.method static synthetic access$300(Lc8/TE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/TE;

    .prologue
    .line 42
    iget-object v0, p0, Lc8/TE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 2
    .param p1, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 204
    new-instance v0, Lc8/RE;

    invoke-direct {v0, p0, p1}, Lc8/RE;-><init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lc8/RE;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 230
    return-void
.end method

.method private choose(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 5
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 145
    iput-object p2, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.PICK"

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 147
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lc8/TE;->mContext:Landroid/content/Context;

    instance-of v2, v2, Landroid/app/Activity;

    if-eqz v2, :cond_0

    .line 149
    :try_start_0
    iget-object v2, p0, Lc8/TE;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    const/16 v3, 0xfa3

    invoke-virtual {v2, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WVContacts"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "open pick activity fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error()V

    goto :goto_0
.end method

.method private find(Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V
    .locals 15
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    .line 164
    const/4 v4, 0x0

    .line 165
    .local v4, "filterName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 167
    .local v5, "filterNumber":Ljava/lang/String;
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v8, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v12, "filter"

    invoke-virtual {v8, v12}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 169
    .local v3, "filter":Lorg/json/JSONObject;
    if-eqz v3, :cond_0

    .line 170
    const-string/jumbo v12, "name"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 171
    const-string/jumbo v12, "phone"

    invoke-virtual {v3, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 176
    .end local v3    # "filter":Lorg/json/JSONObject;
    .end local v8    # "jsObj":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const/4 v12, 0x0

    invoke-direct {p0, v12, v4, v5}, Lc8/TE;->getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 177
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    if-nez v9, :cond_1

    .line 178
    const-string/jumbo v12, "WVContacts"

    const-string/jumbo v13, "find contacts failed"

    invoke-static {v12, v13}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    new-instance v12, Lc8/kE;

    invoke-direct {v12}, Lc8/kE;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    .line 196
    :goto_1
    return-void

    .line 174
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    :catch_0
    move-exception v12

    const-string/jumbo v12, "WVContacts"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "find contacts when parse params to JSON error, params="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    :cond_1
    new-instance v11, Lc8/kE;

    invoke-direct {v11}, Lc8/kE;-><init>()V

    .line 183
    .local v11, "result":Lc8/kE;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 185
    .local v1, "array":Lorg/json/JSONArray;
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc8/SE;

    .line 186
    .local v7, "info":Lc8/SE;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v10, "object":Lorg/json/JSONObject;
    const-string/jumbo v12, "name"

    iget-object v13, v7, Lc8/SE;->name:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string/jumbo v12, "phone"

    iget-object v13, v7, Lc8/SE;->number:Ljava/lang/String;

    invoke-virtual {v10, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 191
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "info":Lc8/SE;
    .end local v10    # "object":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 192
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v12, "WVContacts"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "put contacts error, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_2
    const-string/jumbo v12, "contacts"

    invoke-virtual {v11, v12, v1}, Lc8/kE;->addData(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 195
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_1
.end method

.method private getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "filterName"    # Ljava/lang/String;
    .param p3, "filterNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lc8/SE;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    const-string/jumbo v0, "WVContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "contactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " filterName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " filterNumber: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    const/4 v6, 0x0

    .line 275
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 276
    const-string/jumbo v3, "_id= ?"

    .line 277
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    .line 289
    .local v4, "mSelectionArgs":[Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lc8/TE;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lc8/TE;->PHONES_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 291
    if-nez v6, :cond_5

    .line 293
    const/4 v9, 0x0

    .line 312
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    if-eqz v6, :cond_1

    .line 314
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v9

    .line 278
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    :cond_2
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 279
    const-string/jumbo v3, "display_name like ? AND data1 like ?"

    .line 281
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    goto :goto_0

    .line 282
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 283
    const-string/jumbo v3, "display_name like ?"

    .line 284
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 286
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    :cond_4
    const-string/jumbo v3, "data1 like ?"

    .line 287
    .restart local v3    # "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    goto/16 :goto_0

    .line 315
    .end local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    :catch_0
    move-exception v7

    .line 317
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 296
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v9    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "find contacts record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 298
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 299
    .local v10, "name":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 300
    .local v11, "number":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 301
    :cond_6
    new-instance v8, Lc8/SE;

    const/4 v0, 0x0

    invoke-direct {v8, p0, v0}, Lc8/SE;-><init>(Lc8/TE;Lc8/IE;)V

    .line 302
    .local v8, "info":Lc8/SE;
    iput-object v10, v8, Lc8/SE;->name:Ljava/lang/String;

    .line 303
    iput-object v11, v8, Lc8/SE;->number:Ljava/lang/String;

    .line 304
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    .end local v8    # "info":Lc8/SE;
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "displayName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " phoneNumber: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 309
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    .end local v11    # "number":Ljava/lang/String;
    :catch_1
    move-exception v7

    .line 310
    .restart local v7    # "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v0, "WVContacts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "query phone error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 312
    if-eqz v6, :cond_8

    .line 314
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 321
    :cond_8
    :goto_3
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 312
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v3    # "selection":Ljava/lang/String;
    .restart local v4    # "mSelectionArgs":[Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_1

    .line 314
    :try_start_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 315
    :catch_2
    move-exception v7

    .line 317
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 315
    .end local v3    # "selection":Ljava/lang/String;
    .end local v4    # "mSelectionArgs":[Ljava/lang/String;
    :catch_3
    move-exception v7

    .line 317
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 312
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_a

    .line 314
    :try_start_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 318
    :cond_a
    :goto_4
    throw v0

    .line 315
    :catch_4
    move-exception v7

    .line 317
    .restart local v7    # "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4
.end method


# virtual methods
.method public execute(Ljava/lang/String;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)Z
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 53
    const-string/jumbo v4, "choose"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    :try_start_0
    iget-object v2, p0, Lc8/TE;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/KE;

    invoke-direct {v4, p0, p2, p3}, Lc8/KE;-><init>(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/IE;

    invoke-direct {v4, p0, p3}, Lc8/IE;-><init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iH;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 134
    :goto_0
    invoke-static {}, Lc8/qH;->getInstance()Lc8/qH;

    move-result-object v2

    const/16 v4, 0xbc6

    invoke-virtual {v2, v4}, Lc8/qH;->onEvent(I)Landroid/taobao/windvane/service/WVEventResult;

    move v2, v3

    .line 135
    :cond_0
    return v2

    .line 75
    :cond_1
    const-string/jumbo v4, "find"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 77
    :try_start_1
    iget-object v2, p0, Lc8/TE;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/NE;

    invoke-direct {v4, p0, p2, p3}, Lc8/NE;-><init>(Lc8/TE;Ljava/lang/String;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/LE;

    invoke-direct {v4, p0, p3}, Lc8/LE;-><init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iH;->execute()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 96
    :catch_0
    move-exception v2

    goto :goto_0

    .line 97
    :cond_2
    const-string/jumbo v4, "authStatus"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    const/4 v0, 0x1

    .line 100
    .local v0, "autoAskAuth":Z
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v1, "jsObj":Lorg/json/JSONObject;
    const-string/jumbo v2, "autoAskAuth"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 105
    .end local v1    # "jsObj":Lorg/json/JSONObject;
    :goto_1
    if-nez v0, :cond_3

    .line 106
    invoke-direct {p0, p3}, Lc8/TE;->authStatus(Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    goto :goto_0

    .line 103
    :catch_1
    move-exception v2

    const-string/jumbo v2, "WVContacts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "authStatus when parse params to JSON error, params="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 109
    :cond_3
    :try_start_3
    iget-object v2, p0, Lc8/TE;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "android.permission.READ_CONTACTS"

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lc8/jH;->buildPermissionTask(Landroid/content/Context;[Ljava/lang/String;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/QE;

    invoke-direct {v4, p0, p3}, Lc8/QE;-><init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionGranted(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    new-instance v4, Lc8/OE;

    invoke-direct {v4, p0, p3}, Lc8/OE;-><init>(Lc8/TE;Landroid/taobao/windvane/jsbridge/WVCallBackContext;)V

    invoke-virtual {v2, v4}, Lc8/iH;->setTaskOnPermissionDenied(Ljava/lang/Runnable;)Lc8/iH;

    move-result-object v2

    invoke-virtual {v2}, Lc8/iH;->execute()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 131
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 74
    .end local v0    # "autoAskAuth":Z
    :catch_3
    move-exception v2

    goto/16 :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 234
    const/16 v5, 0xfa3

    if-ne p1, v5, :cond_1

    iget-object v5, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    if-eqz v5, :cond_1

    .line 235
    const/4 v5, -0x1

    if-ne p2, v5, :cond_5

    .line 237
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .local v0, "contact":Landroid/net/Uri;
    if-nez v0, :cond_2

    .line 238
    .end local v0    # "contact":Landroid/net/Uri;
    :cond_0
    const-string/jumbo v5, "WVContacts"

    const-string/jumbo v6, "contact data is null"

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :cond_1
    :goto_0
    return-void

    .line 241
    .restart local v0    # "contact":Landroid/net/Uri;
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "contactId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 243
    invoke-direct {p0, v1, v6, v6}, Lc8/TE;->getPhoneContacts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 245
    :cond_3
    const-string/jumbo v5, "WVContacts"

    const-string/jumbo v6, "contact result is empty"

    invoke-static {v5, v6}, Lc8/ZH;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v5, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    invoke-virtual {v5, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0

    .line 249
    :cond_4
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc8/SE;

    .line 250
    .local v2, "info":Lc8/SE;
    iget-object v5, v2, Lc8/SE;->number:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 251
    new-instance v4, Lc8/kE;

    invoke-direct {v4}, Lc8/kE;-><init>()V

    .line 252
    .local v4, "result":Lc8/kE;
    const-string/jumbo v5, "name"

    iget-object v6, v2, Lc8/SE;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string/jumbo v5, "phone"

    iget-object v6, v2, Lc8/SE;->number:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lc8/kE;->addData(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    invoke-virtual {v5, v4}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->success(Lc8/kE;)V

    goto :goto_0

    .line 259
    .end local v0    # "contact":Landroid/net/Uri;
    .end local v1    # "contactId":Ljava/lang/String;
    .end local v2    # "info":Lc8/SE;
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/taobao/windvane/jsbridge/api/WVContacts$ContactInfo;>;"
    .end local v4    # "result":Lc8/kE;
    :cond_5
    invoke-static {}, Lc8/ZH;->getLogStatus()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 260
    const-string/jumbo v5, "WVContacts"

    const-string/jumbo v6, "choose contact failed"

    invoke-static {v5, v6}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :cond_6
    iget-object v5, p0, Lc8/TE;->mCallback:Landroid/taobao/windvane/jsbridge/WVCallBackContext;

    new-instance v6, Lc8/kE;

    invoke-direct {v6}, Lc8/kE;-><init>()V

    invoke-virtual {v5, v6}, Landroid/taobao/windvane/jsbridge/WVCallBackContext;->error(Lc8/kE;)V

    goto :goto_0
.end method
