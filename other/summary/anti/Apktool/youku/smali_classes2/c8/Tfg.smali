.class public Lc8/Tfg;
.super Ljava/lang/Object;
.source "FontDO.java"


# static fields
.field public static final STATE_FAILED:I = 0x3

.field public static final STATE_INIT:I = 0x0

.field public static final STATE_INVALID:I = -0x1

.field public static final STATE_LOADING:I = 0x1

.field public static final STATE_SUCCESS:I = 0x2

.field public static final TYPE_FILE:I = 0x2

.field public static final TYPE_LOCAL:I = 0x3

.field public static final TYPE_NETWORK:I = 0x1

.field public static final TYPE_UNKNOWN:I


# instance fields
.field private final mFontFamilyName:Ljava/lang/String;

.field private mState:I

.field private mType:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lc8/nVf;)V
    .locals 1
    .param p1, "fontFamilyName"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .param p3, "instance"    # Lc8/nVf;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    .line 34
    const/4 v0, 0x1

    iput v0, p0, Lc8/Tfg;->mType:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lc8/Tfg;->mState:I

    .line 51
    iput-object p1, p0, Lc8/Tfg;->mFontFamilyName:Ljava/lang/String;

    .line 52
    invoke-direct {p0, p2, p3}, Lc8/Tfg;->parseSrc(Ljava/lang/String;Lc8/nVf;)V

    .line 53
    return-void
.end method

.method private parseSrc(Ljava/lang/String;Lc8/nVf;)V
    .locals 6
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "instance"    # Lc8/nVf;

    .prologue
    const/4 v5, -0x1

    .line 59
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 60
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    iput v5, p0, Lc8/Tfg;->mState:I

    .line 62
    const-string/jumbo v3, "TypefaceUtil"

    const-string/jumbo v4, "font src is empty."

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    :goto_1
    return-void

    .line 59
    :cond_1
    const-string/jumbo p1, ""

    goto :goto_0

    .line 66
    :cond_2
    const-string/jumbo v3, "^url\\(\'.*\'\\)$"

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 67
    const/4 v3, 0x5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    .local v1, "uri":Landroid/net/Uri;
    if-eqz p2, :cond_3

    .line 70
    const-string/jumbo v3, "font"

    invoke-virtual {p2, v1, v3}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 72
    :cond_3
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    .line 75
    :try_start_0
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 76
    .local v0, "scheme":Ljava/lang/String;
    const-string/jumbo v3, "http"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string/jumbo v3, "https"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 78
    :cond_4
    const/4 v3, 0x1

    iput v3, p0, Lc8/Tfg;->mType:I

    .line 87
    :goto_2
    const/4 v3, 0x0

    iput v3, p0, Lc8/Tfg;->mState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :goto_3
    invoke-static {}, Lc8/UUf;->isApkDebugable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const-string/jumbo v3, "TypefaceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "src:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lc8/Tfg;->mType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 79
    .restart local v0    # "scheme":Ljava/lang/String;
    .restart local v1    # "uri":Landroid/net/Uri;
    .restart local v2    # "url":Ljava/lang/String;
    :cond_5
    :try_start_1
    const-string/jumbo v3, "file"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 80
    const/4 v3, 0x2

    iput v3, p0, Lc8/Tfg;->mType:I

    .line 81
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 89
    .end local v0    # "scheme":Ljava/lang/String;
    :catch_0
    move-exception v3

    iput v5, p0, Lc8/Tfg;->mType:I

    .line 90
    const-string/jumbo v3, "TypefaceUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "URI.create(mUrl) failed mUrl: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc8/xgg;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 82
    .restart local v0    # "scheme":Ljava/lang/String;
    :cond_6
    :try_start_2
    const-string/jumbo v3, "local"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 83
    const/4 v3, 0x3

    iput v3, p0, Lc8/Tfg;->mType:I

    goto/16 :goto_2

    .line 85
    :cond_7
    const/4 v3, 0x0

    iput v3, p0, Lc8/Tfg;->mType:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 93
    .end local v0    # "scheme":Ljava/lang/String;
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "url":Ljava/lang/String;
    :cond_8
    iput-object p1, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    .line 94
    iput v5, p0, Lc8/Tfg;->mState:I

    goto/16 :goto_3
.end method


# virtual methods
.method public getFontFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lc8/Tfg;->mFontFamilyName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lc8/Tfg;->mState:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lc8/Tfg;->mType:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lc8/Tfg;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lc8/Tfg;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 123
    iput p1, p0, Lc8/Tfg;->mState:I

    .line 124
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .prologue
    .line 115
    iput-object p1, p0, Lc8/Tfg;->mTypeface:Landroid/graphics/Typeface;

    .line 116
    return-void
.end method
