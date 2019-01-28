.class public Lc8/ZNn;
.super Lc8/xNn;
.source "UMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc8/YNn;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lc8/ZNn;

    invoke-static {v0}, Lcom/ali/mobisecenhance/ReflectMap;->getSimpleName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc8/ZNn;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lc8/xNn;-><init>()V

    .line 110
    return-void
.end method


# virtual methods
.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoHeight()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoWidth()I
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isLooping()Z
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 53
    return-void
.end method

.method public prepare()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method public prepareAsync()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public release()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public seekTo(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 83
    return-void
.end method

.method public setAudioStreamType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 58
    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public setDisplay(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 88
    return-void
.end method

.method public setScreenOnWhilePlaying(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 63
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
