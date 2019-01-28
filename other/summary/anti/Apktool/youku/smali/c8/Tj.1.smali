.class public final Lc8/Tj;
.super Ljava/lang/Object;
.source "MediaBrowserCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompat$SearchResultReceiver;,
        Landroid/support/v4/media/MediaBrowserCompat$ItemReceiver;,
        Lc8/Oj;,
        Lc8/lj;,
        Lc8/Pj;,
        Lc8/Aj;,
        Lc8/zj;,
        Lc8/yj;,
        Lc8/Jj;,
        Lc8/Kj;,
        Lc8/rj;,
        Lc8/Nj;,
        Lc8/qj;,
        Lc8/Sj;,
        Lc8/oj;,
        Landroid/support/v4/media/MediaBrowserCompat$MediaItem;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final EXTRA_PAGE:Ljava/lang/String; = "android.media.browse.extra.PAGE"

.field public static final EXTRA_PAGE_SIZE:Ljava/lang/String; = "android.media.browse.extra.PAGE_SIZE"

.field static final TAG:Ljava/lang/String; = "MediaBrowserCompat"


# instance fields
.field private final mImpl:Lc8/rj;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 89
    const-string/jumbo v0, "MediaBrowserCompat"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lc8/Tj;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceComponent"    # Landroid/content/ComponentName;
    .param p3, "callback"    # Lc8/oj;
    .param p4, "rootHints"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    invoke-static {}, Lc8/zl;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    new-instance v0, Lc8/Aj;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Aj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    iput-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    .line 138
    :goto_0
    return-void

    .line 131
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 132
    new-instance v0, Lc8/zj;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/zj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    iput-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    goto :goto_0

    .line 133
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 134
    new-instance v0, Lc8/yj;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/yj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    iput-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    goto :goto_0

    .line 136
    :cond_3
    new-instance v0, Lc8/Jj;

    invoke-direct {v0, p1, p2, p3, p4}, Lc8/Jj;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Lc8/oj;Landroid/os/Bundle;)V

    iput-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    goto :goto_0
.end method


# virtual methods
.method public connect()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->connect()V

    .line 149
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->disconnect()V

    .line 157
    return-void
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getItem(Ljava/lang/String;Lc8/qj;)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "cb"    # Lc8/qj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 327
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0, p1, p2}, Lc8/rj;->getItem(Ljava/lang/String;Lc8/qj;)V

    .line 328
    return-void
.end method

.method public getRoot()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->getRoot()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 171
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 209
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->getSessionToken()Landroid/support/v4/media/session/MediaSessionCompat$Token;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0}, Lc8/rj;->isConnected()Z

    move-result v0

    return v0
.end method

.method public search(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "callback"    # Lc8/Nj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "query cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 345
    :cond_0
    if-nez p3, :cond_1

    .line 346
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_1
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0, p1, p2, p3}, Lc8/rj;->search(Ljava/lang/String;Landroid/os/Bundle;Lc8/Nj;)V

    .line 349
    return-void
.end method

.method public subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 266
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_0
    if-nez p3, :cond_1

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_1
    if-nez p2, :cond_2

    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_2
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0, p1, p2, p3}, Lc8/rj;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V

    .line 276
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lc8/Sj;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_0
    if-nez p2, :cond_1

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_1
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Lc8/rj;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Lc8/Sj;)V

    .line 239
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 293
    :cond_0
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lc8/rj;->unsubscribe(Ljava/lang/String;Lc8/Sj;)V

    .line 294
    return-void
.end method

.method public unsubscribe(Ljava/lang/String;Lc8/Sj;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "callback"    # Lc8/Sj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "parentId is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 312
    :cond_0
    if-nez p2, :cond_1

    .line 313
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_1
    iget-object v0, p0, Lc8/Tj;->mImpl:Lc8/rj;

    invoke-interface {v0, p1, p2}, Lc8/rj;->unsubscribe(Ljava/lang/String;Lc8/Sj;)V

    .line 316
    return-void
.end method
