.class public final Lc8/Bfh;
.super Ljava/lang/Object;
.source "Profile.java"


# static fields
.field public static Wireless_channel_id:Ljava/lang/String;

.field public static Wireless_pid:Ljava/lang/String;

.field private static mChannel:Ljava/lang/String;

.field private static mChannelID:Ljava/lang/String;

.field private static mCna:Ljava/lang/String;

.field private static mPro:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "9a89d83e08103905"

    sput-object v0, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "600000"

    sput-object v0, Lc8/Bfh;->Wireless_channel_id:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelID()Ljava/lang/String;
    .locals 9

    .prologue
    .line 161
    sget-object v7, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 162
    sget-object v6, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    .line 206
    :cond_0
    :goto_0
    return-object v6

    .line 164
    :cond_1
    const-string/jumbo v7, "ykchannelid"

    invoke-static {v7}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 165
    .local v6, "ykchannelid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lc8/Bfh;->hasNewVersionWithChannel()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 170
    :cond_2
    invoke-static {}, Lc8/Bfh;->getVivoChannelId()Ljava/lang/String;

    move-result-object v5

    .line 171
    .local v5, "vivoChannelId":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 173
    .local v1, "packageChannelId":Ljava/lang/String;
    sget-object v7, Lc8/ddn;->context:Landroid/content/Context;

    .line 174
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 175
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 178
    .local v3, "sourceDir":Ljava/lang/String;
    const-string/jumbo v7, "ykchannelid"

    invoke-static {v3, v7}, Lc8/Bfh;->getValueFromZipComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 181
    const-string/jumbo v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 182
    .local v4, "split":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_3

    .line 183
    const/4 v7, 0x1

    aget-object v1, v4, v7

    .line 189
    .end local v4    # "split":[Ljava/lang/String;
    :cond_3
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 190
    sget-object v1, Lc8/Bfh;->Wireless_channel_id:Ljava/lang/String;

    .line 194
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 195
    sput-object v5, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    .line 196
    const-string/jumbo v7, "old_ykchannelid"

    invoke-static {v7, v1}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get vivo channel id: >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", package channel id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    :goto_2
    const-string/jumbo v7, "ykchannelid"

    sget-object v8, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    invoke-static {v7, v8}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v7, "versionCode_channel"

    sget v8, Lc8/Dfh;->versionCode:I

    invoke-static {v7, v8}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get channelidt: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    sget-object v6, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :cond_5
    invoke-static {}, Lc8/Bfh;->getChannelIdFromResources()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 199
    :cond_6
    sput-object v1, Lc8/Bfh;->mChannelID:Ljava/lang/String;

    goto :goto_2
.end method

.method private static getChannelIdFromResources()Ljava/lang/String;
    .locals 8

    .prologue
    .line 213
    const-string/jumbo v0, ""

    .line 215
    .local v0, "channelID":Ljava/lang/String;
    :try_start_0
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    const-string/jumbo v5, "ttid"

    const-string/jumbo v6, "string"

    sget-object v7, Landroid/taobao/atlas/runtime/RuntimeVariables;->androidApplication:Landroid/app/Application;

    .line 217
    invoke-virtual {v7}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 218
    .local v3, "ttidID":I
    if-gtz v3, :cond_0

    .line 233
    .end local v3    # "ttidID":I
    :goto_0
    return-object v0

    .line 222
    .restart local v3    # "ttidID":I
    :cond_0
    sget-object v4, Landroid/taobao/atlas/runtime/RuntimeVariables;->delegateResources:Landroid/content/res/Resources;

    .line 223
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 232
    .end local v3    # "ttidID":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get channelid from resource is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 227
    const-string/jumbo v0, ""

    .line 231
    goto :goto_1

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 229
    .local v2, "error":Ljava/lang/Error;
    invoke-virtual {v2}, Ljava/lang/Error;->printStackTrace()V

    .line 230
    const-string/jumbo v0, ""

    goto :goto_1
.end method

.method public static getCna(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v4, Lc8/Bfh;->mCna:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 110
    sget-object v0, Lc8/Bfh;->mCna:Ljava/lang/String;

    .line 130
    :cond_0
    :goto_0
    return-object v0

    .line 112
    :cond_1
    const-string/jumbo v4, "ykcna"

    invoke-static {v4}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "cna":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "VERSION_CODE_CNA"

    invoke-static {v4}, Lc8/Bfh;->hasNewVersion(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 121
    .local v2, "sourceDir":Ljava/lang/String;
    const-string/jumbo v4, "ykcna"

    invoke-static {v2, v4}, Lc8/Bfh;->getValueFromZipComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 123
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 124
    const/4 v4, 0x1

    aget-object v4, v3, v4

    sput-object v4, Lc8/Bfh;->mCna:Ljava/lang/String;

    .line 126
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get CNA: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Bfh;->mCna:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    const-string/jumbo v4, "ykcna"

    sget-object v5, Lc8/Bfh;->mCna:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v4, "VERSION_CODE_CNA"

    sget v5, Lc8/Dfh;->versionCode:I

    invoke-static {v4, v5}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 130
    sget-object v0, Lc8/Bfh;->mCna:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPid(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    sget-object v7, Lc8/Bfh;->mChannel:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    sget-object v6, Lc8/Bfh;->mChannel:Ljava/lang/String;

    .line 105
    :cond_0
    :goto_0
    return-object v6

    .line 65
    :cond_1
    const-string/jumbo v7, "ykpid"

    invoke-static {v7}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "ykpid":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {}, Lc8/Bfh;->hasNewVersion()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    :cond_2
    sget-object v7, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    sput-object v7, Lc8/Bfh;->mChannel:Ljava/lang/String;

    .line 71
    invoke-static {}, Lc8/Bfh;->getPreInstallPid()Ljava/lang/String;

    move-result-object v5

    .line 72
    .local v5, "vivoPid":Ljava/lang/String;
    const-string/jumbo v1, ""

    .line 74
    .local v1, "packagePid":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, "appinfo":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 79
    .local v3, "sourceDir":Ljava/lang/String;
    const-string/jumbo v7, "ykpid"

    invoke-static {v3, v7}, Lc8/Bfh;->getValueFromZipComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "ret":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 82
    invoke-static {v3}, Lc8/Bfh;->getPidFromZipEntry(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 84
    :cond_3
    const-string/jumbo v7, "_"

    invoke-virtual {v2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "split":[Ljava/lang/String;
    array-length v7, v4

    const/4 v8, 0x2

    if-lt v7, v8, :cond_4

    .line 86
    const/4 v7, 0x1

    aget-object v1, v4, v7

    .line 90
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 92
    sput-object v5, Lc8/Bfh;->mChannel:Ljava/lang/String;

    .line 94
    const-string/jumbo v8, "old_ykpid"

    .line 95
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-object v7, Lc8/Bfh;->Wireless_pid:Ljava/lang/String;

    .line 94
    :goto_1
    invoke-static {v8, v7}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get vivo pid: >"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", packagePid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    :cond_5
    :goto_2
    const-string/jumbo v7, "ykpid"

    sget-object v8, Lc8/Bfh;->mChannel:Ljava/lang/String;

    invoke-static {v7, v8}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string/jumbo v7, "versionCode"

    sget v8, Lc8/Dfh;->versionCode:I

    invoke-static {v7, v8}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 105
    sget-object v6, Lc8/Bfh;->mChannel:Ljava/lang/String;

    goto/16 :goto_0

    :cond_6
    move-object v7, v1

    .line 95
    goto :goto_1

    .line 97
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 99
    sput-object v1, Lc8/Bfh;->mChannel:Ljava/lang/String;

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "get package pid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_2
.end method

.method private static getPidFromZipEntry(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "sourceDir"    # Ljava/lang/String;

    .prologue
    .line 237
    const-string/jumbo v4, ""

    .line 238
    .local v4, "ret":Ljava/lang/String;
    const/4 v5, 0x0

    .line 240
    .local v5, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_0
    new-instance v6, Ljava/util/zip/ZipFile;

    invoke-direct {v6, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .local v6, "zipfile":Ljava/util/zip/ZipFile;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 242
    .local v1, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 243
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 244
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "entryName":Ljava/lang/String;
    const-string/jumbo v7, "META-INF/ykpid"

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    if-eqz v7, :cond_0

    .line 246
    move-object v4, v3

    .line 253
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    .end local v3    # "entryName":Ljava/lang/String;
    :cond_1
    if-eqz v6, :cond_4

    .line 255
    :try_start_2
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .line 261
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_2
    :goto_0
    return-object v4

    .line 256
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v6

    .line 258
    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :catch_1
    move-exception v0

    .line 251
    .restart local v0    # "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 253
    if-eqz v5, :cond_2

    .line 255
    :try_start_4
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 256
    :catch_2
    move-exception v0

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_2
    if-eqz v5, :cond_3

    .line 255
    :try_start_5
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 258
    :cond_3
    :goto_3
    throw v7

    .line 256
    :catch_3
    move-exception v0

    .line 257
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 253
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_2

    .line 250
    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :catch_4
    move-exception v0

    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_1

    .end local v5    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v1    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v6    # "zipfile":Ljava/util/zip/ZipFile;
    :cond_4
    move-object v5, v6

    .end local v6    # "zipfile":Ljava/util/zip/ZipFile;
    .restart local v5    # "zipfile":Ljava/util/zip/ZipFile;
    goto :goto_0
.end method

.method public static getPreInstallPid()Ljava/lang/String;
    .locals 9

    .prologue
    .line 356
    const-string/jumbo v4, ""

    .line 359
    .local v4, "pid":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string/jumbo v7, "/system/etc/Youku/config.properties"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 360
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 362
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    const-string/jumbo v7, "/data/etc/appchannel/config.properties"

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 364
    const-string/jumbo v4, ""

    .line 392
    .end local v4    # "pid":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 371
    .restart local v4    # "pid":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v8, "utf-8"

    invoke-direct {v2, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 372
    .local v2, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 374
    .local v5, "read":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 376
    const-string/jumbo v7, "com.youku.phone.pid"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 377
    const-string/jumbo v7, "="

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 378
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 379
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 383
    .end local v6    # "split":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 384
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "read":Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 388
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v0

    .line 389
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getPro(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 134
    sget-object v4, Lc8/Bfh;->mPro:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    sget-object v0, Lc8/Bfh;->mPro:Ljava/lang/String;

    .line 154
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    const-string/jumbo v4, "ykpro"

    invoke-static {v4}, Lc8/Iin;->getPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "pro":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "VERSION_CODE_PRO"

    invoke-static {v4}, Lc8/Bfh;->hasNewVersion(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 145
    .local v2, "sourceDir":Ljava/lang/String;
    const-string/jumbo v4, "ykpro"

    invoke-static {v2, v4}, Lc8/Bfh;->getValueFromZipComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "ret":Ljava/lang/String;
    const-string/jumbo v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 147
    .local v3, "split":[Ljava/lang/String;
    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 148
    const/4 v4, 0x1

    aget-object v4, v3, v4

    sput-object v4, Lc8/Bfh;->mPro:Ljava/lang/String;

    .line 150
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "get pro: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lc8/Bfh;->mPro:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    const-string/jumbo v4, "ykpro"

    sget-object v5, Lc8/Bfh;->mPro:Ljava/lang/String;

    invoke-static {v4, v5}, Lc8/Iin;->savePreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string/jumbo v4, "VERSION_CODE_PRO"

    sget v5, Lc8/Dfh;->versionCode:I

    invoke-static {v4, v5}, Lc8/Iin;->savePreference(Ljava/lang/String;I)V

    .line 154
    sget-object v0, Lc8/Bfh;->mPro:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getValueFromZipComment(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "sourceDir"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 266
    const-string/jumbo v6, ""

    .line 268
    .local v6, "retStr":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 269
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v3, v8

    .line 271
    .local v3, "fileLen":I
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 279
    .local v4, "in":Ljava/io/FileInputStream;
    const/16 v7, 0x2000

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    new-array v0, v7, [B

    .line 282
    .local v0, "buffer":[B
    array-length v7, v0

    sub-int v7, v3, v7

    int-to-long v8, v7

    invoke-virtual {v4, v8, v9}, Ljava/io/FileInputStream;->skip(J)J

    .line 284
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, "len":I
    if-lez v5, :cond_0

    .line 285
    invoke-static {v0, v5, p1}, Lc8/Bfh;->getZipCommentFromBuffer([BILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 287
    :cond_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v0    # "buffer":[B
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "fileLen":I
    .end local v4    # "in":Ljava/io/FileInputStream;
    .end local v5    # "len":I
    :goto_0
    return-object v6

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getVivoChannelId()Ljava/lang/String;
    .locals 9

    .prologue
    .line 403
    const-string/jumbo v0, ""

    .line 404
    .local v0, "channelId":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string/jumbo v7, "/system/etc/Youku/config.properties"

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 405
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 406
    const-string/jumbo v0, ""

    .line 431
    .end local v0    # "channelId":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 410
    .restart local v0    # "channelId":Ljava/lang/String;
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v8, "utf-8"

    invoke-direct {v3, v7, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 411
    .local v3, "isr":Ljava/io/InputStreamReader;
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 413
    .local v5, "read":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 415
    const-string/jumbo v7, "com.youku.phone.channel_id"

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 416
    const-string/jumbo v7, "="

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, "split":[Ljava/lang/String;
    array-length v7, v6

    const/4 v8, 0x2

    if-lt v7, v8, :cond_1

    .line 418
    const/4 v7, 0x1

    aget-object v7, v6, v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 422
    .end local v6    # "split":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 423
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "line":Ljava/lang/String;
    .end local v5    # "read":Ljava/io/BufferedReader;
    :catch_0
    move-exception v1

    .line 424
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 426
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 427
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 428
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getZipCommentFromBuffer([BILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p0, "buffer"    # [B
    .param p1, "len"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 295
    const/4 v9, 0x4

    new-array v6, v9, [B

    fill-array-data v6, :array_0

    .line 296
    .local v6, "magicDirEnd":[B
    array-length v9, p0

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 298
    .local v0, "buffLen":I
    array-length v9, v6

    sub-int v9, v0, v9

    add-int/lit8 v3, v9, -0x16

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 299
    const/4 v4, 0x1

    .line 300
    .local v4, "isMagicStart":Z
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_1
    array-length v9, v6

    if-ge v5, v9, :cond_0

    .line 301
    add-int v9, v3, v5

    aget-byte v9, p0, v9

    aget-byte v10, v6, v5

    if-eq v9, v10, :cond_2

    .line 302
    const/4 v4, 0x0

    .line 306
    :cond_0
    if-eqz v4, :cond_4

    .line 308
    add-int/lit8 v9, v3, 0x14

    aget-byte v9, p0, v9

    add-int/lit8 v10, v3, 0x15

    aget-byte v10, p0, v10

    shl-int/lit8 v10, v10, 0x8

    add-int v2, v9, v10

    .line 309
    .local v2, "commentLen":I
    sub-int v9, v0, v3

    add-int/lit8 v8, v9, -0x16

    .line 310
    .local v8, "realLen":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "ZIP comment found at buffer position "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x16

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " with len="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", good!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 315
    if-eq v2, v8, :cond_1

    .line 316
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "WARNING! ZIP comment size mismatch: directory says len is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", but file ends after "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bytes!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    :cond_1
    new-instance v1, Ljava/lang/String;

    add-int/lit8 v9, v3, 0x16

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-direct {v1, p0, v9, v10}, Ljava/lang/String;-><init>([BII)V

    .line 320
    .local v1, "comment":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 321
    invoke-virtual {v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 322
    .local v7, "pid_start":I
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 329
    .end local v1    # "comment":Ljava/lang/String;
    .end local v2    # "commentLen":I
    .end local v4    # "isMagicStart":Z
    .end local v5    # "k":I
    .end local v7    # "pid_start":I
    .end local v8    # "realLen":I
    :goto_2
    return-object v9

    .line 300
    .restart local v4    # "isMagicStart":Z
    .restart local v5    # "k":I
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 324
    .restart local v1    # "comment":Ljava/lang/String;
    .restart local v2    # "commentLen":I
    .restart local v8    # "realLen":I
    :cond_3
    const-string/jumbo v9, ""

    goto :goto_2

    .line 298
    .end local v1    # "comment":Ljava/lang/String;
    .end local v2    # "commentLen":I
    .end local v8    # "realLen":I
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_0

    .line 328
    .end local v4    # "isMagicStart":Z
    .end local v5    # "k":I
    :cond_5
    const-string/jumbo v9, "ERROR! ZIP comment NOT found!"

    invoke-static {v9}, Lc8/FWc;->e(Ljava/lang/String;)V

    .line 329
    const-string/jumbo v9, ""

    goto :goto_2

    .line 295
    :array_0
    .array-data 1
        0x50t
        0x4bt
        0x5t
        0x6t
    .end array-data
.end method

.method private static hasNewVersion()Z
    .locals 2

    .prologue
    .line 333
    sget v0, Lc8/Dfh;->versionCode:I

    const-string/jumbo v1, "versionCode"

    invoke-static {v1}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasNewVersion(Ljava/lang/String;)Z
    .locals 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 337
    sget v0, Lc8/Dfh;->versionCode:I

    invoke-static {p0}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static hasNewVersionWithChannel()Z
    .locals 2

    .prologue
    .line 344
    sget v0, Lc8/Dfh;->versionCode:I

    const-string/jumbo v1, "versionCode_channel"

    .line 345
    invoke-static {v1}, Lc8/Iin;->getPreferenceInt(Ljava/lang/String;)I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
