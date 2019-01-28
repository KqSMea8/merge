.class public final Lc8/qef;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/sef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private dbName:Ljava/lang/String;

.field private fileCapacity:J

.field private memCacheSize:I

.field private rootDirName:Ljava/lang/String;

.field private useTemplateIdAsFileName:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    const/16 v0, 0x8

    iput v0, p0, Lc8/qef;->memCacheSize:I

    .line 411
    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Lc8/qef;->fileCapacity:J

    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/qef;->useTemplateIdAsFileName:Z

    .line 416
    return-void
.end method

.method static synthetic access$000(Lc8/qef;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget-object v0, p0, Lc8/qef;->rootDirName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lc8/qef;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget-object v0, p0, Lc8/qef;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lc8/qef;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget-object v0, p0, Lc8/qef;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lc8/qef;)I
    .locals 1
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget v0, p0, Lc8/qef;->memCacheSize:I

    return v0
.end method

.method static synthetic access$400(Lc8/qef;)J
    .locals 2
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget-wide v0, p0, Lc8/qef;->fileCapacity:J

    return-wide v0
.end method

.method static synthetic access$500(Lc8/qef;)Z
    .locals 1
    .param p0, "x0"    # Lc8/qef;

    .prologue
    .line 401
    iget-boolean v0, p0, Lc8/qef;->useTemplateIdAsFileName:Z

    return v0
.end method


# virtual methods
.method public build()Lc8/sef;
    .locals 2

    .prologue
    .line 419
    iget-object v0, p0, Lc8/qef;->context:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc8/qef;->rootDirName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc8/qef;->dbName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 423
    :cond_1
    new-instance v0, Lc8/sef;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lc8/sef;-><init>(Lc8/qef;Lc8/nef;)V

    return-object v0
.end method

.method public withContext(Landroid/content/Context;)Lc8/qef;
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 427
    iput-object p1, p0, Lc8/qef;->context:Landroid/content/Context;

    .line 428
    return-object p0
.end method

.method public withDbName(Ljava/lang/String;)Lc8/qef;
    .locals 0
    .param p1, "dbName"    # Ljava/lang/String;

    .prologue
    .line 437
    iput-object p1, p0, Lc8/qef;->dbName:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public withFileCapacity(J)Lc8/qef;
    .locals 1
    .param p1, "fileCapacity"    # J

    .prologue
    .line 447
    iput-wide p1, p0, Lc8/qef;->fileCapacity:J

    .line 448
    return-object p0
.end method

.method public withMemCacheSize(I)Lc8/qef;
    .locals 0
    .param p1, "memCacheSize"    # I

    .prologue
    .line 442
    iput p1, p0, Lc8/qef;->memCacheSize:I

    .line 443
    return-object p0
.end method

.method public withRootDirName(Ljava/lang/String;)Lc8/qef;
    .locals 0
    .param p1, "rootDirName"    # Ljava/lang/String;

    .prologue
    .line 432
    iput-object p1, p0, Lc8/qef;->rootDirName:Ljava/lang/String;

    .line 433
    return-object p0
.end method

.method public withUseTemplateIdAsFileName(Z)Lc8/qef;
    .locals 0
    .param p1, "use"    # Z

    .prologue
    .line 452
    iput-boolean p1, p0, Lc8/qef;->useTemplateIdAsFileName:Z

    .line 453
    return-object p0
.end method
