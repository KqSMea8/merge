.class public Lc8/Cqb;
.super Lc8/MXf;
.source "WXCalendarModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/Aqb;,
        Lc8/Bqb;
    }
.end annotation


# static fields
.field static final REQUEST_CALENDAR_PERMISSION_CODE:I = 0x19

.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lc8/Cqb;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/Cqb;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lc8/MXf;-><init>()V

    .line 240
    return-void
.end method

.method static synthetic access$000(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Cqb;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Cqb;->addSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lc8/Cqb;Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "x0"    # Lc8/Cqb;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Cqb;->buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Cqb;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Cqb;->checkSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 1
    .param p0, "x0"    # Lc8/Cqb;
    .param p1, "x1"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lc8/Cqb;->removeSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z

    move-result v0

    return v0
.end method

.method private addSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 10
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 61
    :try_start_0
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "title":Ljava/lang/String;
    const-string/jumbo v0, "note"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, "note":Ljava/lang/String;
    const-string/jumbo v0, "startDate"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 64
    .local v8, "startDate":Ljava/lang/String;
    const-string/jumbo v0, "endDate"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 65
    .local v7, "endDate":Ljava/lang/String;
    const-string/jumbo v0, "timeOffset"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v9

    .line 67
    .local v9, "timeOffset":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 68
    .local v3, "c1":Ljava/util/Calendar;
    invoke-static {v8}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 71
    .local v4, "c2":Ljava/util/Calendar;
    invoke-static {v7}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 73
    iget-object v0, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v0}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    div-int/lit8 v5, v9, 0x3c

    invoke-static/range {v0 .. v5}, Lc8/yrb;->addEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 79
    .end local v1    # "title":Ljava/lang/String;
    .end local v2    # "note":Ljava/lang/String;
    .end local v3    # "c1":Ljava/util/Calendar;
    .end local v4    # "c2":Ljava/util/Calendar;
    .end local v7    # "endDate":Ljava/lang/String;
    .end local v8    # "startDate":Ljava/lang/String;
    .end local v9    # "timeOffset":I
    :goto_0
    return v0

    .line 76
    :catch_0
    move-exception v6

    .line 77
    .local v6, "e":Ljava/lang/Exception;
    sget-object v0, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v0, v6}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 175
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 176
    .local v0, "error":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v1, "result"

    const-string/jumbo v2, "WX_FAILED"

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string/jumbo v1, "message"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0
.end method

.method private checkSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 8
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 112
    :try_start_0
    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v6, "startDate"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "startDate":Ljava/lang/String;
    const-string/jumbo v6, "endDate"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "endDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 117
    .local v0, "c1":Ljava/util/Calendar;
    invoke-static {v4}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 119
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 120
    .local v1, "c2":Ljava/util/Calendar;
    invoke-static {v3}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 122
    iget-object v6, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v6}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string/jumbo v7, ""

    invoke-static {v6, v5, v7, v0, v1}, Lc8/yrb;->checkEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 123
    const/4 v6, 0x1

    .line 128
    .end local v0    # "c1":Ljava/util/Calendar;
    .end local v1    # "c2":Ljava/util/Calendar;
    .end local v3    # "endDate":Ljava/lang/String;
    .end local v4    # "startDate":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :goto_0
    return v6

    .line 125
    :catch_0
    move-exception v2

    .line 126
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 128
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private removeSingleEvent(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 7
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 156
    :try_start_0
    const-string/jumbo v6, "title"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "title":Ljava/lang/String;
    const-string/jumbo v6, "startDate"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 158
    .local v4, "startDate":Ljava/lang/String;
    const-string/jumbo v6, "endDate"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "endDate":Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 161
    .local v0, "c1":Ljava/util/Calendar;
    invoke-static {v4}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 163
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 164
    .local v1, "c2":Ljava/util/Calendar;
    invoke-static {v3}, Lc8/zrb;->parseDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 166
    iget-object v6, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v6}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5, v0, v1}, Lc8/yrb;->delEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 171
    .end local v0    # "c1":Ljava/util/Calendar;
    .end local v1    # "c2":Ljava/util/Calendar;
    .end local v3    # "endDate":Ljava/lang/String;
    .end local v4    # "startDate":Ljava/lang/String;
    .end local v5    # "title":Ljava/lang/String;
    :goto_0
    return v6

    .line 167
    :catch_0
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v6, v2}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 171
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private varargs requestPermission(Lc8/Bqb;[Ljava/lang/String;)V
    .locals 5
    .param p1, "callback"    # Lc8/Bqb;
    .param p2, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    iget-object v1, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x19

    invoke-static {v1, p2, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 184
    iget-object v1, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v1}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Lc8/Aqb;

    invoke-direct {v2, p1}, Lc8/Aqb;-><init>(Lc8/Bqb;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v4, "actionRequestPermissionsResult"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "t":Ljava/lang/Throwable;
    sget-object v1, Lc8/Cqb;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addEvent(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 36
    new-instance v0, Lc8/xqb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/xqb;-><init>(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lc8/Cqb;->requestPermission(Lc8/Bqb;[Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public checkEvent(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lc8/yqb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/yqb;-><init>(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lc8/Cqb;->requestPermission(Lc8/Bqb;[Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public checkPermission(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 8
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 194
    :try_start_0
    iget-object v6, p0, Lc8/Cqb;->mWXSDKInstance:Lc8/nVf;

    invoke-virtual {v6}, Lc8/nVf;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 195
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v3, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    const-string/jumbo v6, "permissions"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 197
    const-string/jumbo v6, "permissions"

    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v5

    .line 198
    .local v5, "tmp":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 199
    const-string/jumbo v6, "permissions.size() == 0"

    invoke-direct {p0, v6}, Lc8/Cqb;->buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    .line 230
    .end local v0    # "context":Landroid/content/Context;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "tmp":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    return-void

    .line 202
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "tmp":Lcom/alibaba/fastjson/JSONArray;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v6

    if-ge v1, v6, :cond_3

    .line 203
    invoke-virtual {v5, v1}, Lcom/alibaba/fastjson/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 204
    .local v2, "permission":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_1
    :goto_2
    packed-switch v6, :pswitch_data_0

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "undefine permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/Cqb;->buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "i":I
    .end local v2    # "permission":Ljava/lang/String;
    .end local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5    # "tmp":Lcom/alibaba/fastjson/JSONArray;
    :catch_0
    move-exception v4

    .line 228
    .local v4, "t":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/Cqb;->buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto :goto_0

    .line 204
    .end local v4    # "t":Ljava/lang/Throwable;
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v1    # "i":I
    .restart local v2    # "permission":Ljava/lang/String;
    .restart local v3    # "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "tmp":Lcom/alibaba/fastjson/JSONArray;
    :sswitch_0
    :try_start_1
    const-string/jumbo v7, "read"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x0

    goto :goto_2

    :sswitch_1
    const-string/jumbo v7, "write"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    .line 206
    :pswitch_0
    const-string/jumbo v6, "android.permission.READ_CALENDAR"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 209
    :pswitch_1
    const-string/jumbo v6, "android.permission.WRITE_CALENDAR"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 217
    .end local v1    # "i":I
    .end local v2    # "permission":Ljava/lang/String;
    .end local v5    # "tmp":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    const-string/jumbo v6, "android.permission.READ_CALENDAR"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    const-string/jumbo v6, "android.permission.WRITE_CALENDAR"

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .restart local v2    # "permission":Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_4

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "no permission: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lc8/Cqb;->buildError(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v6

    invoke-interface {p3, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 226
    .end local v2    # "permission":Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    invoke-interface {p2, v6}, Lc8/EWf;->invoke(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 204
    :sswitch_data_0
    .sparse-switch
        0x355996 -> :sswitch_0
        0x6c257df -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeEvent(Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V
    .locals 4
    .param p1, "options"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "success"    # Lc8/EWf;
    .param p3, "failure"    # Lc8/EWf;
    .annotation runtime Lc8/KVf;
    .end annotation

    .prologue
    .line 133
    new-instance v0, Lc8/zqb;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/zqb;-><init>(Lc8/Cqb;Lcom/alibaba/fastjson/JSONObject;Lc8/EWf;Lc8/EWf;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lc8/Cqb;->requestPermission(Lc8/Bqb;[Ljava/lang/String;)V

    .line 152
    return-void
.end method
