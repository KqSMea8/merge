.class public abstract Lc8/eYb;
.super Ljava/lang/Object;
.source "AConfigManager.java"


# annotations
.annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetClass;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cYb;,
        Lc8/dYb;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ConfigItemType:",
        "Lcom/alibaba/poplayer/trigger/BaseConfigItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final KEY_BLACK_LIST:Ljava/lang/String; = "poplayer_black_list"


# instance fields
.field private final mBlackListKey:Ljava/lang/String;

.field private mConfigAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

.field private final mConfigSetKey:Ljava/lang/String;

.field protected mCurrentBlackList:Ljava/util/List;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "black_list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mCurrentConfigItems:Ljava/util/List;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "config_items"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TConfigItemType;>;"
        }
    .end annotation
.end field

.field protected mCurrentConfigSet:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/poplayer/utils/Monitor$TargetField;
        name = "config_set"
    .end annotation
.end field

.field protected mPopLayer:Lcom/alibaba/poplayer/PopLayer;

.field private mTask:Lc8/cYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc8/eYb",
            "<TConfigItemType;>.UpdateCacheConfigTask;"
        }
    .end annotation
.end field

.field private volatile mUpdatingConfig:Z


# direct methods
.method public constructor <init>(Lcom/alibaba/poplayer/norm/IConfigAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "configAdapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p2, "configSetKey"    # Ljava/lang/String;
    .param p3, "blackListKey"    # Ljava/lang/String;

    .prologue
    .line 56
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/eYb;->mCurrentConfigSet:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/eYb;->mCurrentConfigItems:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lc8/eYb;->mCurrentBlackList:Ljava/util/List;

    .line 57
    iput-object p1, p0, Lc8/eYb;->mConfigAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    .line 58
    iput-object p2, p0, Lc8/eYb;->mConfigSetKey:Ljava/lang/String;

    .line 59
    iput-object p3, p0, Lc8/eYb;->mBlackListKey:Ljava/lang/String;

    .line 60
    return-void
.end method

.method static synthetic access$302(Lc8/eYb;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/eYb;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lc8/eYb;->mUpdatingConfig:Z

    return p1
.end method

.method static synthetic access$400(Lc8/eYb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/eYb;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/eYb;->mConfigSetKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lc8/eYb;)Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .locals 1
    .param p0, "x0"    # Lc8/eYb;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/eYb;->mConfigAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lc8/eYb;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/eYb;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/eYb;->mBlackListKey:Ljava/lang/String;

    return-object v0
.end method

.method public static isConfigStringEmpty(Ljava/lang/String;)Z
    .locals 1
    .param p0, "configString"    # Ljava/lang/String;

    .prologue
    .line 197
    if-eqz p0, :cond_0

    const-string/jumbo v0, ""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\"\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkParamContains(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z
    .locals 7
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "pageInfo"    # Lc8/fYb;

    .prologue
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 152
    if-nez p2, :cond_0

    const/4 v1, 0x0

    .line 153
    .local v1, "paramContains":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.paramContains is empty,check success."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_1
    return v2

    .line 152
    .end local v1    # "paramContains":Ljava/lang/String;
    :cond_0
    iget-object v1, p2, Lc8/fYb;->paramContains:Ljava/lang/String;

    goto :goto_0

    .line 157
    .restart local v1    # "paramContains":Ljava/lang/String;
    :cond_1
    iget-object v0, p1, Lcom/alibaba/poplayer/trigger/Event;->param:Ljava/lang/String;

    .line 159
    .local v0, "currentParam":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v4, "utf-8"

    invoke-static {v0, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 164
    :goto_2
    :try_start_1
    const-string/jumbo v4, "utf-8"

    invoke-static {v1, v4}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 169
    :goto_3
    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.after decode:currentParam:{%s},paramContains{%s}."

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 171
    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.currentParam.contains(paramContains),check success."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 161
    :catch_0
    move-exception v4

    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.currentParam:{%s} decode failed"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 166
    :catch_1
    move-exception v4

    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.paramContains:{%s} decode failed"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v1, v5, v3

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 174
    :cond_2
    const-string/jumbo v4, "DefaultConfigManager.checkUrlContains.miss.currentParam{%s}.notContains.paramContain{%s}"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v0, v5, v3

    aput-object v1, v5, v2

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v3

    .line 176
    goto :goto_1
.end method

.method protected filterValiedConfigsFromArray(Lcom/alibaba/poplayer/trigger/Event;Ljava/util/ArrayList;)Lc8/qYb;
    .locals 6
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "Ljava/util/ArrayList",
            "<TConfigItemType;>;)",
            "Lc8/qYb",
            "<TConfigItemType;>;"
        }
    .end annotation

    .prologue
    .line 116
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    .local p2, "configs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TConfigItemType;>;"
    new-instance v3, Lc8/qYb;

    invoke-direct {v3}, Lc8/qYb;-><init>()V

    .line 117
    .local v3, "validConfigs":Lc8/qYb;
    const-string/jumbo v4, "ConfigManager.blackList check."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v4, p0, Lc8/eYb;->mCurrentBlackList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lc8/eYb;->isInList(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    :cond_0
    return-object v3

    .line 121
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .line 123
    .local v0, "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TConfigItemType;"
    invoke-static {p1, v0}, Lc8/hYb;->checkConfigItemStatus(Lcom/alibaba/poplayer/trigger/Event;Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    move-result-object v2

    .line 124
    .local v2, "status":Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;
    sget-object v4, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    if-ne v4, v2, :cond_3

    .line 125
    iget-object v4, v3, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 126
    :cond_3
    sget-object v4, Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;->VALIED_BUT_UNSTARTED:Lcom/alibaba/poplayer/trigger/CommonConfigRule$ConfigStatus;

    if-ne v4, v2, :cond_2

    .line 127
    iget-object v4, v3, Lc8/qYb;->unStartedConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public findConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;
    .locals 3
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            ")",
            "Lc8/qYb",
            "<TConfigItemType;>;"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    new-instance v1, Lc8/qYb;

    invoke-direct {v1}, Lc8/qYb;-><init>()V

    .line 327
    .local v1, "configs":Lc8/qYb;, "Lcom/alibaba/poplayer/trigger/ValidConfigs<TConfigItemType;>;"
    invoke-virtual {p0, p1}, Lc8/eYb;->onInterceptEvent(Lcom/alibaba/poplayer/trigger/Event;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-virtual {p0, p1}, Lc8/eYb;->parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v0

    .line 330
    .local v0, "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TConfigItemType;"
    iget-object v2, v1, Lc8/qYb;->startedconfigs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v0    # "config":Lcom/alibaba/poplayer/trigger/BaseConfigItem;, "TConfigItemType;"
    :goto_0
    return-object v1

    .line 332
    :cond_0
    invoke-virtual {p0, p1}, Lc8/eYb;->findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;

    move-result-object v1

    goto :goto_0
.end method

.method public abstract findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;)Lc8/qYb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            ")",
            "Lc8/qYb",
            "<TConfigItemType;>;"
        }
    .end annotation
.end method

.method public varargs findValidConfigs(Lcom/alibaba/poplayer/trigger/Event;[Ljava/lang/String;)Lc8/qYb;
    .locals 1
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lc8/qYb",
            "<TConfigItemType;>;"
        }
    .end annotation

    .prologue
    .line 69
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBuildType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method protected getBuildVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigAdapter()Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .locals 1

    .prologue
    .line 73
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    iget-object v0, p0, Lc8/eYb;->mConfigAdapter:Lcom/alibaba/poplayer/norm/IConfigAdapter;

    return-object v0
.end method

.method protected final getCurrentConfigSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    iget-object v0, p0, Lc8/eYb;->mCurrentConfigSet:Ljava/lang/String;

    return-object v0
.end method

.method protected final isConfigItemListEmpty()Z
    .locals 1

    .prologue
    .line 63
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    iget-object v0, p0, Lc8/eYb;->mCurrentConfigItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/eYb;->mCurrentConfigItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isInList(Ljava/util/List;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 77
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 78
    :cond_0
    const-string/jumbo v7, "ConfigManager.isInList.return.emptyList"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    :cond_1
    :goto_0
    return v6

    .line 81
    :cond_2
    invoke-virtual {p0}, Lc8/eYb;->getBuildType()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "buildType":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 84
    .local v1, "contains":Z
    if-nez v1, :cond_4

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 87
    .local v5, "s":Ljava/lang/String;
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 88
    .local v4, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 89
    const/4 v1, 0x1

    .line 90
    const-string/jumbo v8, "ConfigManager.list.in regex : %s,buildType: %s "

    new-array v9, v11, [Ljava/lang/Object;

    aput-object v5, v9, v6

    aput-object v0, v9, v7

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "p":Ljava/util/regex/Pattern;
    .end local v5    # "s":Ljava/lang/String;
    :cond_4
    const-string/jumbo v8, "ConfigManager.isInList.return?contains-%s=%s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/eYb;->getBuildType()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lc8/eYb;->getBuildVersion()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 98
    .local v2, "containsVersion":Z
    const-string/jumbo v8, "ConfigManager.isInList.return?containsVersion-%s=%s"

    new-array v9, v11, [Ljava/lang/Object;

    invoke-virtual {p0}, Lc8/eYb;->getBuildVersion()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    if-nez v1, :cond_5

    if-eqz v2, :cond_1

    :cond_5
    move v6, v7

    goto :goto_0
.end method

.method protected isMatchUriOrUris(Lcom/alibaba/poplayer/trigger/Event;Lc8/fYb;)Z
    .locals 9
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;
    .param p2, "pageInfo"    # Lc8/fYb;

    .prologue
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 135
    if-nez p2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v5

    .line 138
    :cond_1
    iget-object v7, p1, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    iget-object v8, p2, Lc8/fYb;->uri:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    move v5, v6

    .line 139
    goto :goto_0

    .line 141
    :cond_2
    iget-object v4, p2, Lc8/fYb;->uris:[Ljava/lang/String;

    .line 142
    .local v4, "uris":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v7, v4

    if-eqz v7, :cond_0

    .line 144
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v4

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 145
    .local v3, "uri":Ljava/lang/String;
    iget-object v7, p1, Lcom/alibaba/poplayer/trigger/Event;->uri:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v5, v6

    .line 146
    goto :goto_0

    .line 144
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected final isUpdatingConfig()Z
    .locals 1

    .prologue
    .line 193
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    iget-boolean v0, p0, Lc8/eYb;->mUpdatingConfig:Z

    return v0
.end method

.method protected abstract onCachedConfigChanged(Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TConfigItemType;>;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected onInterceptEvent(Lcom/alibaba/poplayer/trigger/Event;)Z
    .locals 5
    .param p1, "event"    # Lcom/alibaba/poplayer/trigger/Event;

    .prologue
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v2, 0x0

    .line 343
    iget-object v3, p1, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    const-string/jumbo v4, "poplayer"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 351
    :cond_0
    :goto_0
    return v2

    .line 346
    :cond_1
    iget-object v3, p1, Lcom/alibaba/poplayer/trigger/Event;->originUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 347
    .local v1, "poplayerUri":Landroid/net/Uri;
    const-string/jumbo v3, "openType"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "openType":Ljava/lang/String;
    const-string/jumbo v3, "directly"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected abstract parseConfig(Ljava/lang/String;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TConfigItemType;"
        }
    .end annotation
.end method

.method public abstract parseEventUriConfig(Lcom/alibaba/poplayer/trigger/Event;)Lcom/alibaba/poplayer/trigger/BaseConfigItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/poplayer/trigger/Event;",
            ")TConfigItemType;"
        }
    .end annotation
.end method

.method protected parsePageInfo(Ljava/lang/String;Ljava/lang/String;)Lc8/fYb;
    .locals 8
    .param p1, "configJson"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;

    .prologue
    .line 355
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    new-instance v2, Lc8/fYb;

    invoke-direct {v2}, Lc8/fYb;-><init>()V

    .line 357
    .local v2, "pageInfo":Lc8/fYb;
    :try_start_0
    invoke-static {p1}, Lc8/AIb;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    .line 358
    .local v1, "info":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "uri"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/fYb;->uri:Ljava/lang/String;

    .line 359
    const-string/jumbo v5, "uris"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 360
    .local v4, "urisStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 361
    const-class v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 362
    .local v3, "urisList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    .line 363
    .local v0, "array":[Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v2, Lc8/fYb;->uris:[Ljava/lang/String;

    .line 365
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "urisList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v5, "paramContains"

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lc8/fYb;->paramContains:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    .end local v1    # "info":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "urisStr":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 367
    :catch_0
    move-exception v5

    const-string/jumbo v5, "PageConfigMgr.parseConfig.error:currentUUID:{%s}."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Lcom/alibaba/poplayer/utils/PopLayerLog;->Logi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected parseUri(Landroid/net/Uri;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 373
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v3, 0x0

    .line 375
    .local v3, "res":Lorg/json/JSONObject;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .end local v3    # "res":Lorg/json/JSONObject;
    .local v4, "res":Lorg/json/JSONObject;
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v2

    .line 377
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 378
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "value":Ljava/lang/String;
    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5    # "value":Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v3, v4

    .line 386
    .end local v4    # "res":Lorg/json/JSONObject;
    .restart local v3    # "res":Lorg/json/JSONObject;
    :goto_1
    return-object v3

    .end local v3    # "res":Lorg/json/JSONObject;
    .restart local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "res":Lorg/json/JSONObject;
    :cond_0
    move-object v3, v4

    .line 385
    .end local v4    # "res":Lorg/json/JSONObject;
    .restart local v3    # "res":Lorg/json/JSONObject;
    goto :goto_1

    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method protected specialConfigsParse(Lcom/alibaba/poplayer/norm/IConfigAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "adapter"    # Lcom/alibaba/poplayer/norm/IConfigAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    return-void
.end method

.method public final updateCacheConfigAsync(ZLandroid/content/Context;)V
    .locals 4
    .param p1, "initialize"    # Z
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lc8/eYb;, "Lcom/alibaba/poplayer/trigger/AConfigManager<TConfigItemType;>;"
    const/4 v2, 0x1

    .line 185
    iput-boolean v2, p0, Lc8/eYb;->mUpdatingConfig:Z

    .line 186
    iget-object v0, p0, Lc8/eYb;->mTask:Lc8/cYb;

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    iget-object v1, p0, Lc8/eYb;->mTask:Lc8/cYb;

    invoke-virtual {v1}, Lc8/cYb;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lc8/eYb;->mTask:Lc8/cYb;

    invoke-virtual {v0, v2}, Lc8/cYb;->cancel(Z)Z

    .line 188
    :cond_0
    new-instance v0, Lc8/cYb;

    invoke-direct {v0, p0, p2}, Lc8/cYb;-><init>(Lc8/eYb;Landroid/content/Context;)V

    iput-object v0, p0, Lc8/eYb;->mTask:Lc8/cYb;

    .line 189
    iget-object v0, p0, Lc8/eYb;->mTask:Lc8/cYb;

    new-array v1, v2, [Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lc8/cYb;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 190
    return-void
.end method
