.class public Lc8/vpb;
.super Lc8/tbg;
.source "WXCountDown.java"


# instance fields
.field private mCountDown:Lc8/wvb;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "node"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;)V

    .line 27
    return-void
.end method

.method private getFontSize(Ljava/lang/String;)I
    .locals 1
    .param p1, "fontSize"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-static {p1}, Lc8/Dgg;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 79
    .local v0, "ifontSize":I
    if-gtz v0, :cond_0

    .line 80
    const/16 v0, 0x20

    .line 82
    :cond_0
    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 111
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 112
    invoke-virtual {p0}, Lc8/vpb;->getHostView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0}, Lc8/wvb;->destroy()V

    .line 115
    :cond_0
    return-void
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    new-instance v0, Lc8/wvb;

    invoke-virtual {p0}, Lc8/vpb;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lc8/wvb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    .line 32
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0}, Lc8/wvb;->getView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public setCountdownTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "countdownTime"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "countdownTime"
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0, p1}, Lc8/wvb;->setTime(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setFontSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "fontSize"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "fontSize"
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lc8/vpb;->getFontSize(Ljava/lang/String;)I

    move-result v0

    .line 52
    .local v0, "ifontSize":I
    if-lez v0, :cond_0

    .line 54
    sget v2, Lc8/UUf;->sDefaultWidth:I

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 55
    add-int/lit8 v2, v0, -0x3

    int-to-float v2, v2

    invoke-static {v2}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v2

    float-to-int v1, v2

    .line 59
    .local v1, "size":I
    :goto_0
    iget-object v2, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lc8/wvb;->setFontSize(II)V

    .line 61
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 57
    :cond_1
    add-int/lit8 v2, v0, -0x2

    int-to-float v2, v2

    invoke-static {v2}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v2

    float-to-int v1, v2

    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public setFormatterValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "formatterValue"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "formatterValue"
    .end annotation

    .prologue
    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0, p1}, Lc8/wvb;->setDateFormat(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "color"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "textColor"
    .end annotation

    .prologue
    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0, p1}, Lc8/wvb;->setCountDownTextColor(Ljava/lang/String;)V

    .line 40
    :cond_0
    return-void
.end method

.method public setTimeColor(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeColor"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "timeColor"
    .end annotation

    .prologue
    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0, p1}, Lc8/wvb;->setTimeColor(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public setTimeFontSize(Ljava/lang/String;)V
    .locals 4
    .param p1, "timeFontSize"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "timeFontSize"
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lc8/vpb;->getFontSize(Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "ifontSize":I
    if-lez v0, :cond_0

    .line 68
    sget v2, Lc8/UUf;->sDefaultWidth:I

    invoke-static {}, Lc8/Jgg;->getScreenWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 69
    add-int/lit8 v2, v0, -0x3

    int-to-float v2, v2

    invoke-static {v2}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v2

    float-to-int v1, v2

    .line 73
    .local v1, "size":I
    :goto_0
    iget-object v2, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lc8/wvb;->setTimeFontSize(II)V

    .line 75
    .end local v1    # "size":I
    :cond_0
    return-void

    .line 71
    :cond_1
    add-int/lit8 v2, v0, -0x2

    int-to-float v2, v2

    invoke-static {v2}, Lc8/Jgg;->getRealPxByWidth(F)F

    move-result v2

    float-to-int v1, v2

    .restart local v1    # "size":I
    goto :goto_0
.end method

.method public updateProperties(Ljava/util/Map;)V
    .locals 1
    .param p1, "props"    # Ljava/util/Map;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lc8/tbg;->updateProperties(Ljava/util/Map;)V

    .line 106
    iget-object v0, p0, Lc8/vpb;->mCountDown:Lc8/wvb;

    invoke-virtual {v0}, Lc8/wvb;->start()V

    .line 107
    return-void
.end method
