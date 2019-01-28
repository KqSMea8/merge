.class public Lc8/FPg;
.super Ljava/lang/Object;
.source "TypefaceManager.java"


# static fields
.field private static sInstance:Lc8/FPg;


# instance fields
.field private mApplicationContext:Landroid/content/Context;

.field private mPendingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lc8/FPg;->mPendingMap:Ljava/util/HashMap;

    .line 40
    iput-object p1, p0, Lc8/FPg;->mApplicationContext:Landroid/content/Context;

    .line 41
    return-void
.end method

.method private checkIfFontDownloaded(Ljava/lang/String;I)Z
    .locals 4
    .param p1, "fontAttr"    # Ljava/lang/String;
    .param p2, "style"    # I

    .prologue
    const/4 v2, 0x0

    .line 73
    iget-object v3, p0, Lc8/FPg;->mApplicationContext:Landroid/content/Context;

    invoke-static {v3}, Lc8/zPg;->getInstance(Landroid/content/Context;)Lc8/zPg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lc8/zPg;->getFontFamilyInfo(Ljava/lang/String;)Lc8/uPg;

    move-result-object v0

    .line 75
    .local v0, "familyInfo":Lc8/uPg;
    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0, p2}, Lc8/uPg;->findBestMatch(I)Lc8/EPg;

    move-result-object v1

    .line 78
    .local v1, "typefaceInfo":Lc8/EPg;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc8/EPg;->checkAvailable()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 81
    .end local v1    # "typefaceInfo":Lc8/EPg;
    :cond_0
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lc8/FPg;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget-object v0, Lc8/FPg;->sInstance:Lc8/FPg;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lc8/FPg;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lc8/FPg;->sInstance:Lc8/FPg;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lc8/FPg;

    invoke-direct {v0, p0}, Lc8/FPg;-><init>(Landroid/content/Context;)V

    sput-object v0, Lc8/FPg;->sInstance:Lc8/FPg;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    :cond_1
    sget-object v0, Lc8/FPg;->sInstance:Lc8/FPg;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public setTypeface(Ljava/lang/String;Landroid/widget/TextView;I)Z
    .locals 2
    .param p1, "fontAttr"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "fontStyle"    # I

    .prologue
    .line 48
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 49
    iget-object v0, p0, Lc8/FPg;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-static {v0, p1, p3, v1}, Lc8/GPg;->createTypeface(Landroid/content/Context;Ljava/lang/String;ILandroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 51
    invoke-direct {p0, p1, p3}, Lc8/FPg;->checkIfFontDownloaded(Ljava/lang/String;I)Z

    move-result v0

    .line 54
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
