.class public Lc8/Iap;
.super Landroid/widget/TextView;
.source "TextViewEllipseEndFixed.java"


# static fields
.field private static final ELLIPSE_END:Ljava/lang/String; = "..."

.field private static final HAS_BUG:Z


# instance fields
.field private mChecked:Z

.field private mELLIPSEWidth:I

.field private mMaxLines:I

.field private mOriText:Ljava/lang/CharSequence;

.field private mSingleLine:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lc8/Iap;->HAS_BUG:Z

    .line 17
    return-void

    .line 18
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 23
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 27
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 31
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 36
    return-void

    .line 23
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lc8/Iap;->mOriText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lc8/Iap;->mOriText:Ljava/lang/CharSequence;

    .line 87
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x1

    .line 91
    sget-boolean v7, Lc8/Iap;->HAS_BUG:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lc8/Iap;->mChecked:Z

    if-nez v7, :cond_4

    .line 92
    iput-boolean v3, p0, Lc8/Iap;->mChecked:Z

    .line 93
    invoke-super {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 94
    .local v0, "layout":Landroid/text/Layout;
    iget v7, p0, Lc8/Iap;->mMaxLines:I

    if-lez v7, :cond_0

    iget v3, p0, Lc8/Iap;->mMaxLines:I

    .line 95
    .local v3, "maxLinex":I
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    if-le v7, v3, :cond_4

    .line 96
    iget v7, p0, Lc8/Iap;->mELLIPSEWidth:I

    if-nez v7, :cond_1

    .line 97
    invoke-virtual {p0}, Lc8/Iap;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lc8/Iap;->mELLIPSEWidth:I

    .line 99
    :cond_1
    invoke-super {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, p0, Lc8/Iap;->mOriText:Ljava/lang/CharSequence;

    .line 100
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v6

    .local v6, "width":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v7

    float-to-int v2, v7

    .local v2, "llw":I
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 102
    .local v1, "lci":I
    iget v7, p0, Lc8/Iap;->mELLIPSEWidth:I

    add-int/2addr v7, v2

    if-le v7, v6, :cond_3

    .line 103
    iget v7, p0, Lc8/Iap;->mELLIPSEWidth:I

    add-int/2addr v7, v2

    sub-int v4, v7, v6

    .line 104
    .local v4, "spc":I
    int-to-float v7, v4

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v5, v7

    .line 105
    .local v5, "w":I
    int-to-float v7, v4

    invoke-super {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v8

    rem-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_2

    .line 106
    add-int/lit8 v5, v5, 0x1

    .line 108
    :cond_2
    sub-int/2addr v1, v5

    .line 112
    .end local v4    # "spc":I
    .end local v5    # "w":I
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lc8/Iap;->mOriText:Ljava/lang/CharSequence;

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-super {p0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .end local v0    # "layout":Landroid/text/Layout;
    .end local v1    # "lci":I
    .end local v2    # "llw":I
    .end local v3    # "maxLinex":I
    .end local v6    # "width":I
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 62
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 63
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onSizeChanged(IIII)V

    .line 64
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "after"    # I

    .prologue
    .line 57
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 58
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 59
    return-void

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 3
    .param p1, "where"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 72
    sget-boolean v2, Lc8/Iap;->HAS_BUG:Z

    if-eqz v2, :cond_2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v2}, Landroid/text/TextUtils$TruncateAt;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 73
    sget-boolean v2, Lc8/Iap;->HAS_BUG:Z

    if-nez v2, :cond_1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 74
    iget-boolean v0, p0, Lc8/Iap;->mSingleLine:Z

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p0, v1}, Lc8/Iap;->setSingleLine(Z)V

    .line 81
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 73
    goto :goto_0

    .line 78
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 79
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    goto :goto_1
.end method

.method public setLineSpacing(FF)V
    .locals 1
    .param p1, "add"    # F
    .param p2, "mult"    # F

    .prologue
    .line 50
    sget-boolean v0, Lc8/Iap;->HAS_BUG:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 51
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 52
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 2
    .param p1, "maxlines"    # I

    .prologue
    const/4 v0, 0x1

    .line 44
    iput p1, p0, Lc8/Iap;->mMaxLines:I

    .line 45
    if-le p1, v0, :cond_0

    sget-boolean v1, Lc8/Iap;->HAS_BUG:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 46
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 47
    return-void

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setPadding(IIII)V
    .locals 1
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc8/Iap;->mChecked:Z

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 69
    return-void
.end method

.method public setSingleLine(Z)V
    .locals 0
    .param p1, "singleLine"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lc8/Iap;->mSingleLine:Z

    .line 40
    invoke-super {p0, p1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 41
    return-void
.end method
