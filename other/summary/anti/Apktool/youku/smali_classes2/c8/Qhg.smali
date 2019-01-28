.class public Lc8/Qhg;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Shg;->publishToQzone(Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Landroid/app/Activity;

.field final synthetic d:Lc8/Dmg;

.field final synthetic e:Lc8/Shg;


# direct methods
.method constructor <init>(Lc8/Shg;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Lc8/Dmg;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lc8/Qhg;->e:Lc8/Shg;

    iput-object p2, p0, Lc8/Qhg;->a:Ljava/lang/String;

    iput-object p3, p0, Lc8/Qhg;->b:Landroid/os/Bundle;

    iput-object p4, p0, Lc8/Qhg;->c:Landroid/app/Activity;

    iput-object p5, p0, Lc8/Qhg;->d:Lc8/Dmg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    .line 135
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc8/Qhg;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 137
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    .line 138
    iget-object v3, p0, Lc8/Qhg;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "videoPath"

    iget-object v5, p0, Lc8/Qhg;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lc8/Qhg;->b:Landroid/os/Bundle;

    const-string/jumbo v4, "videoDuration"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 140
    iget-object v2, p0, Lc8/Qhg;->b:Landroid/os/Bundle;

    const-string/jumbo v3, "videoSize"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    iget-object v0, p0, Lc8/Qhg;->e:Lc8/Shg;

    iget-object v1, p0, Lc8/Qhg;->c:Landroid/app/Activity;

    iget-object v2, p0, Lc8/Qhg;->b:Landroid/os/Bundle;

    iget-object v3, p0, Lc8/Qhg;->d:Lc8/Dmg;

    invoke-static {v0, v1, v2, v3}, Lc8/Shg;->a(Lc8/Shg;Landroid/app/Activity;Landroid/os/Bundle;Lc8/Dmg;)V

    .line 143
    const-string/jumbo v0, "openSDK_LOG.QzonePublish"

    const-string/jumbo v1, "publishToQzone() --end"

    invoke-static {v0, v1}, Lc8/vlg;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method
