.class public Lc8/MH;
.super Ljava/lang/Object;
.source "ConfigStorage.java"


# static fields
.field public static final DEFAULT_MAX_AGE:J = 0x1499700L

.field public static final DEFAULT_SMALL_MAX_AGE:J = 0x1b7740L

.field public static final KEY_DATA:Ljava/lang/String; = "wv-data"

.field public static final KEY_TIME:Ljava/lang/String; = "wv-time"

.field public static final ROOT_WINDVANE_CONFIG_DIR:Ljava/lang/String; = "windvane/config"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string/jumbo v0, "ConfigStorage"

    sput-object v0, Lc8/MH;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0, p1}, Lc8/MH;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-static {p0}, Lc8/MH;->getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lc8/MH;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "WindVane_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "filename"    # Ljava/lang/String;

    .prologue
    .line 44
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    if-nez v1, :cond_0

    .line 45
    const-string/jumbo v1, ""

    .line 52
    :goto_0
    return-object v1

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 48
    .local v0, "path":Ljava/lang/StringBuilder;
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "windvane/config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    if-nez p0, :cond_1

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public static getLongVal(Ljava/lang/String;Ljava/lang/String;)J
    .locals 11
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    const-wide/16 v8, 0x0

    .line 125
    invoke-static {p0, p1}, Lc8/MH;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "nameTag":Ljava/lang/String;
    const-wide/16 v6, 0x0

    .line 128
    .local v6, "value":J
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-static {v4}, Lc8/MH;->getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 130
    invoke-static {v3}, Lc8/JD;->read(Ljava/io/File;)[B

    move-result-object v1

    .line 131
    .local v1, "data":[B
    const/16 v8, 0x8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 133
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 135
    sget-object v8, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " by file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    .end local v3    # "file":Ljava/io/File;
    :goto_0
    move-wide v8, v6

    .line 152
    :cond_0
    return-wide v8

    .line 138
    .restart local v3    # "file":Ljava/io/File;
    :cond_1
    invoke-static {}, Lc8/MH;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v5

    .line 139
    .local v5, "sp":Landroid/content/SharedPreferences;
    if-eqz v5, :cond_0

    .line 142
    const-wide/16 v8, 0x0

    invoke-interface {v5, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 143
    invoke-static {p0, p1, v6, v7}, Lc8/MH;->putLongVal(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 145
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 146
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 147
    sget-object v8, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "read "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " by sp : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v8

    sget-object v8, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "can not read file : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getLongVal(Ljava/lang/String;Ljava/lang/String;J)J
    .locals 6
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultVal"    # J

    .prologue
    .line 170
    :try_start_0
    invoke-static {p0, p1}, Lc8/MH;->getLongVal(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 171
    .local v1, "value":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 177
    .end local v1    # "value":Ljava/lang/Long;
    .end local p2    # "defaultVal":J
    :goto_0
    return-wide p2

    .line 174
    .restart local v1    # "value":Ljava/lang/Long;
    .restart local p2    # "defaultVal":J
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 175
    .end local v1    # "value":Ljava/lang/Long;
    :catch_0
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getSharedPreference()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    if-nez v0, :cond_0

    .line 187
    const/4 v0, 0x0

    .line 189
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lc8/xB;->context:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public static getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;

    .prologue
    .line 97
    invoke-static {p0, p1}, Lc8/MH;->getConfigKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "nameTag":Ljava/lang/String;
    const-string/jumbo v5, ""

    .line 100
    .local v5, "value":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lc8/MH;->getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 102
    new-instance v7, Ljava/io/File;

    invoke-static {v3}, Lc8/MH;->getFileAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lc8/JD;->read(Ljava/io/File;)[B

    move-result-object v0

    .line 103
    .local v0, "data":[B
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .end local v5    # "value":Ljava/lang/String;
    .local v6, "value":Ljava/lang/String;
    :try_start_1
    sget-object v7, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " by file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v6

    .end local v0    # "data":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    :goto_0
    move-object v7, v5

    .line 121
    :goto_1
    return-object v7

    .line 107
    .restart local v2    # "file":Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static {}, Lc8/MH;->getSharedPreference()Landroid/content/SharedPreferences;

    move-result-object v4

    .line 108
    .local v4, "sp":Landroid/content/SharedPreferences;
    if-nez v4, :cond_1

    .line 109
    const-string/jumbo v7, ""

    goto :goto_1

    .line 111
    :cond_1
    const-string/jumbo v7, ""

    invoke-interface {v4, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 112
    invoke-static {p0, p1, v5}, Lc8/MH;->putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 114
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    sget-object v7, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "read "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " by sp : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 119
    .end local v1    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "sp":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v7

    :goto_2
    sget-object v7, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "can not read file : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lc8/ZH;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v5    # "value":Ljava/lang/String;
    .restart local v0    # "data":[B
    .restart local v2    # "file":Ljava/io/File;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "value":Ljava/lang/String;
    .restart local v5    # "value":Ljava/lang/String;
    goto :goto_2
.end method

.method public static getStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 157
    :try_start_0
    invoke-static {p0, p1}, Lc8/MH;->getStringVal(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    .end local v1    # "value":Ljava/lang/String;
    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local v1    # "value":Ljava/lang/String;
    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_0
    move-object p2, v1

    .line 161
    goto :goto_0

    .line 162
    .end local v1    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/ClassCastException;
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized initDirs()Z
    .locals 5

    .prologue
    .line 35
    const-class v2, Lc8/MH;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 36
    const/4 v1, 0x0

    .line 40
    .local v0, "fileDir":Ljava/io/File;
    :goto_0
    monitor-exit v2

    return v1

    .line 38
    .end local v0    # "fileDir":Ljava/io/File;
    :cond_0
    :try_start_1
    sget-object v1, Lc8/xB;->context:Landroid/app/Application;

    const-string/jumbo v3, "windvane/config"

    invoke-static {v1, v3}, Lc8/KD;->createFolder(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 39
    .restart local v0    # "fileDir":Ljava/io/File;
    sget-object v1, Lc8/MH;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "createDir: dir["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized putLongVal(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configVal"    # J
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 77
    const-class v1, Lc8/MH;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 80
    :cond_1
    :try_start_0
    new-instance v0, Lc8/LH;

    invoke-direct {v0, p0, p1, p2, p3}, Lc8/LH;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized putStringVal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "spName"    # Ljava/lang/String;
    .param p1, "configKey"    # Ljava/lang/String;
    .param p2, "configVal"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 57
    const-class v1, Lc8/MH;

    monitor-enter v1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 61
    :cond_1
    :try_start_0
    new-instance v0, Lc8/KH;

    invoke-direct {v0, p0, p1, p2}, Lc8/KH;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
