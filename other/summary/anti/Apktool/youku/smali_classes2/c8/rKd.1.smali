.class public Lc8/rKd;
.super Ljava/lang/Object;
.source "ResourceReader.java"


# static fields
.field private static mInstance:Lc8/rKd;


# instance fields
.field private mAssetManager:Landroid/content/res/AssetManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lc8/rKd;->mContext:Landroid/content/Context;

    .line 25
    invoke-direct {p0}, Lc8/rKd;->init()V

    .line 26
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/rKd;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    sget-object v0, Lc8/rKd;->mInstance:Lc8/rKd;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lc8/rKd;

    invoke-direct {v0, p0}, Lc8/rKd;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/rKd;->mInstance:Lc8/rKd;

    .line 33
    :cond_0
    sget-object v0, Lc8/rKd;->mInstance:Lc8/rKd;

    return-object v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lc8/rKd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iput-object v0, p0, Lc8/rKd;->mAssetManager:Landroid/content/res/AssetManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "resName"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string/jumbo v2, "ResourceReader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get resource type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lc8/xGd;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lc8/rKd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 61
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, p0, Lc8/rKd;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1, p2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 62
    .local v1, "resId":I
    return v1
.end method
