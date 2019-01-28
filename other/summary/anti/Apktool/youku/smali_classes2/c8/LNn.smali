.class public Lc8/LNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/MNn;->onInfo(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/MNn;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lc8/MNn;II)V
    .locals 0
    .param p1, "this$1"    # Lc8/MNn;

    .prologue
    .line 170
    iput-object p1, p0, Lc8/LNn;->this$1:Lc8/MNn;

    iput p2, p0, Lc8/LNn;->val$what:I

    iput p3, p0, Lc8/LNn;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 173
    iget-object v0, p0, Lc8/LNn;->this$1:Lc8/MNn;

    iget-object v0, v0, Lc8/MNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$500(Lc8/WNn;)Landroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lc8/LNn;->val$what:I

    iget v3, p0, Lc8/LNn;->val$extra:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    .line 175
    return-void
.end method
