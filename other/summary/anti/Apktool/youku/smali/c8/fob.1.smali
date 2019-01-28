.class public Lc8/fob;
.super Ljava/lang/Object;
.source "ALPOpenManager.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getOpenProcessor(Lc8/wnb;)Lc8/eob;
    .locals 6
    .param p0, "context"    # Lc8/wnb;

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "ALPOpenClient":Lc8/eob;
    iget v1, p0, Lc8/wnb;->openType:I

    packed-switch v1, :pswitch_data_0

    .line 43
    :goto_0
    return-object v0

    .line 36
    :pswitch_0
    new-instance v0, Lc8/dob;

    .end local v0    # "ALPOpenClient":Lc8/eob;
    iget-object v2, p0, Lc8/wnb;->url:Ljava/lang/String;

    iget-object v3, p0, Lc8/wnb;->degradeH5Url:Ljava/lang/String;

    iget-object v4, p0, Lc8/wnb;->actions:Ljava/util/List;

    iget-object v5, p0, Lc8/wnb;->categories:Ljava/util/List;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lc8/dob;-><init>(Lc8/wnb;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 37
    .restart local v0    # "ALPOpenClient":Lc8/eob;
    goto :goto_0

    .line 40
    :pswitch_1
    new-instance v0, Lc8/cob;

    .end local v0    # "ALPOpenClient":Lc8/eob;
    iget-object v1, p0, Lc8/wnb;->url:Ljava/lang/String;

    iget-object v2, p0, Lc8/wnb;->degradeWebview:Landroid/webkit/WebView;

    invoke-direct {v0, p0, v1, v2}, Lc8/cob;-><init>(Lc8/wnb;Ljava/lang/String;Landroid/webkit/WebView;)V

    .restart local v0    # "ALPOpenClient":Lc8/eob;
    goto :goto_0

    .line 34
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static openUrl(Landroid/content/Context;Lc8/wnb;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "distributionContext"    # Lc8/wnb;

    .prologue
    .line 23
    invoke-static {p1}, Lc8/fob;->getOpenProcessor(Lc8/wnb;)Lc8/eob;

    move-result-object v0

    .line 24
    .local v0, "ALPOpenClient":Lc8/eob;
    if-nez v0, :cond_0

    .line 25
    const-string/jumbo v1, "ALPOpenManager"

    const-string/jumbo v2, "openUrl"

    const-string/jumbo v3, "ALPOpenClient is null"

    invoke-static {v1, v2, v3}, Lc8/rob;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    const/16 v1, 0x12f

    .line 28
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p0}, Lc8/eob;->execute(Landroid/content/Context;)I

    move-result v1

    goto :goto_0
.end method
