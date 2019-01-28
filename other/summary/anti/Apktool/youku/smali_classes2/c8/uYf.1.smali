.class public Lc8/uYf;
.super Lc8/ZXf;
.source "TextAreaEditTextDomObject.java"


# static fields
.field public static final DEFAULT_ROWS:I = 0x2


# instance fields
.field private mNumberOfLines:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lc8/ZXf;-><init>()V

    .line 29
    const/4 v0, 0x2

    iput v0, p0, Lc8/uYf;->mNumberOfLines:I

    return-void
.end method


# virtual methods
.method protected getMeasureHeight()F
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lc8/uYf;->getMeasuredLineHeight()F

    move-result v0

    iget v1, p0, Lc8/uYf;->mNumberOfLines:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method protected updateStyleAndAttrs()V
    .locals 6

    .prologue
    .line 39
    invoke-super {p0}, Lc8/ZXf;->updateStyleAndAttrs()V

    .line 40
    invoke-virtual {p0}, Lc8/uYf;->getAttrs()Lc8/xYf;

    move-result-object v4

    const-string/jumbo v5, "rows"

    invoke-virtual {v4, v5}, Lc8/xYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 41
    .local v2, "raw":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 56
    .end local v2    # "raw":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 43
    .restart local v2    # "raw":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_2

    move-object v3, v2

    .line 44
    check-cast v3, Ljava/lang/String;

    .line 46
    .local v3, "rowsStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 47
    .local v1, "lines":I
    if-lez v1, :cond_0

    .line 48
    iput v1, p0, Lc8/uYf;->mNumberOfLines:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v1    # "lines":I
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "rowsStr":Ljava/lang/String;
    :cond_2
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 54
    check-cast v2, Ljava/lang/Integer;

    .end local v2    # "raw":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lc8/uYf;->mNumberOfLines:I

    goto :goto_0
.end method
