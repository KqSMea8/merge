.class public Lc8/Rhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Shg;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc8/Dmg;

.field final synthetic b:Lc8/Shg;


# direct methods
.method constructor <init>(Lc8/Shg;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lc8/Rhg;->b:Lc8/Shg;

    iput-object p2, p0, Lc8/Rhg;->a:Lc8/Dmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    .line 150
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v1, "publishToQzone() mediaplayer onError()"

    invoke-static {v0, v1}, Lc8/vlg;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lc8/Rhg;->a:Lc8/Dmg;

    new-instance v1, Lc8/Fmg;

    const/4 v2, -0x5

    const-string/jumbo v3, "\u8bf7\u9009\u62e9\u6709\u6548\u7684\u89c6\u9891\u6587\u4ef6"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lc8/Fmg;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lc8/Dmg;->onError(Lc8/Fmg;)V

    .line 153
    const/4 v0, 0x0

    return v0
.end method
