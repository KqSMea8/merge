.class public Lc8/MAb;
.super Ljava/lang/Object;
.source "ExceptionEventBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;
    }
.end annotation


# static fields
.field private static final AP_MODULE:Ljava/lang/String; = "APPMONITOR"

.field private static final AP_MONITOR_POINT:Ljava/lang/String; = "sdk-exception"

.field private static final UT_COMMON_MONITOR_POINT:Ljava/lang/String; = "ut-common-exception"

.field private static final UT_MONITOR_POINT:Ljava/lang/String; = "ut-exception"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method

.method private static getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 8
    .param p0, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .local v4, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    .line 99
    .local v6, "stackTraces":[Ljava/lang/StackTraceElement;
    if-eqz v6, :cond_0

    .line 100
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v3, v6

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 101
    .local v5, "stackTrace":Ljava/lang/StackTraceElement;
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v0    # "arr$":[Ljava/lang/StackTraceElement;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v5    # "stackTrace":Ljava/lang/StackTraceElement;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "errorMsg":Ljava/lang/String;
    invoke-static {v1}, Lc8/aCb;->isBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 106
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 108
    :cond_1
    return-object v1
.end method

.method private static getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    .prologue
    .line 55
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->UT:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    if-ne v0, p0, :cond_0

    .line 56
    const-string/jumbo v0, "ut-exception"

    .line 60
    :goto_0
    return-object v0

    .line 57
    :cond_0
    sget-object v0, Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;->COMMON:Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;

    if-ne v0, p0, :cond_1

    .line 58
    const-string/jumbo v0, "ut-common-exception"

    goto :goto_0

    .line 60
    :cond_1
    const-string/jumbo v0, "sdk-exception"

    goto :goto_0
.end method

.method public static log(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)V
    .locals 8
    .param p0, "type"    # Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 33
    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v5

    const-class v6, Lc8/hEb;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v4

    check-cast v4, Lc8/hEb;

    .line 35
    .local v4, "utEvent":Lc8/hEb;
    sget-object v5, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getEventId()I

    move-result v5

    iput v5, v4, Lc8/hEb;->eventId:I

    .line 36
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v2, "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "meta"

    invoke-static {}, Lc8/TDb;->getSDKMetaData()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v5

    const-class v6, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v1

    check-cast v1, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;

    .line 39
    .local v1, "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    invoke-static {p0, p1}, Lc8/MAb;->simulateDumpAlarmEvent(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/alibaba/appmonitor/pool/ReuseJSONArray;->add(Ljava/lang/Object;)Z

    .line 40
    const-string/jumbo v5, "data"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v5, Lcom/alibaba/appmonitor/event/EventType;->ALARM:Lcom/alibaba/appmonitor/event/EventType;

    invoke-virtual {v5}, Lcom/alibaba/appmonitor/event/EventType;->getAggregateEventArgsKey()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "aggregateEventArgsKey":Ljava/lang/String;
    iget-object v5, v4, Lc8/hEb;->args:Ljava/util/Map;

    invoke-static {v2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string/jumbo v5, "APPMONITOR"

    iput-object v5, v4, Lc8/hEb;->arg1:Ljava/lang/String;

    .line 44
    invoke-static {p0}, Lc8/MAb;->getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lc8/hEb;->arg2:Ljava/lang/String;

    .line 45
    invoke-static {v4}, Lc8/HEb;->sendAppException(Lc8/hEb;)V

    .line 46
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v5

    invoke-virtual {v5, v1}, Lc8/vEb;->offer(Lc8/xEb;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .end local v0    # "aggregateEventArgsKey":Ljava/lang/String;
    .end local v1    # "array":Lcom/alibaba/appmonitor/pool/ReuseJSONArray;
    .end local v2    # "eventInfo":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4    # "utEvent":Lc8/hEb;
    :cond_0
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v3

    .line 49
    .local v3, "tt":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private static simulateDumpAlarmEvent(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;Ljava/lang/Throwable;)Lcom/alibaba/fastjson/JSONObject;
    .locals 9
    .param p0, "type"    # Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v4

    const-class v5, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    .line 74
    .local v3, "jobject":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v4

    invoke-virtual {v4}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 75
    const-string/jumbo v4, "pname"

    invoke-static {}, Lc8/uzb;->getInstance()Lc8/uzb;

    move-result-object v5

    invoke-virtual {v5}, Lc8/uzb;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc8/uBb;->getCurProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_0
    const-string/jumbo v4, "page"

    const-string/jumbo v5, "APPMONITOR"

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v4, "monitorPoint"

    invoke-static {p0}, Lc8/MAb;->getPoint(Lcom/alibaba/analytics/core/selfmonitor/exception/ExceptionEventBuilder$ExceptionType;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v4, "arg"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v4, "successCount"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v4, "failCount"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v1, "errorInfos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/JSONObject;>;"
    invoke-static {p1}, Lc8/MAb;->getErrorMsg(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "errorMsg":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 85
    invoke-static {}, Lc8/vEb;->getInstance()Lc8/vEb;

    move-result-object v4

    const-class v5, Lcom/alibaba/appmonitor/pool/ReuseJSONObject;

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lc8/vEb;->poll(Ljava/lang/Class;[Ljava/lang/Object;)Lc8/xEb;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 86
    .local v0, "errorInfo":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "errorCode"

    invoke-virtual {v0, v4, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v4, "errorCount"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .end local v0    # "errorInfo":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    const-string/jumbo v4, "errors"

    invoke-virtual {v3, v4, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object v3
.end method
