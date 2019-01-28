.class public Lc8/xcg;
.super Lc8/tbg;
.source "WXVideo.java"


# annotations
.annotation runtime Lc8/JVf;
    lazyload = false
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc8/tbg",
        "<",
        "Landroid/widget/FrameLayout;",
        ">;"
    }
.end annotation


# instance fields
.field private mAutoPlay:Z

.field private mError:Z

.field mPrepared:Z

.field private mStopped:Z

.field private mWrapper:Lc8/Ceg;


# direct methods
.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "instanceId"    # Ljava/lang/String;
    .param p5, "isLazy"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p5}, Lc8/xcg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V
    .locals 0
    .param p1, "instance"    # Lc8/nVf;
    .param p2, "dom"    # Lc8/HYf;
    .param p3, "parent"    # Lc8/scg;
    .param p4, "isLazy"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lc8/tbg;-><init>(Lc8/nVf;Lc8/HYf;Lc8/scg;Z)V

    .line 63
    return-void
.end method

.method static synthetic access$002(Lc8/xcg;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/xcg;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lc8/xcg;->mError:Z

    return p1
.end method

.method static synthetic access$100(Lc8/xcg;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lc8/xcg;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lc8/xcg;->notify(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lc8/xcg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/xcg;

    .prologue
    .line 45
    iget-boolean v0, p0, Lc8/xcg;->mAutoPlay:Z

    return v0
.end method

.method static synthetic access$300(Lc8/xcg;)Z
    .locals 1
    .param p0, "x0"    # Lc8/xcg;

    .prologue
    .line 45
    iget-boolean v0, p0, Lc8/xcg;->mStopped:Z

    return v0
.end method

.method static synthetic access$302(Lc8/xcg;Z)Z
    .locals 0
    .param p0, "x0"    # Lc8/xcg;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lc8/xcg;->mStopped:Z

    return p1
.end method

.method private notify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "newStatus"    # Ljava/lang/String;

    .prologue
    .line 157
    new-instance v4, Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 158
    .local v4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "playStatus"

    invoke-interface {v4, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string/jumbo v0, "timeStamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 162
    .local v5, "domChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v6, "attrsChanges":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "playStatus"

    invoke-interface {v6, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string/jumbo v0, "attrs"

    invoke-interface {v5, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {}, Lc8/pVf;->getInstance()Lc8/pVf;

    move-result-object v0

    invoke-virtual {p0}, Lc8/xcg;->getInstanceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lc8/xcg;->getRef()Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lc8/pVf;->fireEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    .line 167
    return-void
.end method


# virtual methods
.method public bindData(Lc8/tbg;)V
    .locals 1
    .param p1, "component"    # Lc8/tbg;

    .prologue
    .line 171
    invoke-super {p0, p1}, Lc8/tbg;->bindData(Lc8/tbg;)V

    .line 172
    const-string/jumbo v0, "appear"

    invoke-virtual {p0, v0}, Lc8/xcg;->addEvent(Ljava/lang/String;)V

    .line 173
    return-void
.end method

.method public destroy()V
    .locals 0

    .prologue
    .line 183
    invoke-super {p0}, Lc8/tbg;->destroy()V

    .line 184
    return-void
.end method

.method protected bridge synthetic initComponentHostView(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1, "x0"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lc8/xcg;->initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method protected initComponentHostView(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 67
    new-instance v0, Lc8/Ceg;

    invoke-direct {v0, p1}, Lc8/Ceg;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "video":Lc8/Ceg;
    new-instance v1, Lc8/tcg;

    invoke-direct {v1, p0, v0}, Lc8/tcg;-><init>(Lc8/xcg;Lc8/Ceg;)V

    invoke-virtual {v0, v1}, Lc8/Ceg;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 87
    new-instance v1, Lc8/ucg;

    invoke-direct {v1, p0, v0}, Lc8/ucg;-><init>(Lc8/xcg;Lc8/Ceg;)V

    invoke-virtual {v0, v1}, Lc8/Ceg;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 116
    new-instance v1, Lc8/vcg;

    invoke-direct {v1, p0}, Lc8/vcg;-><init>(Lc8/xcg;)V

    invoke-virtual {v0, v1}, Lc8/Ceg;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 129
    new-instance v1, Lc8/wcg;

    invoke-direct {v1, p0}, Lc8/wcg;-><init>(Lc8/xcg;)V

    invoke-virtual {v0, v1}, Lc8/Ceg;->setOnVideoPauseListener(Lc8/Beg;)V

    .line 152
    iput-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    .line 153
    return-object v0
.end method

.method public notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "wxEventType"    # Ljava/lang/String;
    .param p2, "direction"    # Ljava/lang/String;

    .prologue
    .line 177
    invoke-super {p0, p1, p2}, Lc8/tbg;->notifyAppearStateChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->createVideoViewIfVisible()Z

    .line 179
    return-void
.end method

.method public setAutoPlay(Z)V
    .locals 1
    .param p1, "autoPlay"    # Z
    .annotation runtime Lc8/vbg;
        name = "autoPlay"
    .end annotation

    .prologue
    .line 226
    iput-boolean p1, p0, Lc8/xcg;->mAutoPlay:Z

    .line 227
    if-eqz p1, :cond_0

    .line 228
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->createIfNotExist()Lc8/Deg;

    .line 229
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->start()V

    .line 231
    :cond_0
    return-void
.end method

.method public setPlaystatus(Ljava/lang/String;)V
    .locals 2
    .param p1, "playstatus"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "playStatus"
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 238
    iget-boolean v0, p0, Lc8/xcg;->mPrepared:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lc8/xcg;->mError:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lc8/xcg;->mStopped:Z

    if-nez v0, :cond_3

    .line 239
    const-string/jumbo v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->start()V

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const-string/jumbo v0, "pause"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->pause()V

    goto :goto_0

    .line 243
    :cond_2
    const-string/jumbo v0, "stop"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->stopPlayback()V

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc8/xcg;->mStopped:Z

    goto :goto_0

    .line 247
    :cond_3
    iget-boolean v0, p0, Lc8/xcg;->mError:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lc8/xcg;->mStopped:Z

    if-eqz v0, :cond_0

    :cond_4
    const-string/jumbo v0, "play"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 248
    iput-boolean v1, p0, Lc8/xcg;->mError:Z

    .line 249
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->resume()V

    .line 251
    iget-object v0, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v0}, Lc8/Ceg;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method protected setProperty(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 188
    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 208
    invoke-super {p0, p1, p2}, Lc8/tbg;->setProperty(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v3

    :cond_1
    :goto_1
    return v3

    .line 188
    :sswitch_0
    const-string/jumbo v5, "src"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v5, "autoPlay"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string/jumbo v5, "playStatus"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x2

    goto :goto_0

    .line 190
    :pswitch_0
    invoke-static {p2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "src":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 192
    invoke-virtual {p0, v1}, Lc8/xcg;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 196
    .end local v1    # "src":Ljava/lang/String;
    :pswitch_1
    invoke-static {p2, v6}, Lc8/Dgg;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 197
    .local v0, "result":Ljava/lang/Boolean;
    if-eqz v0, :cond_1

    .line 198
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {p0, v4}, Lc8/xcg;->setAutoPlay(Z)V

    goto :goto_1

    .line 202
    .end local v0    # "result":Ljava/lang/Boolean;
    :pswitch_2
    invoke-static {p2, v6}, Lc8/Dgg;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 203
    .local v2, "status":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p0, v2}, Lc8/xcg;->setPlaystatus(Ljava/lang/String;)V

    goto :goto_1

    .line 188
    nop

    :sswitch_data_0
    .sparse-switch
        0x1bde4 -> :sswitch_0
        0x55bf6d83 -> :sswitch_1
        0x5e571046 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 4
    .param p1, "src"    # Ljava/lang/String;
    .annotation runtime Lc8/vbg;
        name = "src"
    .end annotation

    .prologue
    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lc8/xcg;->getHostView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 218
    invoke-virtual {p0}, Lc8/xcg;->getInstance()Lc8/nVf;

    move-result-object v0

    .line 219
    .local v0, "instance":Lc8/nVf;
    iget-object v1, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "video"

    invoke-virtual {v0, v2, v3}, Lc8/nVf;->rewriteUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Lc8/Ceg;->setVideoURI(Landroid/net/Uri;)V

    .line 220
    iget-object v1, p0, Lc8/xcg;->mWrapper:Lc8/Ceg;

    invoke-virtual {v1}, Lc8/Ceg;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
