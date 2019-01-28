.class public Lc8/JNn;
.super Ljava/lang/Object;
.source "SystemMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc8/KNn;->onError(Landroid/media/MediaPlayer;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lc8/KNn;

.field final synthetic val$extra:I

.field final synthetic val$what:I


# direct methods
.method constructor <init>(Lc8/KNn;II)V
    .locals 0
    .param p1, "this$1"    # Lc8/KNn;

    .prologue
    .line 154
    iput-object p1, p0, Lc8/JNn;->this$1:Lc8/KNn;

    iput p2, p0, Lc8/JNn;->val$what:I

    iput p3, p0, Lc8/JNn;->val$extra:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lc8/JNn;->this$1:Lc8/KNn;

    iget-object v0, v0, Lc8/KNn;->this$0:Lc8/WNn;

    invoke-static {v0}, Lc8/WNn;->access$400(Lc8/WNn;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lc8/JNn;->val$what:I

    iget v3, p0, Lc8/JNn;->val$extra:I

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 159
    return-void
.end method
