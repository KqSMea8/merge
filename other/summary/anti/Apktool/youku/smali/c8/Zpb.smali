.class public Lc8/Zpb;
.super Lc8/Aeg;
.source "WXRichTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lc8/Aeg;-><init>(Landroid/content/Context;)V

    .line 225
    return-void
.end method

.method private updateSelection(Landroid/view/MotionEvent;Landroid/text/Spannable;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "buffer"    # Landroid/text/Spannable;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 263
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 265
    .local v0, "action":I
    if-eq v0, v7, :cond_0

    if-nez v0, :cond_3

    .line 267
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v5, v9

    .line 268
    .local v5, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v6, v9

    .line 270
    .local v6, "y":I
    invoke-virtual {p0}, Lc8/Zpb;->getPaddingLeft()I

    move-result v9

    sub-int/2addr v5, v9

    .line 271
    invoke-virtual {p0}, Lc8/Zpb;->getPaddingTop()I

    move-result v9

    sub-int/2addr v6, v9

    .line 273
    invoke-virtual {p0}, Lc8/Zpb;->getScrollX()I

    move-result v9

    add-int/2addr v5, v9

    .line 274
    invoke-virtual {p0}, Lc8/Zpb;->getScrollY()I

    move-result v9

    add-int/2addr v6, v9

    .line 276
    invoke-virtual {p0}, Lc8/Zpb;->getTextLayout()Landroid/text/Layout;

    move-result-object v1

    .line 277
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1, v6}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    .line 278
    .local v2, "line":I
    int-to-float v9, v5

    invoke-virtual {v1, v2, v9}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v4

    .line 280
    .local v4, "off":I
    const-class v9, Landroid/text/style/ClickableSpan;

    invoke-interface {p2, v4, v4, v9}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/ClickableSpan;

    .line 282
    .local v3, "link":[Landroid/text/style/ClickableSpan;
    array-length v9, v3

    if-eqz v9, :cond_2

    .line 283
    if-ne v0, v7, :cond_1

    .line 284
    aget-object v8, v3, v8

    invoke-virtual {v8, p0}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    .line 297
    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :goto_0
    return v7

    .line 286
    .restart local v1    # "layout":Landroid/text/Layout;
    .restart local v2    # "line":I
    .restart local v3    # "link":[Landroid/text/style/ClickableSpan;
    .restart local v4    # "off":I
    .restart local v5    # "x":I
    .restart local v6    # "y":I
    :cond_1
    aget-object v9, v3, v8

    .line 287
    invoke-interface {p2, v9}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    aget-object v8, v3, v8

    .line 288
    invoke-interface {p2, v8}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 286
    invoke-static {p2, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .end local v1    # "layout":Landroid/text/Layout;
    .end local v2    # "line":I
    .end local v3    # "link":[Landroid/text/style/ClickableSpan;
    .end local v4    # "off":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_3
    move v7, v8

    .line 297
    goto :goto_0
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    invoke-super {p0, p1}, Lc8/Aeg;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 230
    .local v2, "superResult":Z
    const/4 v0, 0x0

    .line 231
    .local v0, "handled":Z
    invoke-virtual {p0}, Lc8/Zpb;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/Zpb;->getTextLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lc8/Zpb;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    instance-of v3, v3, Landroid/text/Spannable;

    if-eqz v3, :cond_0

    .line 232
    invoke-virtual {p0}, Lc8/Zpb;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    .line 233
    .local v1, "spannable":Landroid/text/Spannable;
    invoke-direct {p0, p1, v1}, Lc8/Zpb;->updateSelection(Landroid/view/MotionEvent;Landroid/text/Spannable;)Z

    move-result v0

    .line 235
    .end local v1    # "spannable":Landroid/text/Spannable;
    :cond_0
    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setTextLayout(Landroid/text/Layout;)V
    .locals 6
    .param p1, "layout"    # Landroid/text/Layout;

    .prologue
    const/4 v3, 0x0

    .line 246
    invoke-super {p0, p1}, Lc8/Aeg;->setTextLayout(Landroid/text/Layout;)V

    .line 247
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    instance-of v4, v4, Landroid/text/Spanned;

    if-eqz v4, :cond_0

    .line 248
    invoke-virtual {p1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Spanned;

    .line 249
    .local v2, "spanned":Landroid/text/Spanned;
    invoke-interface {v2}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Lc8/nqb;

    invoke-interface {v2, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc8/nqb;

    .line 250
    .local v0, "imgSpan":[Lc8/nqb;
    if-eqz v0, :cond_0

    .line 251
    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 252
    .local v1, "span":Lc8/nqb;
    invoke-virtual {v1, p0}, Lc8/nqb;->setView(Landroid/view/View;)V

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 256
    .end local v0    # "imgSpan":[Lc8/nqb;
    .end local v1    # "span":Lc8/nqb;
    .end local v2    # "spanned":Landroid/text/Spanned;
    :cond_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 240
    invoke-super {p0, p1}, Lc8/Aeg;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 241
    const/4 v0, 0x1

    return v0
.end method
