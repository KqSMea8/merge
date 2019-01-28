.class public abstract Lc8/eog;
.super Ljava/lang/Object;
.source "DeviceInfoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/cog;,
        Lc8/dog;
    }
.end annotation


# static fields
.field public static volatile sDeviceInfoFetcher:Lc8/eog;


# instance fields
.field private externalInfoModel:Lc8/cog;

.field private ttidModel:Lc8/dog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lc8/bog;

    invoke-direct {v0}, Lc8/bog;-><init>()V

    sput-object v0, Lc8/eog;->sDeviceInfoFetcher:Lc8/eog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lc8/dog;

    invoke-direct {v0}, Lc8/dog;-><init>()V

    iput-object v0, p0, Lc8/eog;->ttidModel:Lc8/dog;

    .line 31
    new-instance v0, Lc8/cog;

    invoke-direct {v0}, Lc8/cog;-><init>()V

    iput-object v0, p0, Lc8/eog;->externalInfoModel:Lc8/cog;

    .line 86
    return-void
.end method

.method private checkAndCreateTtidModel()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 54
    iget-object v6, p0, Lc8/eog;->ttidModel:Lc8/dog;

    iget-object v6, v6, Lc8/dog;->appName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    new-instance v4, Lc8/dog;

    invoke-direct {v4}, Lc8/dog;-><init>()V

    .line 59
    .local v4, "tempTtidModel":Lc8/dog;
    :try_start_0
    invoke-static {}, Lc8/mOp;->getInstance()Lc8/mOp;

    move-result-object v6

    invoke-virtual {v6}, Lc8/mOp;->getGlobalTtid()Ljava/lang/String;

    move-result-object v5

    .line 60
    .local v5, "ttid":Ljava/lang/String;
    const-string/jumbo v6, "(\\w*)@(\\w*)_(\\w*)_(.*)"

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 61
    .local v3, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v3, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 62
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 63
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    .line 64
    .local v1, "groupCount":I
    if-ne v1, v7, :cond_0

    .line 67
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/dog;->channel:Ljava/lang/String;

    .line 68
    const/4 v6, 0x2

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/dog;->appName:Ljava/lang/String;

    .line 69
    const/4 v6, 0x3

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/dog;->platform:Ljava/lang/String;

    .line 70
    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lc8/dog;->appVersion:Ljava/lang/String;

    .line 71
    iput-object v4, p0, Lc8/eog;->ttidModel:Lc8/dog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v1    # "groupCount":I
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "pattern":Ljava/util/regex/Pattern;
    .end local v5    # "ttid":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lc8/mog;->commitAntProtectPoint(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public getExternalInfoModel()Lc8/cog;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc8/eog;->externalInfoModel:Lc8/cog;

    return-object v0
.end method

.method public getTtidModel()Lc8/dog;
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lc8/eog;->checkAndCreateTtidModel()V

    .line 45
    iget-object v0, p0, Lc8/eog;->ttidModel:Lc8/dog;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Lc8/TI;->getUserId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUtdid(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p1}, Lcom/ut/device/UTDevice;->getUtdid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
