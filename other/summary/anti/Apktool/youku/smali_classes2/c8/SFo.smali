.class public abstract Lc8/SFo;
.super Ljava/lang/Object;
.source "VipAbstractSetting.java"


# instance fields
.field private mSettingFileName:Ljava/lang/String;

.field private mSharePreferenceUtil:Lc8/LGo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "settingFileName"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p2, p0, Lc8/SFo;->mSettingFileName:Ljava/lang/String;

    .line 22
    new-instance v0, Lc8/LGo;

    iget-object v1, p0, Lc8/SFo;->mSettingFileName:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lc8/LGo;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    .line 23
    return-void
.end method


# virtual methods
.method public clear()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0}, Lc8/LGo;->clear()Z

    move-result v0

    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 71
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1}, Lc8/LGo;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 75
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1}, Lc8/LGo;->delete(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0}, Lc8/LGo;->getAll()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Z

    .prologue
    .line 30
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->getBooleanValue(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected getFloat(Ljava/lang/String;F)F
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # F

    .prologue
    .line 34
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->getFloatValue(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method protected getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # I

    .prologue
    .line 38
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->getIntValue(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # J

    .prologue
    .line 42
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2, p3}, Lc8/LGo;->getLongValue(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getModel(Ljava/lang/String;Ljava/lang/Class;)Lcom/youku/vip/lib/model/VipBaseModel;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/youku/vip/lib/model/VipBaseModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p0, p1, v1}, Lc8/SFo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lc8/AIb;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/youku/vip/lib/model/VipBaseModel;

    goto :goto_0
.end method

.method protected getModelList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/youku/vip/lib/model/VipBaseModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "clzz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, p1, v1}, Lc8/SFo;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 112
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0, p2}, Lc8/AIb;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method protected getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 26
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected putBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 46
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->putBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected putFloat(Ljava/lang/String;F)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 54
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->putFloat(Ljava/lang/String;F)Z

    move-result v0

    return v0
.end method

.method protected putInt(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->putInt(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method protected putLong(Ljava/lang/String;J)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 58
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2, p3}, Lc8/LGo;->putLong(Ljava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method protected putModel(Ljava/lang/String;Lcom/youku/vip/lib/model/VipBaseModel;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/youku/vip/lib/model/VipBaseModel;",
            ">(",
            "Ljava/lang/String;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "tValue":Lcom/youku/vip/lib/model/VipBaseModel;, "TT;"
    const/4 v0, 0x0

    .line 84
    .local v0, "value":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 85
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_0
    invoke-virtual {p0, p1, v0}, Lc8/SFo;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected putModelList(Ljava/lang/String;Ljava/util/List;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/youku/vip/lib/model/VipBaseModel;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "listValue":Ljava/util/List;, "Ljava/util/List<TT;>;"
    const/4 v0, 0x0

    .line 92
    .local v0, "value":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 93
    invoke-static {p2}, Lc8/AIb;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 95
    :cond_0
    invoke-virtual {p0, p1, v0}, Lc8/SFo;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method protected putString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 50
    iget-object v0, p0, Lc8/SFo;->mSharePreferenceUtil:Lc8/LGo;

    invoke-virtual {v0, p1, p2}, Lc8/LGo;->putString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
