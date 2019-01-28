.class public Lc8/sk;
.super Lc8/qk;
.source "MediaBrowserServiceCompat.java"

# interfaces
.implements Lc8/Sk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/Lk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MediaBrowserServiceImplApi23"
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Lk;


# direct methods
.method constructor <init>(Lc8/Lk;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Lk;

    .prologue
    .line 339
    iput-object p1, p0, Lc8/sk;->this$0:Lc8/Lk;

    invoke-direct {p0, p1}, Lc8/qk;-><init>(Lc8/Lk;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lc8/sk;->this$0:Lc8/Lk;

    invoke-static {v0, p0}, Lc8/Tk;->createService(Landroid/content/Context;Lc8/Sk;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lc8/sk;->mServiceObj:Ljava/lang/Object;

    .line 345
    iget-object v0, p0, Lc8/sk;->mServiceObj:Ljava/lang/Object;

    invoke-static {v0}, Lc8/Qk;->onCreate(Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public onLoadItem(Ljava/lang/String;Lc8/Ok;)V
    .locals 2
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lc8/Ok",
            "<",
            "Landroid/os/Parcel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "resultWrapper":Lc8/Ok;, "Landroid/support/v4/media/MediaBrowserServiceCompatApi21$ResultWrapper<Landroid/os/Parcel;>;"
    new-instance v0, Lc8/rk;

    invoke-direct {v0, p0, p1, p2}, Lc8/rk;-><init>(Lc8/sk;Ljava/lang/Object;Lc8/Ok;)V

    .line 369
    .local v0, "result":Lc8/yk;, "Landroid/support/v4/media/MediaBrowserServiceCompat$Result<Landroid/support/v4/media/MediaBrowserCompat$MediaItem;>;"
    iget-object v1, p0, Lc8/sk;->this$0:Lc8/Lk;

    invoke-virtual {v1, p1, v0}, Lc8/Lk;->onLoadItem(Ljava/lang/String;Lc8/yk;)V

    .line 370
    return-void
.end method
