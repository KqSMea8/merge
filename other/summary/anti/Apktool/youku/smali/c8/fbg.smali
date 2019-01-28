.class public Lc8/fbg;
.super Lc8/abg;
.source "Textarea.java"


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/abg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 37
    return-void
.end method


# virtual methods
.method protected appleStyleAfterCreated(Lc8/peg;)V
    .locals 5
    .param p1, "editText"    # Lc8/peg;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lc8/abg;->appleStyleAfterCreated(Lc8/peg;)V

    .line 48
    invoke-virtual {p0}, Lc8/fbg;->getDomObject()Lc8/qYf;

    move-result-object v3

    invoke-interface {v3}, Lc8/qYf;->getStyles()Lc8/PYf;

    move-result-object v3

    const-string/jumbo v4, "rows"

    invoke-virtual {v3, v4}, Lc8/PYf;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 50
    .local v2, "rowsStr":Ljava/lang/String;
    const/4 v1, 0x2

    .line 52
    .local v1, "rows":I
    :try_start_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 60
    :cond_0
    :goto_0
    invoke-virtual {p1, v1}, Lc8/peg;->setLines(I)V

    .line 61
    invoke-virtual {p1, v1}, Lc8/peg;->setMinLines(I)V

    .line 62
    return-void

    .line 55
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method

.method protected getVerticalGravity()I
    .locals 1

    .prologue
    .line 66
    const/16 v0, 0x30

    return v0
.end method

.method protected bridge synthetic onHostViewInitialized(Landroid/view/View;)V
    .locals 0
    .param p1, "x0"    # Landroid/view/View;

    .prologue
    .line 34
    check-cast p1, Lc8/peg;

    .end local p1    # "x0":Landroid/view/View;
    invoke-virtual {p0, p1}, Lc8/fbg;->onHostViewInitialized(Lc8/peg;)V

    return-void
.end method

.method protected onHostViewInitialized(Lc8/peg;)V
    .locals 1
    .param p1, "host"    # Lc8/peg;

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lc8/peg;->setAllowDisableMovement(Z)V

    .line 42
    invoke-super {p0, p1}, Lc8/abg;->onHostViewInitialized(Lc8/peg;)V

    .line 43
    return-void
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    .line 71
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 78
    invoke-super {p0, p1, p2}, Lc8/abg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    return v1

    .line 71
    :pswitch_0
    const-string/jumbo v2, "rows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 73
    :pswitch_1
    const/4 v1, 0x0

    invoke-static {p2, v1}, Lc8/Dgg;->getInteger(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v0

    .line 74
    .local v0, "rows":Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lc8/fbg;->setRows(I)V

    .line 76
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x3581d9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public setRows(I)V
    .locals 1
    .param p1, "rows"    # I
    .annotation runtime Lc8/vbg;
        name = "rows"
    .end annotation

    .prologue
    .line 83
    invoke-virtual {p0}, Lc8/fbg;->getHostView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lc8/peg;

    .line 84
    .local v0, "text":Lc8/peg;
    if-eqz v0, :cond_0

    if-gtz p1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 88
    :cond_1
    invoke-virtual {v0, p1}, Lc8/peg;->setLines(I)V

    goto :goto_0
.end method
