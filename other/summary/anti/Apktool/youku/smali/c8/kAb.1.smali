.class public Lc8/kAb;
.super Ljava/lang/Object;
.source "PersistentConfiguration.java"


# instance fields
.field private mConfigName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mSp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "configName"    # Ljava/lang/String;
    .param p4, "isSafety"    # Z
    .param p5, "isLessMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/kAb;->mConfigName:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    .line 18
    iput-object v1, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 19
    iput-object v1, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    .line 24
    iput-object p3, p0, Lc8/kAb;->mConfigName:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    .line 27
    if-eqz p1, :cond_0

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    .line 32
    :cond_0
    return-void
.end method

.method private initEditor()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 98
    :cond_0
    return-void
.end method

.method public commit()Z
    .locals 4

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 102
    .local v0, "result":Z
    iget-object v1, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    .line 103
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v1, v2, :cond_2

    .line 104
    iget-object v1, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-static {v1}, Lc8/YBb;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 109
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_1

    .line 110
    iget-object v1, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lc8/kAb;->mConfigName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    .line 115
    :cond_1
    return v0

    .line 106
    :cond_2
    iget-object v1, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method public getAll()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 150
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    :cond_0
    return v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 146
    :cond_0
    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 129
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 130
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 132
    :cond_0
    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    iget-object v2, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 139
    :cond_0
    return-wide v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 119
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    const-string/jumbo v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lc8/aCb;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    .end local v0    # "value":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 55
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 56
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 59
    :cond_0
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 62
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 63
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 66
    :cond_0
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 42
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 45
    :cond_0
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 48
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 49
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 52
    :cond_0
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 70
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 83
    iget-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/kAb;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lc8/kAb;->mConfigName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lc8/kAb;->mSp:Landroid/content/SharedPreferences;

    .line 90
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Lc8/kAb;->initEditor()V

    .line 77
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lc8/kAb;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 80
    :cond_0
    return-void
.end method
