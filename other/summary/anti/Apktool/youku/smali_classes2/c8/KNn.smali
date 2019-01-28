.class public Lc8/KNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc8/WNn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/WNn;


# direct methods
.method constructor <init>(Lc8/WNn;)V
    .locals 0
    .param p1, "this$0"    # Lc8/WNn;

    .prologue
    .line 150
    iput-object p1, p0, Lc8/KNn;->this$0:Lc8/WNn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lc8/KNn;->this$0:Lc8/WNn;

    const-string/jumbo v1, "onError "

    invoke-static {v0, v1}, Lc8/WNn;->access$000(Lc8/WNn;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lc8/KNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$200(Lc8/WNn;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lc8/JNn;

    invoke-direct {v1, p0, p2, p3}, Lc8/JNn;-><init>(Lc8/KNn;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 162
    const/4 v0, 0x1

    return v0
.end method
