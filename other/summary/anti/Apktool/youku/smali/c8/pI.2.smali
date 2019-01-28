.class public Lc8/pI;
.super Ljava/lang/Object;
.source "WVMetaManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WVMetaManager"

.field private static volatile instance:Lc8/pI;


# instance fields
.field private metaDataObject:Lorg/json/JSONObject;

.field private metaKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x0

    sput-object v0, Lc8/pI;->instance:Lc8/pI;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lc8/pI;->metaDataObject:Lorg/json/JSONObject;

    .line 14
    iput-object v0, p0, Lc8/pI;->metaKeys:[Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lc8/pI;
    .locals 2

    .prologue
    .line 17
    sget-object v0, Lc8/pI;->instance:Lc8/pI;

    if-nez v0, :cond_1

    .line 18
    const-class v1, Lc8/pI;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Lc8/pI;->instance:Lc8/pI;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lc8/pI;

    invoke-direct {v0}, Lc8/pI;-><init>()V

    sput-object v0, Lc8/pI;->instance:Lc8/pI;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Lc8/pI;->instance:Lc8/pI;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lc8/pI;->metaDataObject:Lorg/json/JSONObject;

    .line 48
    return-void
.end method

.method public getMetaData()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lc8/pI;->metaDataObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getMetaKeys()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lc8/pI;->metaKeys:[Ljava/lang/String;

    return-object v0
.end method

.method public setMetaData(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 30
    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 32
    .local v0, "length":I
    const/4 v1, 0x1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 34
    .end local v0    # "length":I
    :cond_0
    const-string/jumbo v1, "\\"

    const-string/jumbo v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 35
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lc8/pI;->metaDataObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_1
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    iput-object v1, p0, Lc8/pI;->metaDataObject:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public setMetaKeys([Ljava/lang/String;)V
    .locals 0
    .param p1, "keys"    # [Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lc8/pI;->metaKeys:[Ljava/lang/String;

    .line 56
    return-void
.end method
