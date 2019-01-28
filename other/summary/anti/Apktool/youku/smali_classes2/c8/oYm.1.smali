.class public Lc8/oYm;
.super Lcom/alibaba/poplayer/PopLayer;
.source "YoukuPopLayer.java"


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 34
    new-instance v1, Lc8/mYm;

    invoke-direct {v1}, Lc8/mYm;-><init>()V

    new-instance v2, Lc8/DYm;

    const/4 v0, 0x2

    const-string/jumbo v3, "youku_poplayer_page"

    invoke-direct {v2, v0, v3}, Lc8/DYm;-><init>(ILjava/lang/String;)V

    new-instance v3, Lc8/DYm;

    const-string/jumbo v0, "youku_poplayer_app"

    invoke-direct {v3, v6, v0}, Lc8/DYm;-><init>(ILjava/lang/String;)V

    new-instance v4, Lc8/DYm;

    const/4 v0, 0x3

    const-string/jumbo v5, "youku_poplayer_view"

    invoke-direct {v4, v0, v5}, Lc8/DYm;-><init>(ILjava/lang/String;)V

    new-instance v5, Lc8/FYm;

    const-string/jumbo v0, "youku_poplayer_layer"

    invoke-direct {v5, v0}, Lc8/FYm;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/poplayer/PopLayer;-><init>(Lcom/alibaba/poplayer/norm/IFaceAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lcom/alibaba/poplayer/norm/IConfigAdapter;Lc8/oXb;)V

    .line 41
    sput-boolean v6, Lc8/uXb;->sAllowPopOnParentActivity:Z

    .line 43
    :try_start_0
    sget-object v0, Lc8/PYm;->URL_TYPE_KET:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lc8/PYm;->URL_TYPE:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :goto_0
    invoke-static {}, Lc8/VYm;->onSetup()V

    .line 46
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private asyncInitWindvane()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lc8/nYm;

    invoke-direct {v0, p0}, Lc8/nYm;-><init>(Lc8/oYm;)V

    .line 153
    invoke-virtual {v0}, Lc8/nYm;->start()V

    .line 154
    return-void
.end method


# virtual methods
.method public getActivityInfo(Landroid/app/Activity;)Ljava/lang/String;
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 71
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    move-object v0, v3

    .line 74
    .local v0, "bundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v0, :cond_0

    .line 75
    new-instance v2, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "{"

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string/jumbo v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 83
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    .line 86
    :cond_0
    :goto_2
    return-object v3

    .line 73
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 79
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v2    # "stringBuffer":Ljava/lang/StringBuffer;
    :cond_2
    const-string/jumbo v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_2
.end method

.method public isValidActivity(Landroid/app/Activity;)Z
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x1

    .line 186
    if-nez p1, :cond_1

    .line 196
    :cond_0
    :goto_0
    return v1

    .line 190
    :cond_1
    :try_start_0
    const-string/jumbo v2, "com.youku.ui.activity.HomePageActivity"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lcom/ali/mobisecenhance/ReflectMap;->getName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    const/4 v1, 0x0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "YoukupPoplayer.isValidPage.fail"

    invoke-static {v2, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public isValidConfig(Lcom/alibaba/poplayer/trigger/BaseConfigItem;)Z
    .locals 5
    .param p1, "configItem"    # Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    .prologue
    const/4 v2, 0x1

    .line 162
    :try_start_0
    invoke-virtual {p0}, Lc8/oYm;->internalGetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 163
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 177
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return v2

    .line 167
    .restart local v0    # "activity":Landroid/app/Activity;
    :cond_1
    const-string/jumbo v3, "com.youku.HomePageEntry"

    invoke-static {}, Lc8/zYb;->instance()Lc8/zYb;

    move-result-object v4

    iget-object v4, v4, Lc8/zYb;->mCurrentActivityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 168
    const/4 v2, 0x0

    goto :goto_0

    .line 174
    .end local v0    # "activity":Landroid/app/Activity;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YoukupPoplayer.isValidConfig.fail"

    invoke-static {v3, v1}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDismissed(Landroid/content/Context;Lc8/jXb;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/alibaba/poplayer/PopLayer;->onDismissed(Landroid/content/Context;Lc8/jXb;)V

    .line 111
    :try_start_0
    invoke-virtual {p2}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v3

    .line 112
    .local v3, "request":Lc8/yXb;
    if-eqz v3, :cond_0

    instance-of v6, v3, Lc8/lYb;

    if-eqz v6, :cond_0

    .line 114
    check-cast v3, Lc8/lYb;

    .end local v3    # "request":Lc8/yXb;
    invoke-virtual {v3}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v6

    iget-object v5, v6, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 115
    .local v5, "uuid":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc8/TYm;->dismissed(Ljava/lang/String;)J

    move-result-wide v0

    .line 116
    .local v0, "dismissTime":J
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc8/TYm;->isUserClose(Ljava/lang/String;)Z

    move-result v4

    .line 117
    .local v4, "userClose":Z
    invoke-static {v5, v0, v1, v4}, Lc8/VYm;->onDismissed(Ljava/lang/String;JZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .end local v0    # "dismissTime":J
    .end local v4    # "userClose":Z
    .end local v5    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v2

    .line 120
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "YoukupPoplayer.dismiss.fail"

    invoke-static {v6, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected onDisplayed(Landroid/content/Context;Lc8/jXb;)V
    .locals 6
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "poplayerView"    # Lc8/jXb;

    .prologue
    .line 126
    invoke-super {p0, p1, p2}, Lcom/alibaba/poplayer/PopLayer;->onDisplayed(Landroid/content/Context;Lc8/jXb;)V

    .line 128
    :try_start_0
    invoke-virtual {p2}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v3

    .line 129
    .local v3, "request":Lc8/yXb;
    if-eqz v3, :cond_0

    instance-of v5, v3, Lc8/lYb;

    if-eqz v5, :cond_0

    .line 131
    check-cast v3, Lc8/lYb;

    .end local v3    # "request":Lc8/yXb;
    invoke-virtual {v3}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v5

    iget-object v4, v5, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 132
    .local v4, "uuid":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v5

    invoke-virtual {v5, v4}, Lc8/TYm;->displayed(Ljava/lang/String;)J

    move-result-wide v0

    .line 133
    .local v0, "displayedTime":J
    invoke-static {v4, v0, v1}, Lc8/VYm;->onDisplayed(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    .end local v0    # "displayedTime":J
    .end local v4    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "YoukupPoplayer.display.fail"

    invoke-static {v5, v2}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onPopped(ILandroid/content/Context;Landroid/view/View;)V
    .locals 4
    .param p1, "domain"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layer"    # Landroid/view/View;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/poplayer/PopLayer;->onPopped(ILandroid/content/Context;Landroid/view/View;)V

    .line 93
    if-eqz p3, :cond_0

    :try_start_0
    instance-of v3, p3, Lc8/jXb;

    if-eqz v3, :cond_0

    .line 94
    check-cast p3, Lc8/jXb;

    .end local p3    # "layer":Landroid/view/View;
    invoke-virtual {p3}, Lc8/jXb;->getPopRequest()Lc8/yXb;

    move-result-object v1

    .line 95
    .local v1, "request":Lc8/yXb;
    if-eqz v1, :cond_0

    instance-of v3, v1, Lc8/lYb;

    if-eqz v3, :cond_0

    .line 97
    check-cast v1, Lc8/lYb;

    .end local v1    # "request":Lc8/yXb;
    invoke-virtual {v1}, Lc8/lYb;->getConfigItem()Lcom/alibaba/poplayer/trigger/BaseConfigItem;

    move-result-object v3

    iget-object v2, v3, Lcom/alibaba/poplayer/trigger/BaseConfigItem;->uuid:Ljava/lang/String;

    .line 98
    .local v2, "uuid":Ljava/lang/String;
    invoke-static {}, Lc8/TYm;->getInstance()Lc8/TYm;

    move-result-object v3

    invoke-virtual {v3, v2}, Lc8/TYm;->popped(Ljava/lang/String;)J

    .line 99
    invoke-static {v2}, Lc8/VYm;->onPopped(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v2    # "uuid":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "YoukupPoplayer.pop.fail"

    invoke-static {v3, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setup(Landroid/app/Application;)V
    .locals 4
    .param p1, "application"    # Landroid/app/Application;

    .prologue
    .line 51
    :try_start_0
    invoke-super {p0, p1}, Lcom/alibaba/poplayer/PopLayer;->setup(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    :try_start_1
    const-string/jumbo v1, "WVYKPopLayer"

    const-class v2, Lc8/oZm;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V

    .line 55
    const-string/jumbo v1, "WVPopLayerManager"

    const-class v2, Lc8/oZb;

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lc8/jE;->registerPlugin(Ljava/lang/String;Ljava/lang/Class;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    :goto_0
    :try_start_2
    new-instance v1, Lc8/GYm;

    invoke-direct {v1}, Lc8/GYm;-><init>()V

    invoke-virtual {p0, v1}, Lc8/oYm;->registerLogAdapter(Lcom/alibaba/poplayer/norm/ILogAdapter;)V

    .line 62
    invoke-direct {p0}, Lc8/oYm;->asyncInitWindvane()V

    .line 66
    :goto_1
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "YoukupPoplayer.setup.plugin.fail"

    invoke-static {v1, v0}, Lcom/alibaba/poplayer/utils/PopLayerLog;->dealException(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 64
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
