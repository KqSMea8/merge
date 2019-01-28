.class public Lc8/xk;
.super Ljava/lang/Object;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lc8/nk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceImplBase"
.end annotation


# instance fields
.field private mMessenger:Landroid/os/Messenger;

.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;

    .prologue
    .line 157
    iput-object p1, p0, Lc8/xk;->this$0:Lc8/Lk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBrowserRootHints()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mCurConnection:Lc8/mk;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This should be called inside of onLoadChildren or onLoadItem methods"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :cond_0
    iget-object v0, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v0, v0, Lc8/mk;->rootHints:Landroid/os/Bundle;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mCurConnection:Lc8/mk;

    iget-object v1, v1, Lc8/mk;->rootHints:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public notifyChildrenChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "parentId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "options"    # Landroid/os/Bundle;

    .prologue
    .line 195
    iget-object v0, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/wk;

    invoke-direct {v1, p0, p1, p2}, Lc8/wk;-><init>(Lc8/xk;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->post(Ljava/lang/Runnable;)Z

    .line 213
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    const-string/jumbo v0, "android.media.browse.MediaBrowserService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lc8/xk;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 170
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 162
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v1, v1, Lc8/Lk;->mHandler:Lc8/Kk;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lc8/xk;->mMessenger:Landroid/os/Messenger;

    .line 163
    return-void
.end method

.method public setSessionToken(Landroid/support/v4/media/session/MediaSessionCompat$Token;)V
    .locals 2
    .param p1, "token"    # Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .prologue
    .line 175
    iget-object v0, p0, Lc8/xk;->this$0:Lc8/Lk;

    iget-object v0, v0, Lc8/Lk;->mHandler:Lc8/Kk;

    new-instance v1, Lc8/vk;

    invoke-direct {v1, p0, p1}, Lc8/vk;-><init>(Lc8/xk;Landroid/support/v4/media/session/MediaSessionCompat$Token;)V

    invoke-virtual {v0, v1}, Lc8/Kk;->post(Ljava/lang/Runnable;)Z

    .line 191
    return-void
.end method
