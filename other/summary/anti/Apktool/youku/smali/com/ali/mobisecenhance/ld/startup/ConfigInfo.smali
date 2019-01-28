.class public Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
.super Ljava/lang/Object;
.source "ConfigInfo.java"


# instance fields
.field public addDexName:Ljava/lang/String;

.field public applicationName:Ljava/lang/String;

.field public enhanceVersion:Ljava/lang/String;

.field public isReaseMode:Z

.field public isUpload:Z

.field public timeStamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isUpload:Z

    .line 10
    iput-boolean v0, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isReaseMode:Z

    return-void
.end method

.method public static getConfigInfo(Ljava/lang/String;)Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
    .locals 7
    .param p0, "configs"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    .line 29
    new-instance v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;

    invoke-direct {v0}, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;-><init>()V

    .line 30
    .local v0, "cfi":Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 31
    .local v1, "d":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 33
    .local v2, "index":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aget-object v4, v1, v2

    iput-object v4, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->applicationName:Ljava/lang/String;

    .line 34
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v4, v1, v3

    iput-object v4, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    .line 36
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v4, v1, v2

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 37
    iput-boolean v6, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isUpload:Z

    .line 40
    :cond_0
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v4, v1, v3

    const-string/jumbo v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 41
    iput-boolean v6, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isReaseMode:Z

    .line 45
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-object v4, v1, v2

    iput-object v4, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->timeStamp:Ljava/lang/String;

    .line 46
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-object v4, v1, v3

    iput-object v4, v0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->addDexName:Ljava/lang/String;

    .line 48
    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 17
    const-string v1, "applicationName (%s)  enhanceVersion (%s) isUpload (%s) isReaseMode (%s) timeStamp (%s) addDexName(%s)"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->applicationName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->enhanceVersion:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-boolean v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isUpload:Z

    .line 20
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-boolean v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->isReaseMode:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->timeStamp:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-object v4, p0, Lcom/ali/mobisecenhance/ld/startup/ConfigInfo;->addDexName:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 17
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "configout":Ljava/lang/String;
    return-object v0
.end method
