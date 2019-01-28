.class public final Lcom/alibaba/poplayer/utils/ConsoleLogger;
.super Ljava/lang/Object;
.source "ConsoleLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;,
        Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    }
.end annotation


# static fields
.field public static final LOG_TAG_OUT_CONSOLE:Ljava/lang/String; = "Out-Console"

.field public static final LOG_TAG_POPLAYER:Ljava/lang/String; = "PopLayer"

.field public static final LOG_TAG_WVPLUGIN:Ljava/lang/String; = "WindVane"

.field private static sCacheSize:I

.field private static final sLogCache:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x64

    sput v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sCacheSize:I

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    return-void
.end method

.method public static final addLog(Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;)V
    .locals 2
    .param p0, "log"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    .prologue
    .line 50
    sget v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sCacheSize:I

    sget-object v1, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 51
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 52
    :cond_0
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    invoke-virtual {v0, p0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 53
    return-void
.end method

.method public static clearLogs()V
    .locals 1

    .prologue
    .line 72
    sget-object v0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 73
    return-void
.end method

.method public static createLogDO(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    .locals 14
    .param p0, "log"    # Ljava/lang/String;
    .param p1, "level"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .prologue
    .line 80
    const-string/jumbo v0, "Out-Console"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 82
    .local v13, "strings":[Ljava/lang/String;
    const/4 v0, 0x1

    aget-object v0, v13, v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 83
    .local v12, "levelSign":C
    const-string/jumbo v0, "%s.%s."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "Out-Console"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "mutiContent":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    const-string/jumbo v1, "Out-Console"

    invoke-static {v12}, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->find(C)Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .end local v2    # "mutiContent":Ljava/lang/String;
    .end local v12    # "levelSign":C
    .end local v13    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 85
    :cond_0
    const-string/jumbo v0, "WindVane"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string/jumbo v0, "%s."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "WindVane"

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 87
    .local v5, "content":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    const-string/jumbo v4, "WindVane"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto :goto_0

    .line 89
    .end local v5    # "content":Ljava/lang/String;
    :cond_1
    new-instance v6, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    const-string/jumbo v7, "PopLayer"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v8, p0

    move-object v9, p1

    invoke-direct/range {v6 .. v11}, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_0
.end method

.method public static encodeLayerConsoleLogInfo(Ljava/lang/String;Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;)Ljava/lang/String;
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "level"    # Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;

    .prologue
    .line 110
    const-string/jumbo v0, "%s.%s.%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string/jumbo v3, "Out-Console"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-char v3, p1, Lcom/alibaba/poplayer/utils/ConsoleLogger$Level;->sign:C

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeWindvaneInfo(Landroid/taobao/windvane/jsbridge/WVCallMethodContext;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "wvMethod"    # Landroid/taobao/windvane/jsbridge/WVCallMethodContext;
    .param p1, "retString"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const-string/jumbo v0, "%s.WVPlugin{%s}.method{%s}.call.params{%s}"

    new-array v1, v7, [Ljava/lang/Object;

    const-string/jumbo v2, "WindVane"

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    aput-object v2, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "%s.WVPlugin{%s}.method{%s}.callback.params{%s}.result{%s}"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v2, "WindVane"

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->objectName:Ljava/lang/String;

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->methodName:Ljava/lang/String;

    aput-object v2, v1, v5

    iget-object v2, p0, Landroid/taobao/windvane/jsbridge/WVCallMethodContext;->params:Ljava/lang/String;

    aput-object v2, v1, v6

    aput-object p1, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getLogsByTag(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "All"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    :cond_0
    sget-object v2, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    .line 68
    :cond_1
    return-object v2

    .line 63
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;>;"
    sget-object v3, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sLogCache:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;

    .line 65
    .local v1, "log":Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;
    iget-object v3, v1, Lcom/alibaba/poplayer/utils/ConsoleLogger$LogDO;->tag:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 66
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static setCacheSize(I)V
    .locals 1
    .param p0, "logNum"    # I

    .prologue
    .line 56
    if-gez p0, :cond_1

    sget p0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sCacheSize:I

    .end local p0    # "logNum":I
    :cond_0
    :goto_0
    sput p0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sCacheSize:I

    .line 57
    return-void

    .line 56
    .restart local p0    # "logNum":I
    :cond_1
    const/16 v0, 0x1f4

    if-le p0, v0, :cond_0

    sget p0, Lcom/alibaba/poplayer/utils/ConsoleLogger;->sCacheSize:I

    goto :goto_0
.end method
