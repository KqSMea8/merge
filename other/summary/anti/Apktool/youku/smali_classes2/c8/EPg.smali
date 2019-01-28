.class public Lc8/EPg;
.super Ljava/lang/Object;
.source "TypefaceInfo.java"


# instance fields
.field private mIsItalic:Z

.field private mName:Ljava/lang/String;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceDownloadUrl:Ljava/lang/String;

.field private mTypefaceFilePath:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkAvailable()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 89
    iget-object v1, p0, Lc8/EPg;->mTypeface:Landroid/graphics/Typeface;

    if-eqz v1, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lc8/EPg;->mTypefaceDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lc8/EPg;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 78
    iget-object v1, p0, Lc8/EPg;->mTypeface:Landroid/graphics/Typeface;

    if-nez v1, :cond_0

    iget-object v1, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 80
    :try_start_0
    iget-object v1, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lc8/EPg;->mTypeface:Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :cond_0
    :goto_0
    iget-object v1, p0, Lc8/EPg;->mTypeface:Landroid/graphics/Typeface;

    return-object v1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public getWeight()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lc8/EPg;->mWeight:I

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lc8/EPg;->mIsItalic:Z

    return v0
.end method

.method setIsItalic(Z)V
    .locals 0
    .param p1, "isItalic"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lc8/EPg;->mIsItalic:Z

    .line 39
    return-void
.end method

.method setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lc8/EPg;->mName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method setTypefaceDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "typefaceDownloadUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lc8/EPg;->mTypefaceDownloadUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method setTypefaceFilePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "typefaceFilePath"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lc8/EPg;->mTypefaceFilePath:Ljava/lang/String;

    .line 43
    return-void
.end method

.method setWeight(I)V
    .locals 0
    .param p1, "weight"    # I

    .prologue
    .line 34
    iput p1, p0, Lc8/EPg;->mWeight:I

    .line 35
    return-void
.end method
