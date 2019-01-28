.class public Lc8/HNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/INn;->onCompletion(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/INn;


# direct methods
.method constructor <init>(Lc8/INn;)V
    .locals 0
    .param p1, "this$1"    # Lc8/INn;

    .prologue
    .line 130
    iput-object p1, p0, Lc8/HNn;->this$1:Lc8/INn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lc8/HNn;->this$1:Lc8/INn;

    iget-object v0, v0, Lc8/INn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$300(Lc8/WNn;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 134
    return-void
.end method
