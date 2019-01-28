.class public Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;
.super Ljava/lang/Object;
.source "ZipAppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/TG;
    }
.end annotation


# instance fields
.field private appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

.field public f:J

.field public folders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public installedSeq:J

.field public installedVersion:Ljava/lang/String;

.field public isOptional:Z

.field public isPreViewApp:Z

.field public localFolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mappingUrl:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public s:J

.field public status:I

.field public t:J

.field private updateInfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

.field private updateType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

.field public v:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    .line 23
    const-string/jumbo v0, "0.0"

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    .line 24
    iput-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    .line 25
    iput v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->status:I

    .line 26
    iput-boolean v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isOptional:Z

    .line 27
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->mappingUrl:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->folders:Ljava/util/ArrayList;

    .line 29
    iput-boolean v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->localFolders:Ljava/util/ArrayList;

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 35
    iput-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->t:J

    .line 36
    iput-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    .line 37
    const-wide/16 v0, 0x5

    iput-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    return-void
.end method


# virtual methods
.method public equals(Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;)Z
    .locals 6
    .param p1, "object"    # Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;

    .prologue
    const/4 v0, 0x0

    .line 131
    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v2, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    if-eqz p1, :cond_2

    iget-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v4, p1, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 135
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public genMidPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    .locals 10

    .prologue
    .line 53
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    move-result-object v0

    .local v0, "arr$":[Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 54
    .local v2, "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0xf0

    and-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 55
    iput-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    .line 56
    iget-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->appType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    .line 59
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    :goto_1
    return-object v4

    .line 53
    .restart local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;
    :cond_1
    sget-object v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;->ZIP_APP_TYPE_UNKNOWN:Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppTypeEnum;

    goto :goto_1
.end method

.method public getInfo()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    .locals 10

    .prologue
    .line 79
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    move-result-object v0

    .local v0, "arr$":[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 80
    .local v2, "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0x3000

    and-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 81
    iput-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateInfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    .line 82
    iget-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateInfo:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    .line 85
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    :goto_1
    return-object v4

    .line 79
    .restart local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;
    :cond_1
    sget-object v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;->ZIP_APP_TYPE_NORMAL:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateInfoEnum;

    goto :goto_1
.end method

.method public getIs2GUpdate()Z
    .locals 4

    .prologue
    .line 92
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v2, 0x4000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIs3GUpdate()Z
    .locals 4

    .prologue
    .line 99
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/32 v2, 0x8000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNameAndSeq()Ljava/lang/String;
    .locals 4

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameandVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 4

    .prologue
    .line 46
    iget-wide v0, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public getUpdateType()Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    .locals 10

    .prologue
    .line 66
    invoke-static {}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->values()[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    move-result-object v0

    .local v0, "arr$":[Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 67
    .local v2, "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    invoke-virtual {v2}, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->getValue()J

    move-result-wide v4

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->f:J

    const-wide/16 v8, 0xf00

    and-long/2addr v6, v8

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 68
    iput-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    .line 69
    iget-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->updateType:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    .line 72
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    :goto_1
    return-object v4

    .line 66
    .restart local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "item":Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;
    :cond_1
    sget-object v4, Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;->ZIP_UPDATE_TYPE_PASSIVE:Landroid/taobao/windvane/packageapp/zipapp/data/ZipUpdateTypeEnum;

    goto :goto_1
.end method

.method public getZipUrl()Ljava/lang/String;
    .locals 8

    .prologue
    .line 139
    invoke-static {}, Lc8/xG;->getPackageZipPrefixAdapter()Lc8/wG;

    move-result-object v0

    .line 140
    .local v0, "adapter":Lc8/wG;
    if-eqz v0, :cond_0

    .line 141
    sget-object v3, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    iget-boolean v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    invoke-interface {v0, v3, v4}, Lc8/wG;->getPackageZipPrefix(Landroid/taobao/windvane/config/EnvEnum;Z)Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    iput-object v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 144
    const-string/jumbo v3, "ZipURL"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Zip url by app config: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/ZH;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    iget-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-nez v3, :cond_5

    .line 149
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v3, v3, Lc8/EB;->packageZipPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 151
    sget-object v3, Lc8/TG;->$SwitchMap$android$taobao$windvane$config$EnvEnum:[I

    sget-object v4, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v4}, Landroid/taobao/windvane/config/EnvEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 162
    const-string/jumbo v3, "https://ossgw.alicdn.com/awp/h5.m.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    .line 190
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0x2f

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_2

    .line 192
    const-string/jumbo v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :cond_2
    const-string/jumbo v3, "app/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v3, "/app-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    iget-wide v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 198
    iget-boolean v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->isPreViewApp:Z

    if-nez v3, :cond_3

    sget-object v3, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    sget-object v4, Landroid/taobao/windvane/config/EnvEnum;->PRE:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v3, v4}, Landroid/taobao/windvane/config/EnvEnum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 200
    iget-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->v:Ljava/lang/String;

    iget-object v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-wide v4, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->s:J

    iget-wide v6, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    .line 201
    const-string/jumbo v3, "-incr"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    :cond_3
    const-string/jumbo v3, ".zip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 153
    .end local v1    # "builder":Ljava/lang/StringBuilder;
    :pswitch_0
    const-string/jumbo v3, "https://ossgw.alicdn.com/awp/h5.m.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 156
    :pswitch_1
    const-string/jumbo v3, "http://h5.wapa.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 159
    :pswitch_2
    const-string/jumbo v3, "http://h5.waptest.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 166
    :cond_4
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v3, v3, Lc8/EB;->packageZipPrefix:Ljava/lang/String;

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto :goto_0

    .line 169
    :cond_5
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v3, v3, Lc8/EB;->packageZipPreviewPrefix:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 171
    sget-object v3, Lc8/TG;->$SwitchMap$android$taobao$windvane$config$EnvEnum:[I

    sget-object v4, Lc8/xB;->env:Landroid/taobao/windvane/config/EnvEnum;

    invoke-virtual {v4}, Landroid/taobao/windvane/config/EnvEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_1

    .line 182
    const-string/jumbo v3, "http://wapp.m.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 173
    :pswitch_3
    const-string/jumbo v3, "http://wapp.m.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 176
    :pswitch_4
    const-string/jumbo v3, "http://wapp.wapa.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 179
    :pswitch_5
    const-string/jumbo v3, "http://wapp.waptest.taobao.com/"

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 186
    :cond_6
    sget-object v3, Lc8/DB;->commonConfig:Lc8/EB;

    iget-object v3, v3, Lc8/EB;->packageZipPreviewPrefix:Ljava/lang/String;

    iput-object v3, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->z:Ljava/lang/String;

    goto/16 :goto_0

    .line 151
    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public isAppInstalled()Z
    .locals 4

    .prologue
    .line 127
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Landroid/taobao/windvane/packageapp/zipapp/data/ZipAppInfo;->installedSeq:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
