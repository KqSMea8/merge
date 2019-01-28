.class public Lc8/Ddo;
.super Ljava/lang/Object;
.source "SimpleVideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/Ndo;->openVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lc8/Ndo;


# direct methods
.method constructor <init>(Lc8/Ndo;)V
    .locals 0
    .param p1, "this$0"    # Lc8/Ndo;

    .prologue
    .line 251
    iput-object p1, p0, Lc8/Ddo;->this$0:Lc8/Ndo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 254
    iget-object v0, p0, Lc8/Ddo;->this$0:Lc8/Ndo;

    invoke-static {v0}, Lc8/Ndo;->access$000(Lc8/Ndo;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    move-result v0

    return v0
.end method
