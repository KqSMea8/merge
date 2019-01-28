.class public Lc8/fPp;
.super Ljava/lang/Object;
.source "UnitServiceImpl.java"

# interfaces
.implements Lc8/cPp;


# static fields
.field private static final API_UNIT_FILE_NAME:Ljava/lang/String; = "UNIT_SETTING_STORE.API_UNIT_ITEM"

.field private static final API_UNIT_URL:Ljava/lang/String; = "url="

.field private static final API_UNIT_V:Ljava/lang/String; = "v="

.field private static final TAG:Ljava/lang/String; = "mtopsdk.UnitServiceImpl"

.field private static final USER_UNIT_PREFIX:Ljava/lang/String; = "prefix="

.field private static final USER_UNIT_TYPE:Ljava/lang/String; = "type="


# instance fields
.field private volatile apiUnit:Lmtopsdk/mtop/unit/ApiUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lc8/fPp;)Lmtopsdk/mtop/unit/ApiUnit;
    .locals 1
    .param p0, "x0"    # Lc8/fPp;

    .prologue
    .line 34
    iget-object v0, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    return-object v0
.end method

.method static synthetic access$002(Lc8/fPp;Lmtopsdk/mtop/unit/ApiUnit;)Lmtopsdk/mtop/unit/ApiUnit;
    .locals 0
    .param p0, "x0"    # Lc8/fPp;
    .param p1, "x1"    # Lmtopsdk/mtop/unit/ApiUnit;

    .prologue
    .line 34
    iput-object p1, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    return-object p1
.end method

.method static synthetic access$100(Lc8/fPp;Landroid/content/Context;Lmtopsdk/mtop/unit/ApiUnit;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/fPp;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Lmtopsdk/mtop/unit/ApiUnit;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lc8/fPp;->storeApiUnitInfo(Landroid/content/Context;Lmtopsdk/mtop/unit/ApiUnit;Ljava/lang/String;)V

    return-void
.end method

.method private parseApiUnitInfoParams(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;
    .locals 11
    .param p1, "apiUnitInfo"    # Ljava/lang/String;
    .param p2, "seqNo"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    const/4 v5, 0x0

    .line 212
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v9, ","

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "apiUnitValue":[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "version":Ljava/lang/String;
    const/4 v6, 0x0

    .line 214
    .local v6, "url":Ljava/lang/String;
    if-eqz v0, :cond_2

    array-length v9, v0

    if-lez v9, :cond_2

    .line 215
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v1, v3

    .line 217
    .local v7, "value":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v9, "v="

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 218
    const-string/jumbo v9, "v="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 215
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    const-string/jumbo v9, "url="

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 222
    const-string/jumbo v9, "url="

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "mtopsdk.UnitServiceImpl"

    const-string/jumbo v10, "[parseApiUnitInfoParams] parse x-m-update-unitapi  header error."

    invoke-static {v9, p2, v10, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 229
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v7    # "value":Ljava/lang/String;
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v6, :cond_3

    .line 230
    new-instance v5, Landroid/util/Pair;

    .end local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v5, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 233
    .restart local v5    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    return-object v5
.end method

.method private parseUserUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/unit/UserUnit;
    .locals 14
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "userUnitInfo"    # Ljava/lang/String;
    .param p3, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v9, 0x0

    .line 170
    .local v9, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    const-string/jumbo v11, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "userUnitValue":[Ljava/lang/String;
    if-eqz v10, :cond_4

    array-length v11, v10

    if-lez v11, :cond_4

    .line 172
    const/4 v7, 0x0

    .line 173
    .local v7, "unitType":Lmtopsdk/mtop/unit/UserUnit$UnitType;
    const/4 v6, 0x0

    .line 174
    .local v6, "unitPrefix":Ljava/lang/String;
    move-object v1, v10

    .local v1, "arr$":[Ljava/lang/String;
    array-length v4, v10

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v1, v3

    .line 176
    .local v5, "str":Ljava/lang/String;
    :try_start_0
    const-string/jumbo v11, "type="

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 177
    const-string/jumbo v11, "type="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 178
    .local v8, "unitTypeStr":Ljava/lang/String;
    sget-object v11, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    invoke-virtual {v11}, Lmtopsdk/mtop/unit/UserUnit$UnitType;->getUnitType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 179
    sget-object v7, Lmtopsdk/mtop/unit/UserUnit$UnitType;->UNIT:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    .line 174
    .end local v8    # "unitTypeStr":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 181
    .restart local v8    # "unitTypeStr":Ljava/lang/String;
    :cond_1
    sget-object v7, Lmtopsdk/mtop/unit/UserUnit$UnitType;->CENTER:Lmtopsdk/mtop/unit/UserUnit$UnitType;

    goto :goto_1

    .line 185
    .end local v8    # "unitTypeStr":Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, "prefix="

    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 186
    const-string/jumbo v11, "prefix="

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    goto :goto_1

    .line 188
    :catch_0
    move-exception v2

    .line 189
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v11, "mtopsdk.UnitServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[parseUserUnitInfo] parse x-m-update-unitinfo  header error,userUnitInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-static {v11, v0, v12, v2}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 192
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "str":Ljava/lang/String;
    :cond_3
    new-instance v9, Lmtopsdk/mtop/unit/UserUnit;

    .end local v9    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    invoke-direct {v9, p1, v7, v6}, Lmtopsdk/mtop/unit/UserUnit;-><init>(Ljava/lang/String;Lmtopsdk/mtop/unit/UserUnit$UnitType;Ljava/lang/String;)V

    .line 193
    .restart local v9    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    sget-object v11, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v11}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 194
    const-string/jumbo v11, "mtopsdk.UnitServiceImpl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[parseUserUnitInfo]parse user unit info succeed. userUnit="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-static {v11, v0, v12}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "unitPrefix":Ljava/lang/String;
    .end local v7    # "unitType":Lmtopsdk/mtop/unit/UserUnit$UnitType;
    :cond_4
    return-object v9
.end method

.method private storeApiUnitInfo(Landroid/content/Context;Lmtopsdk/mtop/unit/ApiUnit;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "apiUnit"    # Lmtopsdk/mtop/unit/ApiUnit;
    .param p3, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "UNIT_SETTING_STORE.API_UNIT_ITEM"

    invoke-static {p2, v1, v2}, Lc8/uMp;->writeObject(Ljava/io/Serializable;Ljava/io/File;Ljava/lang/String;)Z

    .line 124
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    const-string/jumbo v1, "mtopsdk.UnitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[storeApiUnitInfo] store apiUnit succeed.apiUnit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "mtopsdk.UnitServiceImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[storeApiUnitInfo] store apiUnit failed.apiUnit="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2, v0}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Lc8/IMp;)V
    .locals 6
    .param p1, "version"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "mtopContext"    # Lc8/IMp;

    .prologue
    .line 245
    iget-object v1, p3, Lc8/IMp;->seqNo:Ljava/lang/String;

    .line 246
    .local v1, "seqNo":Ljava/lang/String;
    iget-object v0, p3, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 247
    .local v0, "mtopInstance":Lc8/AOp;
    invoke-static {p1}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Lc8/yMp;->isBlank(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 248
    :cond_0
    const-string/jumbo v3, "mtopsdk.UnitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[updateAndStoreApiUnitInfo] invalid apiUnitInfo,version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lc8/BMp;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v3, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    iget-object v3, v3, Lmtopsdk/mtop/unit/ApiUnit;->version:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    sget-object v3, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v3}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    const-string/jumbo v3, "mtopsdk.UnitServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[updateAndStoreApiUnitInfo] current apiUnit version is up-to-date,version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v1, v4}, Lc8/BMp;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 258
    :cond_3
    new-instance v2, Lc8/ePp;

    invoke-direct {v2, p0, p2, v0, v1}, Lc8/ePp;-><init>(Lc8/fPp;Ljava/lang/String;Lc8/AOp;Ljava/lang/String;)V

    .line 306
    .local v2, "updateApiUnitTask":Ljava/lang/Runnable;
    invoke-static {v2}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method


# virtual methods
.method public getApiUnit()Lmtopsdk/mtop/unit/ApiUnit;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    return-object v0
.end method

.method public getUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lc8/MK;->getUnitPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "unitPrefix":Ljava/lang/String;
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    const-string/jumbo v0, "[getUnitPrefix] get unit prefix succeed.userid=%s ;utdid=%s ;unitPrefix=%s"

    .line 64
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v2, "mtopsdk.UnitServiceImpl"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, p3, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public loadApiUnitInfo(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v2, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    if-nez v2, :cond_0

    .line 103
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "UNIT_SETTING_STORE.API_UNIT_ITEM"

    invoke-static {v2, v3}, Lc8/uMp;->readObject(Ljava/io/File;Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/unit/ApiUnit;

    .line 104
    .local v0, "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    if-eqz v0, :cond_0

    .line 105
    iput-object v0, p0, Lc8/fPp;->apiUnit:Lmtopsdk/mtop/unit/ApiUnit;

    .line 106
    sget-object v2, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v2}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 107
    const-string/jumbo v2, "mtopsdk.UnitServiceImpl"

    const-string/jumbo v3, "[loadApiUnitInfo] load ApiUnit info from local Storage succeed."

    invoke-static {v2, p2, v3}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "apiUnit":Lmtopsdk/mtop/unit/ApiUnit;
    :cond_0
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v1

    .line 111
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "mtopsdk.UnitServiceImpl"

    const-string/jumbo v3, "[loadApiUnitInfo] parse apiUnit from local Storage error."

    invoke-static {v2, p2, v3, v1}, Lc8/BMp;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setTtid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-static {p1}, Lc8/TI;->setTtid(Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "utdid"    # Ljava/lang/String;
    .param p3, "unitPrefix"    # Ljava/lang/String;
    .param p4, "seqNo"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-static {}, Lc8/SK;->getInstance()Lc8/MK;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lc8/MK;->setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v1}, Lc8/BMp;->isLogEnable(Lmtopsdk/common/util/TBSdkLog$LogEnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    const-string/jumbo v0, "[setUnitPrefix] set unit prefix succeed.userid=%s ;utdid=%s ;unitPrefix=%s"

    .line 74
    .local v0, "log":Ljava/lang/String;
    const-string/jumbo v1, "mtopsdk.UnitServiceImpl"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p4, v2}, Lc8/BMp;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 81
    new-instance v0, Lc8/dPp;

    invoke-direct {v0, p0, p1}, Lc8/dPp;-><init>(Lc8/fPp;Ljava/lang/String;)V

    invoke-static {v0}, Lc8/mPp;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 91
    return-void
.end method

.method public updateAndStoreUnitInfo(Lc8/IMp;)V
    .locals 10
    .param p1, "mtopContext"    # Lc8/IMp;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    .prologue
    .line 136
    iget-object v4, p1, Lc8/IMp;->seqNo:Ljava/lang/String;

    .line 137
    .local v4, "seqNo":Ljava/lang/String;
    iget-object v2, p1, Lc8/IMp;->mtopInstance:Lc8/AOp;

    .line 138
    .local v2, "mtopInstance":Lc8/AOp;
    iget-object v7, p1, Lc8/IMp;->mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-virtual {v7}, Lmtopsdk/mtop/domain/MtopResponse;->getHeaderFields()Ljava/util/Map;

    move-result-object v1

    .line 139
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    const-string/jumbo v7, "x-m-update-unitinfo"

    invoke-static {v1, v7}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    .local v6, "userUnitInfo":Ljava/lang/String;
    invoke-static {v6}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 145
    invoke-virtual {v2}, Lc8/AOp;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v6, v4}, Lc8/fPp;->parseUserUnitInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmtopsdk/mtop/unit/UserUnit;

    move-result-object v5

    .line 146
    .local v5, "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    if-eqz v5, :cond_2

    .line 147
    iget-object v7, v5, Lmtopsdk/mtop/unit/UserUnit;->userId:Ljava/lang/String;

    invoke-virtual {v2}, Lc8/AOp;->getUtdid()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v5, Lmtopsdk/mtop/unit/UserUnit;->unitPrefix:Ljava/lang/String;

    invoke-virtual {p0, v7, v8, v9, v4}, Lc8/fPp;->setUnitPrefix(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .end local v5    # "userUnit":Lmtopsdk/mtop/unit/UserUnit;
    :cond_2
    const-string/jumbo v7, "x-m-update-unitapi"

    invoke-static {v1, v7}, Lc8/pMp;->getSingleHeaderFieldByKey(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "apiUnitInfo":Ljava/lang/String;
    invoke-static {v0}, Lc8/yMp;->isNotBlank(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 154
    invoke-direct {p0, v0, v4}, Lc8/fPp;->parseApiUnitInfoParams(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    .line 155
    .local v3, "params":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v8, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, v7, v8, p1}, Lc8/fPp;->updateAndStoreApiUnitInfo(Ljava/lang/String;Ljava/lang/String;Lc8/IMp;)V

    goto :goto_0
.end method
